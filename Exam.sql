-- 1. Paimti iš lentelės visus įrašus, kur "year_made" yra daugiau nei 2000, įskaitant ir 2000.
-- Į rezultatą įtraukite visus stulpelius. Atsakymą pateikite sekančioje eilutėje.

SELECT * FROM car WHERE year_made >= 2022;

-- 2. Paimti iš lentelės visus įrašus, bet į rezultatą įtraukite tik "model" stulpelį.

SELECT model FROM car;

-- 3. Ištrinkite iš lentelės įrašus, kur "model" yra "Ford Focus".

DELETE FROM car WHERE model = 'Ford Focus';

-- 4. Atnaujinkite reikšmes įrašų, kur "id" yra 5. Nauja "year_made" reikšmė - 2021. Kitų stulpelių reikšmės lieka nepakitusios.

UPDATE car SET year_made = 2021 WHERE id = 5;

-- 5. Sukurkite naują lentelę 'car_owner', kuri turėtų 3 stulpelius:
-- - id - int primary key ir auto increment
-- - fullname - varchar(255) not null
-- - car_id - int ir not null. Šis stulpelis turi būti susietas su lentelės 'car' stulpeliu 'id' per foreign key sąsają.
--   Kai ištrinamas įrašas lentelėje 'car', automatiškai turi iššitrinti ir susiję įrašai iš 'car_owner'.


CREATE TABLE Car_owners
(
    id       int PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(255) NOT NULL,
    CarId    int,
    FOREIGN KEY (CarId)
        REFERENCES car (id) ON DELETE CASCADE
);

DELETE FROM car WHERE id = 4;





Arba galima taip padaryti

CREATE TABLE Car_owners (
                            id int PRIMARY KEY AUTO_INCREMENT,
                            FullName VARCHAR(255) NOT NULL,
                            CarId int,
                            FOREIGN KEY (CarId)
                                REFERENCES car(id)
);

DELETE FROM car_owners WHERE CarId = 2;
DELETE FROM car WHERE id = 2;



