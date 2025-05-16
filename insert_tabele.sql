--- INSERT!

--- INSERT INTO SALA_FITNESS

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ( 'București', '18GYM', 356, 34, 457, '0345682934',
     TO_DATE('07:00', 'HH24:MI'), TO_DATE('23:59', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Cluj-Napoca', 'StrongGym', 237, 20, 300, '0756789034',
     TO_DATE('10:00', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Iași', '18GYM', 450, 56, 670, '0724536719',
     TO_DATE('08:00', 'HH24:MI'), TO_DATE('22:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('București', 'WorldClass', 467, 45, 346, '0745679874',
     TO_DATE('09:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Piatra Neamț', 'StayFit Gym', 245, 43, 523, '0762319076',
     TO_DATE('09:30', 'HH24:MI'), TO_DATE('22:30', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Brașov', 'Matrix Gym', 450, 34, 430, '0745678912',
     TO_DATE('12:00', 'HH24:MI'), TO_DATE('00:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Oradea', 'WorldClass', 195, 19, 120, '0719872368',
     TO_DATE('11:00', 'HH24:MI'), TO_DATE('20:30', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Cluj-Napoca', 'SmartGym', 250, 21, 100, '0723456789',
    TO_DATE('06:30', 'HH24:MI'), TO_DATE('22:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Timișoara', 'StayFit', 180, 15, 90, '0744123456',
    TO_DATE('07:00', 'HH24:MI'), TO_DATE('21:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Iași', 'WorldClass', 320, 25, 150, '0765432198',
    TO_DATE('08:00', 'HH24:MI'), TO_DATE('23:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('Brașov', 'SmartGym', 160, 12, 80, '0700112233',
    TO_DATE('05:45', 'HH24:MI'), TO_DATE('20:00', 'HH24:MI'));

INSERT INTO SALA_FITNESS (locatie, lant_firma, nr_abonati, nr_traineri, nr_echipamente, nr_telefon, ora_deschidere, ora_inchidere)
VALUES ('București', 'StayFit', 500, 30, 200, '0755987456',
    TO_DATE('06:00', 'HH24:MI'), TO_DATE('00:00', 'HH24:MI'));

COMMIT;

--- INSERT INTO TRAINER

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (2, 'Popescu Andrei', '0723456712', 'andrei.popescu@gmail.com', 'Antrenor Fitness', 4500);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (1, 'Antonescu Maria', '0756892123', 'antonescu_maria@gmail.com', 'Antrenor Sală de forță', 3000);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (3, 'Drăgan Marian', '0756781267', 'dragan.marian12@gmail.com', 'Antrenor Clasă Zumba', 4000);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (3, 'Ionescu Laura', '0746781345', 'laura.ionescu34@gmail.com', 'Antrenor Personal', 3500);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (1, 'Popa Mihai', '0723456792', 'mihai.popa98@gmail.com', 'Fitness Funcțional', 4000);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (2, 'Georgescu Andreea', '0765892310', 'andreea.georgescu@hotmail.com', 'Cardio și HIIT', 3700);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (5, 'Dumitru Radu', '0734567890', 'radu.dumitru@gmail.com', 'Bodybuilding', 4200);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (4, 'Marin Alina', '0751234567', 'alina.marin@yahoo.com', 'Pilates și Stretching', 3600);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (6, 'Stan Tudor', '0789456123', 'tudor.stan@18gym.ro', 'Antrenor CrossFit', 4400);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (7, 'Iliescu Raluca', '0712345678', 'raluca.iliescu@worldclass.ro', 'Antrenor Aerobic', 3300);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (8, 'Petrescu Alexandru', '0700112233', 'alex.petrescu@smartgym.ro', 'Kinetoterapie', 3900);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (10, 'Toma Bianca', '0723458888', 'bianca.toma@yahoo.com', 'Nutriție & Fitness', 4100);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (12, 'Enache Vlad', '0755123456', 'vlad.enache@gmail.com', 'Fitness General', 3700);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (1, 'Mihăilescu Sorin', '0721345678', 'sorin.mihailescu@gmail.com', 'BodyPump', 3800);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (3, 'Tudose Anca', '0745678213', 'anca.tudose@18gym.ro', 'Antrenor Funcțional', 3900);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (4, 'Costache Liviu', '0750001234', 'liviu.costache@gmail.com', 'Stretching & Mobilitate', 3450);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (5, 'Rusu Adriana', '0711456789', 'adriana.rusu@yahoo.com', 'Pilates', 3600);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (6, 'Dobre Cristian', '0733211122', 'cristian.dobre@crossfit.ro', 'CrossFit', 4550);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (10, 'Lungu Elena', '0788012345', 'elena.lungu@gmail.com', 'Fitness General', 3750);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (12, 'Matei Cătălin', '0767456789', 'catalin.matei@stayfit.ro', 'Personal Trainer', 4200);

INSERT INTO TRAINER (id_sala, nume, nr_telefon, email, specializare, salariu)
VALUES (11, 'Dragu Maria', '0767456780', 'dragu_mari@gmail.ro', 'Pilates', 2500);

COMMIT;

--- INSERT INTO MEMBRU

INSERT INTO MEMBRU (id_sala, id_trainer, nume, email, nr_telefon, data_inscriere)
VALUES (1, 2, 'Alexandru Popescu', 'alexandru.popescu@gmail.com', '0721345678', TO_DATE('2025-03-15', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (1, 11, 'Elena Ionescu', 'elena.ionescu@gmail.com', '0721345679', TO_DATE('2025-04-01', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (2, 1, 'Mihai Stan', 'mihai.stan@yahaoo.com', '0721345680', TO_DATE('2025-03-18', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (2, 6, 'Ioana Dobre', 'ioana.dobre@yahoo.com', '0721345681', TO_DATE('2025-04-04', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (id_sala, id_trainer, nume, email, nr_telefon, data_inscriere)
VALUES (3, 4, 'Vlad Marinescu', 'vlad.marinescu@gmail.com', '0721345682', TO_DATE('2025-03-20', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (3, 15, 'Alina Florescu', 'alina.florescu@gmail.com', '0721345683', TO_DATE('2025-03-25', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (4, 16, 'Cătălin Radu', 'catalin.radu@gmail.com', '0721345684', TO_DATE('2025-04-02', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (4, 8, 'Larisa Vasile', 'larisa.vasile@gmail.com', '0721345685', TO_DATE('2025-03-29', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (5, 17, 'Bogdan Ilie', 'bogdan.ilie@gmail.com', '0721345686', TO_DATE('2025-03-12', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (5, 7, 'Oana Neagu', 'oana.neagu@gmail.com', '0721345687', TO_DATE('2025-04-03', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (6, 9, 'Cristian Nistor', 'cristian.nistor@gmail.com', '0721345688', TO_DATE('2025-03-22', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (6, 18, 'Gabriela Stoica', 'gabriela.stoica@gmail.com', '0721345689', TO_DATE('2025-04-05', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (7, 10, 'Robert Enache', 'robert.enache@gmail.com', '0721345690', TO_DATE('2025-03-27', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (7, NULL, 'Irina Pavel', 'irina.pavel@gmail.com', '0721345691', TO_DATE('2025-04-06', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (8, 11, 'Florin Călin', 'florin.calin@gmail.com', '0721345692', TO_DATE('2025-03-30', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (8, NULL, 'Anca Petrescu', 'anca.petrescu@yahoo.com', '0721345693', TO_DATE('2025-04-07', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (9, NULL, 'Sorin Gheorghe', 'sorin.gheorghe@yahoo.com', '0721345694', TO_DATE('2025-03-26', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (9, NULL, 'Roxana Drăgan', 'roxana.dragan@gmail.com', '0721345695', TO_DATE('2025-04-08', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (10, 19, 'Răzvan Ciobanu', 'razvan.ciobanu@gmail.com', '0721345696', TO_DATE('2025-03-21', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (10, 12, 'Silvia Bălan', 'silvia.balan@gmail.com', '0721345697', TO_DATE('2025-04-09', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (11, NULL, 'Tudor Damian', 'tudor.damian@yahoo.com', '0721345698', TO_DATE('2025-04-10', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (11, NULL, 'Dana Anghel', 'dana.anghel@gmail.com', '0721345699', TO_DATE('2025-04-11', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (12, 20, 'Alexandru Moldovan', 'alex.moldovan@yahoo.com', '0721345700', TO_DATE('2025-04-12', 'YYYY-MM-DD'));

INSERT INTO MEMBRU (ID_SALA, ID_TRAINER, NUME, EMAIL, NR_TELEFON, DATA_INSCRIERE)
VALUES (12, 13, 'Bianca Răileanu', 'bianca.raileanu@gmail.com', '0721345701', TO_DATE('2025-04-13', 'YYYY-MM-DD'));

COMMIT;

--- INSERT INTO ECHIPAMENT

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (SEQ_ID_ECHIPAMENT.nextval, 1, 'Aparat Abdomene', 'Forță', 'funcțional', 2);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 2, 'Bară de tracțiune', 'Forță', 'funcțional', 3);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 2, 'Bancă pentru piept', 'Forță', 'funcțional', 2);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 3, 'Bicicletă eliptică', 'Cardio', 'în mentenanță', 1);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 3, 'Treadmill', 'Cardio', 'funcțional', 4);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 4, 'Stepper', 'Cardio', 'funcțional', 2);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 4, 'Ramat la cablu', 'Forță', 'nefuncțional', 1);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 5, 'Gantere', 'Forță', 'funcțional', 10);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 6, 'Kettlebell', 'Forță', 'funcțional', 8);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 7, 'Bicicletă spinning', 'Cardio', 'funcțional', 3);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 7, 'Crosstrainer', 'Cardio', 'în mentenanță', 1);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 8, 'Aparat picioare', 'Forță', 'funcțional', 2);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 9, 'Aparat abdomene', 'Forță', 'funcțional', 1);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 10, 'Cordon de sărit', 'Cardio', 'funcțional', 5);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 12, 'Masă extensii picioare', 'Forță', 'funcțional', 2);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 12, 'Bancă Scott', 'Forță', 'nefuncțional', 1);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 11, 'Banda alergare', 'Cardio', 'funcțional', 4);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 11, 'Aparat triceps', 'Forță', 'funcțional', 1);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 6, 'Sac de box', 'Forță', 'funcțional', 2);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 8, 'Cadran multifuncțional', 'Forță', 'în mentenanță', 1);

INSERT INTO ECHIPAMENT (ID_ECHIPAMENT, ID_SALA, DENUMIRE, TIP_ECHIPAMENT, STATUS, NR_TOTAL)
VALUES (seq_id_echipament.nextval, 8, 'Bicicletă magnetică', 'Cardio', 'funcțional', 2);

COMMIT;

--- INSERT INTO MENTENANTA_ECHIPAMENT

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (1, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'bună', 'Verificare de rutină.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (2, TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'bună', 'Funcționează normal.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (3, TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'bună', 'Fără probleme la utilizare.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (4, TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'defecțiune minoră', 'Sistem de rezistență necesită înlocuire.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (5, TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'bună', 'Revizie efectuată.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (6, TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'bună', 'Curățare și lubrifiere completă.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (7, TO_DATE('2025-04-07', 'YYYY-MM-DD'), 'nefuncțional', 'Cablu rupt, necesită înlocuire.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (8, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'excelentă', 'Fără semne de uzură.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (9, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'bună', 'Verificare generală efectuată.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (10, TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'bună', 'Funcționează fără probleme.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (11, TO_DATE('2025-04-04', 'YYYY-MM-DD'), 'defecțiune', 'Pedale blocate, în așteptarea reparației.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (12, TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'bună', 'Testat complet, funcțional.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (13, TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'bună', 'Curățat și verificat.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (14, TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'excelentă', 'Nicio problemă raportată.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (15, TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'bună', 'Funcționează normal.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (16, TO_DATE('2025-04-06', 'YYYY-MM-DD'), 'nefuncțional', 'Spătar rupt, neutilizabil.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (17, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'bună', 'Verificat complet.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (18, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'bună', 'Sistemul de cabluri este stabil.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (19, TO_DATE('2025-04-03', 'YYYY-MM-DD'), 'bună', 'Fără uzură semnificativă.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (20, TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'defecțiune minoră', 'Piesă de susținere slăbită.');

INSERT INTO MENTENANTA_ECHIPAMENT (ID_ECHIPAMENT, DATA_VERIFICARE, STARE_VERIFICARE, COMENTARII)
VALUES (21, TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'bună', 'Revizie finalizată.');

COMMIT;

--- INSERT INTO SPECIALIZARE

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Recepționer', 'full-time', 4000.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Contabil', 'full-time', 4500);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Administrator', 'full-time', 5200);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Asistent manager', 'full-time', 4000.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Tehnician Echipamente', 'full-time', 3700.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Curățenie', 'full-time', 4600.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('IT Support', 'full-time', 4300);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Recepționer PT', 'part-time', 3000.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Contabil PT', 'part-time', 4500);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Administrator PT', 'part-time', 4300);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Asistent manager PT', 'part-time', 3000.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Tehnician Echipamente PT', 'part-time', 3000.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('Curățenie PT', 'part-time', 3600.00);

INSERT INTO SPECIALIZARE (functie, incadrare, salariu) VALUES ('IT Support PT', 'part-time', 3300);

COMMIT;

--- INSERT INTO ANGAJAT

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (1, 'Andriciuc Alex', 'Recepționer', '0765235678', 'alex.andriciuc12@gmail.com');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (2, 'Popescu Ion', 'Contabil', '0723456123', 'ion.popescu@stronggym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (3, 'Marin Andreea', 'Administrator', '0756123498', 'andreea.marin@18gym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (4, 'Ionescu Vlad', 'Recepționer PT', '0789456721', 'vlad.ionescu@worldclass.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES ( 5, 'Dumitrescu Bianca', 'Asistent manager', '0712349876', 'bianca.dumitrescu@stayfit.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (6, 'Stoica Daniel', 'Tehnician Echipamente', '0745981230', 'daniel.stoica@matrixgym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES ( 1, 'Ilie Carmen', 'Asistent manager PT', '0767812345', 'carmen.ilie@18gym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (2, 'Toma Răzvan', 'Curățenie PT', '0728123456', 'razvan.toma@stronggym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie,  telefon, email)
VALUES ( 3, 'Cristea Eliza', 'Recepționer PT', '0734123890', 'eliza.cristea@18gym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (4, 'Neagu Florin', 'Contabil', '0700111122', 'florin.neagu@worldclass.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (5, 'Costache Teodora', 'IT Support PT', '0756234789', 'teodora.costache@stayfit.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (6, 'Simion Paul', 'Tehnician Echipamente PT', '0789561234', 'paul.simion@matrixgym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES ( 7, 'Matei Ana', 'Recepționer', '0723568912', 'ana.matei@worldclass.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (8, 'Lupu Cristian', 'IT Support', '0712784569', 'cristian.lupu@smartgym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (9, 'Vasilescu Daria', 'Curățenie', '0700654321', 'daria.vasilescu@stayfit.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (10, 'Stan Gabriel', 'Contabil', '0754412387', 'gabriel.stan@worldclass.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES ( 11, 'Barbu Raluca', 'Recepționer', '0734567812', 'raluca.barbu@smartgym.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES (12, 'Nistor Marius', 'Tehnician Echipamente',  '0767123456', 'marius.nistor@stayfit.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES ( 12, 'Dobre Ana', 'Asistent manager', '0740987123', 'ana.dobre@stayfit.ro');

INSERT INTO ANGAJAT (id_sala, nume, functie, telefon, email)
VALUES ( 6, 'Zamfir Oana', 'Administrator PT', '0723345567', 'oana.zamfir@matrixgym.ro');

COMMIT;

--- INSERT INTO TIP_ABONAMENT

INSERT INTO TIP_ABONAMENT (TIP_ABONAMENT) VALUES ('Zi');

INSERT INTO TIP_ABONAMENT (TIP_ABONAMENT) VALUES ('Lunar');

INSERT INTO TIP_ABONAMENT (TIP_ABONAMENT) VALUES ('Anual');

INSERT INTO TIP_ABONAMENT (TIP_ABONAMENT) VALUES ('10 Ședințe');

COMMIT;

--- INSERT INTO TIP_ABONAMENT_SALA

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 1, 100);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 1, 1500);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Zi', 2, 90);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 2, 130);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 2, 1999.99);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('10 Ședințe', 3, 200);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 3, 350);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 4, 300);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 4, 2000);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Zi', 5, 65);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 5, 450);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 5, 2300);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 6, 350);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 6, 1499.99);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 7, 500);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 7, 2500);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 8, 200);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('10 Ședințe', 8, 150);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('10 Ședințe', 9, 200);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 9, 350);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 9, 2499.99);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('10 Ședințe', 10, 400);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 10, 500);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 11, 499.99);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 11, 700);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('10 Ședințe', 12, 150);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Lunar', 12, 320);

INSERT INTO TIP_ABONAMENT_SALA (TIP_ABONAMENT, ID_SALA, PRET) VALUES ('Anual', 12, 1200);

COMMIT;

--- INSERT INTO ABONAMENT

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (1, 1, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-05-01', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-05-01', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (1, 2, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-02-01', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-02-01', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-02-01', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-02-01', 'YYYY-MM-DD'), 1*12));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (2, 3, 'Zi',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-01-23', 'YYYY-MM-DD') AND TO_DATE('2025-01-23', 'YYYY-MM-DD') + 1
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-01-23', 'YYYY-MM-DD'), TO_DATE('2025-01-23', 'YYYY-MM-DD') + 1);

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (2, 4, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-02-21', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-02-21', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-02-21', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-02-21', 'YYYY-MM-DD'), 1*12));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (3, 5, '10 Ședințe', 1,
        TO_DATE('2025-04-15', 'YYYY-MM-DD'), NULL);

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (3, 6, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-03-11', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-03-11', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-03-11', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-03-11', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (4, 7, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-02-21', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-02-21', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-02-21', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-02-21', 'YYYY-MM-DD'), 1*12));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (4, 8, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-03-01', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-03-01', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-03-01', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-03-01', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (5, 9, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-12-12', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-12-12', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2024-12-12', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-12-12', 'YYYY-MM-DD'), 1*12));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (5, 10, 'Zi',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-01-19', 'YYYY-MM-DD') AND TO_DATE('2025-02-21', 'YYYY-MM-DD') + 1
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-01-19', 'YYYY-MM-DD'), TO_DATE('2025-02-21', 'YYYY-MM-DD') + 1);

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (6, 11, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-01-15', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-01-15', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-01-15', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-01-15', 'YYYY-MM-DD'), 1*12));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (6, 12, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-03-08', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-03-08', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-03-08', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-03-08', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (7, 13, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-05-01', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-05-01', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1*12));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (7, 14, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-04-21', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-04-21', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-04-21', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-04-21', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (8, 15, '10 Ședințe', 1,
        TO_DATE('2025-02-01', 'YYYY-MM-DD'), NULL);

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (8, 16, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-03-13', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-03-13', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-03-13', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-03-13', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (9, 17, '10 Ședințe', 1,
        TO_DATE('2025-03-01', 'YYYY-MM-DD'), NULL);

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (9, 18, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-01-21', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-01-21', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-01-21', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-01-21', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (10, 19, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-04-12', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-04-12', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-04-12', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-04-12', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (10, 20, '10 Ședințe', 1,
        TO_DATE('2025-04-12', 'YYYY-MM-DD'), NULL);

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (11, 21, 'Lunar',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-03-14', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-03-14', 'YYYY-MM-DD'), 1)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-03-14', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-03-14', 'YYYY-MM-DD'), 1));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (11, 22, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-01-18', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-01-18', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-01-18', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-01-18', 'YYYY-MM-DD'), 1*12));

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (12, 23, 'Lunar', 1,
        TO_DATE('2025-04-12', 'YYYY-MM-DD'), NULL);

INSERT INTO ABONAMENT (ID_SALA, ID_MEMBRU, TIP_ABONAMENT, ACTIV, DATA_START, DATA_END)
VALUES (12, 24, 'Anual',
        CASE
            WHEN SYSDATE BETWEEN TO_DATE('2025-02-12', 'YYYY-MM-DD') AND ADD_MONTHS(TO_DATE('2025-02-12', 'YYYY-MM-DD'), 1*12)
            THEN 1 ELSE 0
        END,
        TO_DATE('2025-02-12', 'YYYY-MM-DD'), ADD_MONTHS(TO_DATE('2025-02-12', 'YYYY-MM-DD'), 1*12));

COMMIT;

--- INSERT INTO PLATI_ABONAMENTE

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (1, 1,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 1),
        SYSDATE,
        'CARD',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (2, 2,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 2),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (3, 3,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 3),
        SYSDATE,
        'CARD',
        'Plată eșuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (4, 4,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 4),
        SYSDATE,
        'CARD',
        'Plată eșuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (5, 5,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 5),
        SYSDATE,
        'CARD',
        'În decurs de plată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (6, 6,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 6),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (7, 7,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 7),
        SYSDATE,
        'CARD',
        'Plată eșuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (8, 8,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 8),
        SYSDATE,
        'CARD',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (9, 9,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 9),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (10, 10,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 10),
        SYSDATE,
        'CARD',
        'Plată eșuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (11, 11,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 11),
        SYSDATE,
        'CARD',
        'În decurs de plată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (12, 12,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 12),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (13, 13,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 13),
        SYSDATE,
        'CARD',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (14, 14,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 14),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (15, 15,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 15),
        SYSDATE,
        'CARD',
        'Plată eșuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (16, 16,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 16),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (17, 17,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 17),
        SYSDATE,
        'CARD',
        'În decurs de plată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (18, 18,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 18),
        SYSDATE,
        'CARD',
        'Plată eșuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (19, 19,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 19),
        SYSDATE,
        'CARD',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (20, 20,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 20),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (21, 21,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 21),
        SYSDATE,
        'TRANSFER BANCAR',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (22, 22,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 22),
        SYSDATE,
        'TRANSFER BANCAR',
        'În decurs de plată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (23, 23,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 23),
        SYSDATE,
        'CARD',
        'Plată efectuată'
        );

INSERT INTO PLATI_ABONAMENTE (id_abonament, id_membru, suma_plata, data_plata, metoda_plata, status_plata)
VALUES (24, 24,
        (SELECT PRET
         FROM TIP_ABONAMENT_SALA t
         JOIN ABONAMENT a ON a.tip_abonament = t.tip_abonament AND a.id_sala = t.id_sala
         WHERE a.id_abonament = 24),
        SYSDATE,
        'CASH',
        'Plată efectuată'
        );

COMMIT;

--- INSERT INTO CLASA

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (5, 17, 'Clase de Pilates', 15);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (2, 6, 'Spinning Intensiv', 20);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (4, 8, 'Yoga pentru Începători', 18);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (4, 8, 'HIIT Avansat', 12);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (3, 15, 'Antrenament Funcțional', 16);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (3, 3, 'Zumba Fitness', 22);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (4, 16, 'Stretching & Mobilitate', 14);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (1, 14, 'TRX Suspension', 10);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (5, 7, 'Core & Abs', 17);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (10, 19, 'Box Fitness', 20);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (6, 9, 'Functional Cardio', 15);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (5, 7, 'BodyPump', 18);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (7, 10, 'Aerobic Dance', 20);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (10, 19, 'Cardio & Tonifiere', 16);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (6, 18, 'Circuit Training', 12);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (12, 13, 'Fitness General', 15);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (10, 12, 'Nutriție', 30);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (8, 11, 'Kinetoterapie', 15);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (6, 18, 'CrossFit', 12);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (6, 9, 'Circuit Training', 12);

INSERT INTO CLASA (id_sala, id_trainer, nume, capacitate_maxima)
VALUES (11, 21, 'Pilates Moderat', 13);

COMMIT;

--- INSERT INTO REZERVARE

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (1, 6, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (4, 9, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (9, 11, SYSDATE, 'Participare în așteptare');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (15, 6, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (7, 17, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (11, 13, SYSDATE, 'Participare în așteptare');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (16, 17, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (21, 17, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (23, 10, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (16, 14, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (24, 19, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (24, 11, SYSDATE, 'Participare confirmată');

INSERT INTO REZERVARE (id_membru, id_clasa, data_rezervare, status)
VALUES (23, 11, ADD_MONTHS(SYSDATE, -4), 'Participare confirmată');

COMMIT;

--- INSERT INTO MEMBRU_CLASA

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (1, 6, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (4, 9, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (9, 11, SYSDATE, 'Va urma', 4);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (15, 6, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (7, 17, SYSDATE, 'Va urma', 3);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (11, 13, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (16, 17, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (21, 17, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (23, 10, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (16, 14, SYSDATE, 'Activ', 5);

INSERT INTO MEMBRU_CLASA (id_membru, id_clasa, data_inscriere, status_participare, feedback_membru)
VALUES (24, 19, SYSDATE, 'Activ', 4);

COMMIT;

--- INSERT INTO MEMBRU_ECHIPAMENT

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (3, 2, 15, SYSDATE, 'Intensiv', 'Echipament bun');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (8, 7, 30, SYSDATE, 'Moderată', 'Funcționează bine, dar ușor uzat');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (10, 8, 20, SYSDATE, 'Redusă', 'Perfect pentru începători');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (18, 13, 15, SYSDATE, 'Intensiv', 'Echipament bun');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (14, 11, 40, SYSDATE, 'Intensiv', 'Ideal pentru antrenamente cardio');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (23, 15, 25, SYSDATE, 'Moderată', 'Destul de confortabil');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (19, 14, 35, SYSDATE, 'Intensiv', 'Necesită mentenanță la cabluri');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (14, 10, 18, SYSDATE, 'Redusă', 'Ușor de folosit și silențios');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (16, 21, 50, SYSDATE, 'Intensiv', 'Excelent pentru musculatură');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (19, 12, 10, SYSDATE, 'Redusă', 'Feedback slab, dar util în încălzire');

INSERT INTO MEMBRU_ECHIPAMENT (id_membru, id_echipament, timp_utilizare, data_ultima_actualizare, intensitate, feedback_utilizare)
VALUES (3, 3, 50, SYSDATE, 'Intensiv', 'Excelent pentru musculatură');

COMMIT;

--- INSERT INTO CLASA_REZERVARE

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (6, 1, TO_DATE('16:00', 'HH24:MI'), 1, 'Dorește să stea mai retras');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (9, 2, TO_DATE('17:50', 'HH24:MI'), 1, 'Dorește să stea mai în public');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (11, 3, TO_DATE('08:30', 'HH24:MI'), 1, 'Va întârzia 5 minute');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (6, 4, TO_DATE('10:00', 'HH24:MI'), 0, 'Trainer indisponibil');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (17, 5, TO_DATE('14:15', 'HH24:MI'), 1, 'Membru nou în clasă');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (13, 6, TO_DATE('12:00', 'HH24:MI'), 1, 'Preferă zona din față');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (17, 7, TO_DATE('09:45', 'HH24:MI'), 0, 'Trainer nu a confirmat încă');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (17, 8, TO_DATE('17:30', 'HH24:MI'), 1, 'Antrenament personalizat');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (10, 9, TO_DATE('19:00', 'HH24:MI'), 1, 'Are nevoie de stretching suplimentar');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (14, 10, TO_DATE('07:00', 'HH24:MI'), 1, 'Se antrenează pentru maraton');

INSERT INTO CLASA_REZERVARE (id_clasa, id_rezervare, ora_rezervare, confirmare_trainer, observatii)
VALUES (19, 11, TO_DATE('15:30', 'HH24:MI'), 0, 'Trainer a anulat participarea');

COMMIT;