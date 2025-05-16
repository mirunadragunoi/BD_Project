--- CERINTA 12:
--- Formulați în limbaj natural și implementați 5 cereri SQL complexe ce vor utiliza, în ansamblul lor, următoarele elemente:
---   a) subcereri sincronizate în care intervin cel puțin 3 tabele.
---   b) subcereri nesincronizate în clauza FROM.
---   c) grupări de date, funcții grup, filtrare la nivel de grupuri cu subcereri nesincronizate (în clauza HAVING).
---   d) ordonări și utilizarea funcțiilor NVL și DECODE (în cadrul aceleiași cereri).
---   e) utilizarea a cel puțin 2 funcții pe șiruri de caractere, 2 funcții pe date calendaristice, a cel puțin unei expresii CASE.
---   f) utilizarea a cel puțin 1 bloc de cerere (clauza WITH).

--- Cerinta 1: Afișați membrii activi care au făcut cel puțin o rezervare confirmata în ultima lună, împreună cu
--            numele antrenorului lor preferat și categoria de activitate. Rezultatele vor fi ordonate după numărul
--            de rezervări.
--            Subpunctele: a), b), c), d), e), f)

WITH membri_activi AS (
    SELECT
        m.id_membru,
        m.nume,
        COUNT(r.id_rezervare) AS nr_rezervari
    FROM MEMBRU m
    JOIN REZERVARE r ON m.id_membru = r.id_membru
    WHERE r.status = 'Participare confirmată'
        AND r.data_rezervare >= ADD_MONTHS(SYSDATE, -1)
    GROUP BY m.id_membru, m.nume
    HAVING COUNT(r.id_rezervare) >= 0
)
SELECT
    UPPER(SUBSTR(ma.nume, 1, 15)) AS nume_scurt,
    LOWER(m.email) AS email,
    ma.nr_rezervari,
    NVL((
        SELECT t.nume
        FROM (
            SELECT tr.nume, COUNT(*) cnt
            FROM REZERVARE r2
            JOIN CLASA c ON r2.id_clasa = c.id_clasa
            JOIN TRAINER tr ON c.id_trainer = tr.id_trainer
            WHERE r2.id_membru = ma.id_membru
            GROUP BY tr.nume
            ORDER BY cnt DESC
        ) t
        WHERE ROWNUM = 1
    ), 'Fără antrenor') AS antrenor_favorit,
    TO_CHAR(SYSDATE, 'DD-MM-YYYY') AS data_raport
FROM membri_activi ma
JOIN MEMBRU m ON ma.id_membru = m.id_membru
JOIN SALA_FITNESS sf ON m.id_sala = sf.id_sala
WHERE
    EXISTS (
        SELECT 1
        FROM MEMBRU_CLASA mc
        JOIN CLASA c ON mc.id_clasa = c.id_clasa
        JOIN TRAINER t ON c.id_trainer = t.id_trainer
        WHERE mc.id_membru = ma.id_membru
            AND mc.status_participare = 'Activ'
    )
    AND ma.id_membru IN (
        SELECT r.id_membru
        FROM REZERVARE r
        GROUP BY r.id_membru
        HAVING COUNT(*) > (
            SELECT AVG(cnt)
            FROM (
                SELECT COUNT(*) cnt
                FROM REZERVARE
                WHERE status = 'Participare confirmată'
                GROUP BY id_membru
            )
        )
    )
ORDER BY
    ma.nr_rezervari DESC,
    NVL(ma.nume, 'ZZZ')
FETCH FIRST 10 ROWS ONLY;


--- Cerinta 2: Pentru fiecare sala fitness, calculati numarul total de plati efectuate in ultimele 6 luni si suma
---           totala platita. Afisati doar salile care au incasat peste 5000 RON. Salile vor fi sortate dupa suma
---           incasata descrescator.
---           Subpunctele: f), e), c)

WITH plati_recente AS (
    SELECT
        p.id_membru,
        p.id_abonament,
        a.id_sala,
        p.suma_plata,
        p.data_plata
    FROM
        PLATI_ABONAMENTE p
    JOIN ABONAMENT a ON p.id_abonament = a.id_abonament
    WHERE
        MONTHS_BETWEEN(SYSDATE, p.data_plata) <= 6
)
SELECT
    s.id_sala,
    s.locatie,
    s.lant_firma,
    COUNT(pr.suma_plata) AS nr_plati,
    SUM(pr.suma_plata) AS total_incasari
FROM
    plati_recente pr
JOIN
    SALA_FITNESS s ON pr.id_sala = s.id_sala
GROUP BY
    s.id_sala, s.locatie, s.lant_firma
HAVING
    SUM(pr.suma_plata) > 10
ORDER BY
    total_incasari DESC;


--- CERINTA 3: Afisati pentru fiecare membru activ (care are un abonament activ), numele, emailul, tipul abonamentului,
---           valoarea totala platita, data celei mai recente plati, statusul platilor, si lungimea numelui membrului.
---           Sa fie afisati doar membrii care au platit mai mult decat media tuturor platilor, ordonati
---           descrescator dupa suma totala.
---           Subpunctele: a), b), c), d), e), f)

WITH total_plati_membri AS (
    SELECT
        m.id_membru,
        m.nume AS nume_membru,
        m.email,
        a.tip_abonament,
        SUM(p.suma_plata) AS total_plata,
        MAX(p.data_plata) AS ultima_plata
    FROM
        MEMBRU m
        JOIN ABONAMENT a ON m.id_membru = a.id_membru
        JOIN PLATI_ABONAMENTE p ON a.id_abonament = p.id_abonament
    WHERE
        a.activ = 1
    GROUP BY
        m.id_membru, m.nume, m.email, a.tip_abonament
)

SELECT
    INITCAP(t.nume_membru) AS nume_formatat,
    UPPER(SUBSTR(t.email, 1, INSTR(t.email, '@') - 1)) AS user_email,
    DECODE(t.tip_abonament,
           'Lunar', 'Abonament Lunar',
           'Anual', 'Abonament Anual',
           'Zi', 'Abonament pe Zi',
           '10 Ședințe', 'Pachet Special de 10 Ședințe',
           'Necunoscut') AS tip_abonament,
    t.total_plata,
    NVL(TO_CHAR(t.ultima_plata, 'DD-MM-YYYY'), 'Fără plată') AS data_ultima_plata,
    CASE
        WHEN t.total_plata > 2000 THEN 'FOARTE ACTIV'
        WHEN t.total_plata BETWEEN 1500 and 2000 THEN 'ACTIV'
        ELSE 'INACTIV'
    END AS status_activitate,
    LENGTH(t.nume_membru) AS lungime_nume
FROM
    total_plati_membri t
WHERE
    t.total_plata > (SELECT AVG(suma_plata) FROM PLATI_ABONAMENTE WHERE status_plata = 'Plată efectuată')
ORDER BY
    t.total_plata DESC;


--- CERINTA 4: Să se realizeze o analiză a sălilor de fitness care au un procent de abonamente active de cel puțin 50%.
--            Pentru fiecare sală se vor afișa: identificatorul sălii, locația, lanțul de care aparține, numărul total
--            de membri, prețul minim și maxim al abonamentelor, numărul de abonamente active, procentul acestora din
--            total. Rezultatele vor fi ordonate descrescător după numărul de membri.
--            Subpuncte: a), c), e)


SELECT
    s.id_sala,
    s.locatie,
    s.lant_firma,
    COUNT(m.id_membru) AS numar_abonati,
    MIN(tip_ab.pret) AS abonament_minim,
    MAX(tip_ab.pret) AS abonament_maxim,
    SUM(CASE WHEN a.activ = 1 THEN 1 ELSE 0 END) AS abonamente_active,
    ROUND(SUM(CASE WHEN a.activ = 1 THEN 1 ELSE 0 END) * 100 / COUNT(m.id_membru), 2) AS procent_abonamente_active
FROM
    SALA_FITNESS s
LEFT JOIN MEMBRU m ON s.id_sala = m.id_sala
LEFT JOIN ABONAMENT a ON a.id_membru = m.id_membru
LEFT JOIN TIP_ABONAMENT_SALA tip_ab ON (a.id_sala = tip_ab.id_sala AND a.tip_abonament = tip_ab.tip_abonament)
GROUP BY s.id_sala, s.locatie, s.lant_firma
HAVING SUM(CASE WHEN a.activ = 1 THEN 1 ELSE 0 END) > (
    SELECT COUNT(*) * 0.5
    FROM ABONAMENT
    WHERE id_sala = s.id_sala
    )
ORDER BY numar_abonati DESC;


--- CERINTA 5: Să se realizeze o analiză a salariilor personalului din sălile de fitness, care să prezinte pentru
--          fiecare trainer: informațiile de bază (nume, specializare/funcție, locație), salariul curent,
--          bonusurile calculate pe baza performanței și salariul final ajustat. Analiza va include doar personalul
--          care are o performanță peste media companiei (traineri cu număr de membri peste medie). Rezultatele vor
--          fi ordonate descrescător după salariul final.
--          Subpuncte: a), b), d), e), f)


WITH statistici_traineri AS (
    SELECT
        t.id_trainer,
        t.nume AS nume_trainer,
        t.specializare,
        t.salariu AS salariu_baza,
        s.locatie,
        COUNT(DISTINCT m.id_membru) AS numar_membri_antrenati,
        AVG(NVL(mc.feedback_membru, 0)) AS rating_mediu,
        MONTHS_BETWEEN(SYSDATE, MIN(m.data_inscriere)) AS vechime_max_membru
    FROM
        TRAINER t
        JOIN (SELECT id_sala, locatie FROM SALA_FITNESS) s ON t.id_sala = s.id_sala
        LEFT JOIN MEMBRU m ON t.id_trainer = m.id_trainer
        LEFT JOIN CLASA c ON t.id_trainer = c.id_trainer
        LEFT JOIN MEMBRU_CLASA mc ON c.id_clasa = mc.id_clasa
    GROUP BY
        t.id_trainer, t.nume, t.specializare, t.salariu, s.locatie
)

SELECT
    UPPER(st.nume_trainer) AS nume,
    INITCAP(st.specializare) AS specializare,
    st.locatie,
    TRUNC(st.vechime_max_membru/12) AS ani_vechime,
    TO_CHAR(ADD_MONTHS(SYSDATE, -3), 'DD-MM-YYYY') AS data_referinta,
    NVL(st.salariu_baza, 0) AS salariu_baza,
    CASE
        WHEN st.numar_membri_antrenati > 15 THEN st.salariu_baza * 0.2
        WHEN st.numar_membri_antrenati > 5 THEN st.salariu_baza * 0.1
        ELSE 0
    END AS bonus_performanta,
    DECODE(ROUND(st.rating_mediu),
           5, st.salariu_baza * 0.25,
           4, st.salariu_baza * 0.15,
           3, st.salariu_baza * 0.05,
           0) AS bonus_evaluare,
    (SELECT COUNT(DISTINCT r.id_rezervare)
     FROM REZERVARE r
     JOIN CLASA c ON r.id_clasa = c.id_clasa
     JOIN MEMBRU m ON r.id_membru = m.id_membru
     WHERE c.id_trainer = st.id_trainer
     AND r.status = 'Participare confirmată') AS rezervari_finalizate,
    st.salariu_baza +
    CASE
        WHEN st.numar_membri_antrenati > 1 THEN st.salariu_baza * 0.2
        WHEN st.numar_membri_antrenati > 0 THEN st.salariu_baza * 0.1
        ELSE 0
    END +
    DECODE(ROUND(st.rating_mediu),
           5, st.salariu_baza * 0.25,
           4, st.salariu_baza * 0.15,
           3, st.salariu_baza * 0.05,
           0) AS salariu_final
FROM
    statistici_traineri st
WHERE
    st.numar_membri_antrenati > (
        SELECT AVG(numar_membri)
        FROM (
            SELECT COUNT(DISTINCT m.id_membru) AS numar_membri
            FROM TRAINER t
            LEFT JOIN MEMBRU m ON t.id_trainer = m.id_trainer
            GROUP BY t.id_trainer
        )
    )
ORDER BY
    salariu_final DESC;