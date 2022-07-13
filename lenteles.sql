--Kuriama lentele Studentai

CREATE TABLE IF NOT EXISTS Studentai (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    vardas VARCHAR(30) NOT NULL,
    pavarde VARCHAR(30) NOT NULL,
    gimimo_metai YEAR (4) UNSIGNED NOT NULL,
    adresas VARCHAR (60) NOT NULL,
    kursas VARCHAR (20)  NOT NULL,
    grupe VARCHAR (10)  NOT NULL,    
    PRIMARY KEY(id)
);





-- Kuriama nauja lentele Mokytojai

CREATE TABLE IF NOT EXISTS Mokytojai (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Vardas VARCHAR (20) NOT NULL,
    Pavarde VARCHAR (20) NOT NULL,
    Stažas SMALLINT (2) UNSIGNED NOT NULL,
    Mokomas_dalykas VARCHAR (15)  NOT NULL,
    Atlyginimas DECIMAL (4,2) NOT NULL, 
    PRIMARY KEY(id)
    );


-- Kuriama nauja lentele kursai

    CREATE TABLE IF NOT EXISTS Kursai (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Metai YEAR (4) UNSIGNED NOT NULL,
    Studentu_skaicius INT (4) UNSIGNED NOT NULL,
    Fizika INT (4) UNSIGNED NOT NULL,
    Astronomija INT (4) UNSIGNED NOT NULL,
    Matematika INT (4) UNSIGNED  NOT NULL,
    Chemija INT (4) UNSIGNED NOT NULL, 
    PRIMARY KEY(id)
    );

-- Kuriama nauja lentele kiti darbuotojai

    CREATE TABLE IF NOT EXISTS Kiti_darbuotojai (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Vardas VARCHAR (20) NOT NULL,
    Pavarde VARCHAR (20) NOT NULL,
    Stažas SMALLINT (2) UNSIGNED NOT NULL,
    Profesija VARCHAR (10)  NOT NULL,
    Atlyginimas DECIMAL (6,2) NOT NULL, 
    PRIMARY KEY(id)
    );

-- Kuriama nauja lentele grupes

     CREATE TABLE IF NOT EXISTS Grupes (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Pirma INT (4) UNSIGNED NOT NULL,
    Antra INT (4) UNSIGNED NOT NULL,
    Trecia INT (4) UNSIGNED NOT NULL,
    Ketvirta INT (4) UNSIGNED NOT NULL,
    Penkta INT (4) UNSIGNED  NOT NULL,
    Sesta INT (4) UNSIGNED NOT NULL, 
    PRIMARY KEY(id)
    );

    -- Iterpimas Mokytojai

    INSERT INTO `mokytojai`(`id`, `Vardas`, `Pavarde`, `Stažas`, `Mokomas_dalykas`, `Atlyginimas`)
    VALUES (NULL,"Petras","Grazulis",15,"Chemija",1201.05),
           (NULL,"Jonas","Pavardenis",3,"Fizika",1125.25),
           (NULL,"Jonas","Vylimas",15,"Astronomija",1261.05),
           (NULL,"Simas","Balandis",3,"Fizika",1135.25)


--kiti darbuotojai

     INSERT INTO `kiti_darbuotojai`(`id`, `Vardas`, `Pavarde`, `Stažas`, `Profesija`, `Atlyginimas`)
     VALUES (NULL,"Vardas","Pavarde",2,"kalvis",200.50),
            (NULL, "Bevardis","Bebebevardis", 25, "nekalvis", 602.30);


    -- Studentu iterpimas
INSERT INTO `studentai`(`id`, `vardas`, `pavarde`, `gimimo_metai`, `adresas`, `kursas`, `grupe`) 
VALUES (NULL,'Petras','Petraitis',1995,'Kauno 20-25 Kaunas','Fizika','Pirma'), 
       (NULL,'Jonas','Petrauskas',1996,'Kauno 30-20 Kaunas','Chemija','Antra');


       --Kursai iterpimas

       INSERT INTO `kursai`(`id`, `Metai`, `Studentu_skaicius`, `Fizika`, `Astronomija`, `Matematika`, `Chemija`)
        VALUES (NULL,2016,650,150,200,150,100)