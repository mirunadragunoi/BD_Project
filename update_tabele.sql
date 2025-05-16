--- CERINTA 13:
--- Implementarea a 3 operații de actualizare și de suprimare a datelor utilizând subcereri.

--- UPDATE

--- 1. Actualizează salariul cu 20% pentru trainerii care au primit doar feedback pozitiv (mai mare sau egal cu 4)
-- din partea membrilor la clasele pe care le-au susținut.

UPDATE TRAINER t
SET salariu = salariu * 1.20
WHERE id_trainer IN (
    SELECT c.id_trainer
    FROM CLASA c
    JOIN MEMBRU_CLASA mc ON c.id_clasa = mc.id_clasa
    WHERE mc.feedback_membru >= 4
    GROUP BY c.id_trainer
    HAVING COUNT(*) = (
        SELECT COUNT(*)
        FROM MEMBRU_CLASA mc2
        WHERE mc2.id_clasa IN (
            SELECT id_clasa FROM CLASA WHERE id_trainer = c.id_trainer
        )
    )
);

COMMIT;

--- 2. Recalculează și actualizează numărul de abonați pentru fiecare sală de fitness, numărând doar membrii distincti
-- care au abonamente active cu data de expirare în viitor. Actualizează doar sălile care au înregistrat cel puțin
-- un abonament nou în ultima lună.

UPDATE SALA_FITNESS sf
SET nr_abonati = (
    SELECT COUNT(DISTINCT a.id_membru)
    FROM ABONAMENT a
    WHERE a.id_sala = sf.id_sala
    AND a.activ = 1
    AND a.data_end >= SYSDATE
)
WHERE EXISTS (
    SELECT 1
    FROM ABONAMENT
    WHERE id_sala = sf.id_sala
    AND data_start > ADD_MONTHS(SYSDATE, -1)
);

COMMIT;

--- 3. Actualizează prețul tuturor tipurilor de abonamente reducându-le cu 15% pentru sălile care au un
---   echipament în stare defectă (nefuncțional) și cu 10% pentru sălile care au cel puțin un echipament cu o
--    defecțiune minoră (defecțiune minoră).

UPDATE TIP_ABONAMENT_SALA tas
SET pret = pret * 0.85
WHERE id_sala IN (
    SELECT e.id_sala
    FROM ECHIPAMENT e
    JOIN MENTENANTA_ECHIPAMENT me ON e.id_echipament = me.id_echipament
    WHERE LOWER(me.stare_verificare) = 'nefuncțional'
);

UPDATE TIP_ABONAMENT_SALA tas
SET pret = pret * 0.90
WHERE id_sala IN (
    SELECT e.id_sala
    FROM ECHIPAMENT e
    JOIN MENTENANTA_ECHIPAMENT me ON e.id_echipament = me.id_echipament
    WHERE LOWER(me.stare_verificare) = 'defecțiune minoră'
)
AND id_sala NOT IN (
    SELECT e.id_sala
    FROM ECHIPAMENT e
    JOIN MENTENANTA_ECHIPAMENT me ON e.id_echipament = me.id_echipament
    WHERE LOWER(me.stare_verificare) = 'nefuncțional'
);

COMMIT;


--- DELETE

--- 1. Șterge înregistrările din tabela MEMBRU_CLASA pentru membrii care nu au abonamente active și sunt înscriși la
-- clase care au capacitatea de cel puțin două ori mai mare decât numărul mediu de participanți prezenți.

DELETE FROM MEMBRU_CLASA mc
WHERE mc.id_membru IN (
    SELECT m.id_membru
    FROM MEMBRU m
    WHERE NOT EXISTS (
        SELECT 1
        FROM ABONAMENT a
        WHERE a.id_membru = m.id_membru
        AND a.activ = 1
        AND a.data_end > SYSDATE
    )
)
AND mc.id_clasa IN (
    SELECT c.id_clasa
    FROM CLASA c
    WHERE c.capacitate_maxima > (
        SELECT COUNT(DISTINCT id_membru)
        FROM MEMBRU_CLASA
        WHERE id_clasa = c.id_clasa
        AND status_participare = 'Activ'
    ) * 2
);

COMMIT;

--- 2. Șterge din tabela CLASA_REZERVARE toate înregistrările pentru rezervări mai vechi de 3 luni sau sunt pentru
-- clase conduse de traineri cu salariu sub 80% din media sălii respective.

DELETE FROM CLASA_REZERVARE cr
WHERE cr.id_rezervare IN (
    SELECT r.id_rezervare
    FROM REZERVARE r
    WHERE r.data_rezervare < ADD_MONTHS(SYSDATE, -3)
)
AND cr.id_clasa IN (
    SELECT c.id_clasa
    FROM CLASA c
    WHERE c.id_trainer IN (
        SELECT t.id_trainer
        FROM TRAINER t
        WHERE t.salariu < (
            SELECT AVG(salariu) * 0.8
            FROM TRAINER
            WHERE id_sala = t.id_sala
        )
    )
);

COMMIT;

--- 3. Șterge din tabelul MEMBRU_ECHIPAMENT toate înregistrările mai vechi de 2 luni și au folosit echipamente cu
-- intensitate "Redusă". În plus, aceste echipamente trebuie: să fie declarate „nefuncționale” sau „cu defecțiuni”
-- în ultima verificare.


DELETE FROM MEMBRU_ECHIPAMENT me
WHERE me.DATA_ULTIMA_ACTUALIZARE < ADD_MONTHS(SYSDATE, -2)
  AND LOWER(me.intensitate) = 'redusă'
  AND me.id_echipament IN (
    SELECT e.id_echipament
    FROM ECHIPAMENT e
    WHERE EXISTS (
      SELECT 1
      FROM MENTENANTA_ECHIPAMENT m
      WHERE m.id_echipament = e.id_echipament
        AND LOWER(m.stare_verificare) IN ('nefuncțional', 'defecțiune')
        AND m.data_verificare = (
          SELECT MAX(m2.data_verificare)
          FROM MENTENANTA_ECHIPAMENT m2
          WHERE m2.id_echipament = e.id_echipament
        )
    )
);

COMMIT;