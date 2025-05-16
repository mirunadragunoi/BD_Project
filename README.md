# 📊 Sistem de Gestiune a Sălilor de Fitness – Proiect Baze de Date

---

## 🔍 Descriere generală

Acest proiect implementează un sistem de gestiune pentru o rețea de săli de fitness. Scopul principal este gestionarea eficientă a membrilor, abonamentelor, echipamentelor, claselor, antrenorilor și a plăților, printr-o structură relațională robustă și cereri SQL complexe.

---

## 🧱 Structura bazei de date

Baza de date este organizată în jurul a **15 tabele** principale, împărțite în:
- Tabele **neasociative** (ex: `SALA_FITNESS`, `MEMBRU`, `TRAINER`)
- Tabele **asociative** (ex: `MEMBRU_CLASA`, `CLASA_REZERVARE`, `MEMBRU_ECHIPAMENT`)

---

### 🔗 Tabele cheie:

- `SALA_FITNESS` – Informații generale despre locațiile sălilor
- `MEMBRU` – Datele personale ale membrilor
- `TRAINER` – Antrenori și specializările acestora
- `ABONAMENT`, `TIP_ABONAMENT_SALA` – Structura flexibilă a abonamentelor
- `ECHIPAMENT`, `MENTENANTA_ECHIPAMENT` – Gestionarea echipamentelor și stării lor
- `CLASA`, `REZERVARE`, `CLASA_REZERVARE` – Programări la clase și rezervări
- `PLATA_ABONAMENT` – Plăți efectuate pentru abonamente

---

## 📌 Cerințe implementate

S-au implementat următoarele tipuri de interogări și operații:

### ✅ Cereri complexe SQL:
- `WITH` (subcereri încluse)
- `JOIN` pe multiple tabele
- `GROUP BY`, `HAVING` și funcții agregate
- `NVL`, `DECODE`, `CASE`, `TO_CHAR`, `LENGTH`, `SYSDATE` etc.
- Subcereri sincronizate și nesincronizate
- Operații `UPDATE`, `DELETE` cu condiții avansate
- Gestionarea integrității referențiale

### 🔄 Exemple:
- Afișarea membrilor activi, cu suma totală plătită și ultima plată
- Reduceri automate de preț pentru abonamente în funcție de starea echipamentelor
- Ștergerea rezervărilor și înregistrărilor vechi cu feedback negativ
- Creșterea salariului trainerilor în funcție de numărul claselor gestionate

---

## 📊 Cereri SQL importante

Exemple de fișiere SQL incluse:
- `scheme_relationale.sql` - Detaliile schemelor relaționale
- `normalizare.sql` - Modul în care s-a realizat normalizarea în FN3
- `create_tabele.sql` – Script pentru crearea tuturor tabelelor
- `insert_tabele.sql` – Inserarea datelor de test
- `select_tabele.sql` – Cereri complexe legate de `SELECT`
- `update_tabele.sql` – Cereri complexe legate de `UPDATE`, `DELETE`

---

## 🧪 Testare & Validare

Toate cererile au fost testate în Oracle SQL Developer și verificate pentru:
- Conformitate cu constrângerile de integritate
- Utilizarea corectă a relațiilor între tabele
- Tratarea valorilor nule și erorilor potențiale

---
