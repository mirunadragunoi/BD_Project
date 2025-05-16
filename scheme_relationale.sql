SCHEME RELATIONALE:
Tabele neasociative:
SALA_FITNESS(#id_sala, locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere_sala, ora_inchidere_sala)
MEMBRU(#id_membru, #id_sala, id_trainer, nume_membru, email_membru, nr_telefon, data_inscriere)
TIP_ABONAMENT(#tip_abonament)
TIP_ABONAMENT_SALA(#tip_abonament, #id_sala, pret)
ABONAMENT(#id_abonament, #id_sala, #id_membru, tip_abonament, activ, data_start, data_end)
SPECIALIZARE(#functie, incadrare, salariu)
ANGAJAT(#id_angajat, #id_sala, nume, functie, telefon, email)
PLATA_ABONAMENT(#id_abonament, #id_membru, suma, data_plata, metoda_plata, status_plata)
CLASA(#id_clasa, #id_sala, #id_trainer, nume_clasa, capacitate_maxima)
TRAINER(#id_trainer, #id_sala, nume, nr_telefon, email, specializare, salariu)
REZERVARI(#id_rezervare, #id_membru, #id_clasa, data_rezervare, status)
ECHIPAMENT(#id_echipament, #id_sala, denumire, tip_echipament, nr_total)
MENTENANTA_ECHIPAMENT(#id_echipament, data_verificare, stare_verificare, comentarii)

Tabele asociative:
MEMBRU_CLASA(#id_membru, #id_clasa, data_inscriere_clasa, status_participare, feedback_membru)
MEMBRU_ECHIPAMENT(#id_membru, #id_echipament, timp_utilizare, data_ultima_utilizare, intensitate, feedback_utilizare)
CLASA_REZERVARE(#id_clasa, #id_rezervare, ora_rezervare, confirmare_trainer, observatii)


TABELELE NEASOCIATIVE:

SALA_FITNESS(#id_sala, locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere_sala, ora_inchidere_sala) :

SALA_FITNESS (
    id_sala INT PRIMARY KEY,
    locatie VARCHAR2(50),
    lant_firma VARCHAR2(50),
    nr_abonati INT,
    nr_traineri INT,
    nr_echipamente INT,
    nr_telefon VARCHAR(10),
    ora_deschidere DATE,
    ora_inchidere DATE
)

MEMBRU(#id_membru, id_sala, id_trainer, nume_membru, email_membru, nr_telefon, data_inscriere) :

MEMBRU (
    id_membru INT PRIMARY KEY,
    id_sala INT FOREIGN KEY REFERENCE SALA_FITNESS(id_sala),
    id_trainer INT FOREIGN KEY REFERENCE TRAINER(id_trainer),
    nume VARCHAR2(100),
    email VARCHAR2(50),
    nr_telefon VARCHAR2(10),
    data_inscriere DATE
)

ABONAMENT(#id_abonament, id_membru, id_sala, tip_abonament, activ, data_start, data_end, pret) :

ABONAMENT (
    id_abonament INT PRIMARY KEY,
    id_membru INT FOREIGN KEY REFERENCE MEMBRU(id_membru),
    id_sala INT FOREIGN KEY REFERENCE SALA_FITNESS(id_sala),
    tip_abonament VARCHAR2(50),
    activ NUMBER(1)
    data_start DATE,
    data_end DATE,
    pret NUMBER(10, 2)
)

ANGAJAT(#id_angajat, id_sala, nume, functie, salariu, telefon, email) :

ANGAJAT (
    id_angajat INT PRIMARY KEY,
    id_sala INT FOREIGN KEY REFERENCE SALA_FITNESS(id_sala),
    nume VARCHAR2(50),
    functie VARCHAR2(30),
    salariu NUMBER(15, 2),
    telefon VARCHAR2(10),
    email VARCHAR2(50)
)

PLATA_ABONAMENT(#id_abonament, id_membru, suma, data_plata, metoda_plata, status_plata) :

PLATA_ABONAMENT (
    id_abonament INT,
    id_membru INT FOREIGN KEY REFERENCE MEMBRU(id_membru),
    suma NUMBER(10, 2),
    data_plata DATE,
    metoda_plata VARCHAR2(50),
    status_plata VARCHAR2(50),
    PRIMARY KEY (id_abonament) REFERENCE ABONAMENT(id_abonament)
)

CLASA(#id_clasa, id_sala, id_trainer, nume_clasa, capacitate_maxima) :

CLASA (
    id_clasa INT PRIMARY KEY,
    id_sala INT FOREIGN KEY REFERENCE SALA_FITNESS(id_sala),
    id_trainer INT FOREIGN KEY REFERENCE TRAINER(id_trainer),
    nume_clasa VARCHAR2(100),
    capacitate_maxima INT
)

TRAINER(#id_trainer, id_sala, nume, nr_telefon, email, specializare, salariu) :

TRAINER (
    id_trainer INT PRIMARY KEY,
    id_sala INT FOREIGN KEY REFERENCE SALA_FITNESS(id_sala),
    nume VARCHAR2(50),
    nr_telefon VARCHAR2(10),
    email VARCHAR2(50),
    specializare VARCHAR2(50),
    salariu NUMBER(15, 2)
)

REZERVARI(#id_rezervare, id_membru, id_clasa, data_rezervare, status):

REZERVARI (
    id_rezervare INT PRIMARY KEY,
    id_membru INT FOREIGN KEY REFERENCE MEMBRU(id_membru),
    id_clasa INT FOREIGN KEY REFERENCE CLASA(id_clasa),
    data_rezervare DATE,
    status VARCHAR2(50)
)

ECHIPAMENT(#id_echipament, id_sala, denumire, tip_echipament, nr_total) :

ECHIPAMENT (
    id_echipament INT PRIMARY KEY,
    id_sala INT FOREIGN KEY REFERENCE SALA_FITNESS(id_sala),
    denumire VARCHAR2(50),
    tip_echipament VARCHAR2(50),
    status VARCHAR2(50),
    nr_total INT
)

MENTENANTA_ECHIPAMENT(#id_echipament, data_verificare, stare_verificare, comentarii) :

MENTENANTA_ECHIPAMENT (
    id_echipament INT PRIMARY KEY,
    data_verificare DATE,
    stare_verificare VARCHAR2(100),
    comentarii VARCHAR2(500),
    FOREIGN KEY (id_echipament) REFERENCE ECHIPAMENT(id_echipament)
)

TABELELE ASOCIATIVE:

MEMBRU_CLASA(#id_membru, #id_clasa, data_inscriere_clasa, status_participare, feedback_membru) -> entitate asociativa :

MEMBRU_CLASA (
    id_membru INT,
    id_clasa INT,
    data_inscriere_clasa DATE,
    status_participare VARCHAR2(50),
    feedback_membru VARCHAR2(500),
    PRIMARY KEY (id_membru, id_clasa),
    FOREIGN KEY (id_membru) REFERENCE MEMBRU(id_membru),
    FOREIGN KEY (id_clasa) REFERENCE CLASA(id_clasa)
)

MEMBRU_ECHIPAMENT(#id_membru, #id_echipament, timp_utilizare, data_ultima_utilizare, intensitate, feedback_utilizare) -> entitate asociativa :

MEMBRU_ECHIPAMENT (
    id_membru INT,
    id_echipament INT,
    timp_utilizare INT,
    data_ultima_utilizare DATE,
    intensitate VARCHAR2(50),
    feedback_utilizare VARCHAR2(500),
    PRIMARY KEY (id_membru, id_echipament),
    FOREIGN KEY (id_membru) REFERENCE MEMBRU(id_membru),
    FOREIGN KEY (id_echipament) REFERENCE ECHIPAMENT(id_echipament)
)

CLASA_REZERVARE(#id_clasa, #id_rezervare, ora_rezervare, confirmare_trainer, observatii) -> entitate asociativa :

CLASA_REZERVARE (
    id_clasa INT,
    id_rezervare INT,
    ora_rezervare DATE,
    confirmare_trainer NUMBER(1),
    observatii VARCHAR2(500),
    PRIMARY KEY (id_clasa, id_rezervare),
    FOREIGN KEY (id_clasa) REFERENCE CLASA(id_clasa),
    FOREIGN KEY (id_rezervare) REFERENCE REZERVARE(id_rezervare)
)

