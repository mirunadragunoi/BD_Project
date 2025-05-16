SALA_FITNESS(#id_sala, locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere) :
    - FN1: toate valorile sunt atomice, deci este în FN1.
    - FN2: cheia este id_sala, toate celelalte atribute depind direct de ea, deci este în FN2.
    - FN3: nu există dependențe între atributele ne-cheie, așadar este în FN3.

MEMBRU (#id_membru, id_sala, id_trainer, nume, email, nr_telefon, data_inscriere) :
    - FN1: toate atributele sunt atomice, deci este în FN1.
    - FN2: cheia primară este id_membru, restul atributelor nu depind complet de ea, deci este în FN2.
    - FN3: id_sala și id_trainer pot duce la dependențe tranzitive, însă aceste relații sunt deja rezolvate în schemă, prin relații cu tabele separate (TRAINER și SALA_FITNESS). Așadar, este în FN3.

ABONAMENT (#id_abonament, id_membru, id_sala, tip_abonament, data_start, data_end, pret) :
    - FN1: toate atributele sunt atomice, deci este în FN1.
    - FN2: cheia este id_abonament, iar restul atributelor depind direct de ea, deci este în FN2.
    - FN3: atributul tip_abonament este determinat de atributul pret, așadar avem dependență tranzitivă. Însă, tip_abonament trebuie să fie legat și de id_sala (fiecare sală își impune un anumit preț în funcție de tip_abonament).
      REZOLVARE: fac o tabela separată pentru tip_abonament -> TIP_ABONAMENT(tip_abonament).
                 scot tip_abonament, pret și id_sala într-un tabel separat -> TIP_ABONAMENT_SALA(tip_abonament, id_sala, pret).
                 Avem următoarele tabele:
                 TIP_ABONAMENT(
                    tip_abonament VARCHAR2(50) PRIMARY KEY
                 )
                 TIP_ABONAMENT_SALA(
                    tip_abonament VARCHAR2(50),
                    id_sala INT FOREIGN KEY,
                    pret NUMBER(10, 2)
                    PRIMARY KEY (tip_abonament, id_sala)
                 )
                 ABONAMENT(
                    id_abonament INT PRIMARY KEY,
                    id_membru INT FOREIGN KEY,
                    id_sala INT FOREIGN KEY,
                    tip_abonament VARCHAR2(50) FOREIGN KEY,
                    data_start DATE,
                    data_end DATE
                 )
                 Toate sunt acum în FN3.

PLATA_ABONAMENT (#id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata) :
    - FN1: toate atributele sunt atomice, este în FN1.
    - FN2: cheia este id_abonament, nu este compusă, așadar atributele depind complet de ea. În schimb, id_abonament determină deja id_membru, deci ultimul este redunctant și îl voi elimina.
      Pentru a fi în FN2, tabelul devine:
      PLATA_ABONAMENT (id_abonament, suma, data_plata, metoda_plata, status_plata).
    - FN3: nu există dependențe tranzitive între alte atribute, așadar este în FN3.

ANGAJAT (#id_angajat, id_sala, nume, functie, salariu, telefon, email) :
    - FN1: toate atributele sunt atomice, este în FN1.
    - FN2: cheia este id_angajat, toate celelalte atribute depind direct de ea, deci este în FN2.
    - FN3: atributul salariu este determinat de atributul functie, așadar avem dependență tranzitivă.
      REZOLVARE: scot salariu și functie într-un tabel separat -> SPECIALIZARE(salariu, functie).
                 Avem următoarele tabele:
                 SPECIALIZARE (
                    salariu NUMBER(10, 2)
                    functie VARCHAR2(50)
                 )
                 ANGAJAT (
                    id_angajat INT PRIMARY KEY,
                    id_sala INT FOREIGN KEY REFERENCE SALA_FITNESS(id_sala),
                    nume VARCHAR2(50),
                    functie NUMBER(15, 2) FOREIGN KEY,
                    telefon NUMBER(10),
                    email VARCHAR2(50)
                 )
                Ambele sunt acum în FN3.

TRAINER (#id_trainer, id_sala, nume, nr_telefon, email, specializare, salariu) :
    - FN1: toate atributele sunt atomice, este în FN1.
    - FN2: cheia este id_trainer, toate celelalte atribute depind direct de ea, deci este în FN2.
    - FN3: nu există dependențe între atributele ne-cheie, așadar este în FN3.

CLASA (#id_clasa, id_sala, id_trainer, nume_clasa, capacitate_maxima) :
    - FN1: toate atributele sunt atomice, este în FN1.
    - FN2: cheia este id_clasa, toate celelalte atribute depind direct de ea, deci este în FN2.
    - FN3: nu există dependențe între atributele ne-cheie, așadar este în FN3.

REZERVARI (#id_rezervare, id_membru, id_clasa, data_rezervare, status) :
    - FN1: toate atributele sunt atomice, este în FN1.
    - FN2: cheia este id_rezervare, toate celelalte atribute depind direct de ea, deci este în FN2.
    - FN3: nu există dependențe între atributele ne-cheie, așadar este în FN3.

ECHIPAMENT (#id_echipament, id_sala, denumire_echipament, tip_echipament, status_echipament, nr_total_echipament) :
    - FN1: toate atributele sunt atomice, este în FN1.
    - FN2: cheia este id_echipament, toate celelalte atribute depind direct de ea, deci este în FN2.
    - FN3: nu există dependențe între atributele ne-cheie, așadar este în FN3.

MENTENANTA_ECHIPAMENT (#id_echipament, data_verificare, stare_verificare, comentarii) :
    - FN1: toate atributele sunt atomice, este în FN1.
    - FN2: cheia este id_echipament, toate celelalte atribute depind direct de ea, deci este în FN2.
    - FN3: am doar id_echipament ca și cheie primară, însă același echipament poate avea mai multe mentenațe în timp. Așadar fac cheia primară compusă (id_echipament și data_verificare).
        Rezolvare:
            MENTENANTA_ECHIPAMENT (
                id_echipament INT,
                data_verificare DATE DEFAULT SYSDATE,
                stare_verificare VARCHAR2(100) NOT NULL,
                comentarii VARCHAR2(500),

                PRIMARY KEY (id_echipament, data_verificare),
                FOREIGN KEY (id_echipament) REFERENCES ECHIPAMENT(id_echipament)
            );
