-- File Name: Stage3.sql
-- Student Names:  Minseop Noh-128546157
--                 Ehsan Sabery Ghomy - 051519148
--                 Sureshkumar Nagaratnam - 052396140
-- OLS655 Final Project Stage 3 
-- Team Number: 1
-- Due Date: Aug 7, 2019
-- Professor’s Name: Sanja Kliska
-- Title: Altering Table and Populate Table for Stage 3.

--Add Sequence for rental_id
DROP SEQUENCE rental_id_seq;
CREATE SEQUENCE rental_id_seq;

-- Alter table for rental_id to be as surrogate key 
-- and making licence_plate unique so that only 1 licence_plate can be rented until it is removed
ALTER TABLE RENTAL MODIFY 
(
     rental_id NUMBER(9)
        DEFAULT rental_id_seq.nextval,
     licence_plate VARCHAR2(15) UNIQUE
);


--inserting 1 customer information
INSERT INTO customer (customer_id, first_name, last_name, phone, email, address, province, country, postal_code, license_number) VALUES ('A001', 'John', 'Doe' , 4161234567,'j_doe@example.com', '123 Seneca Rd.', 'Ontario','Canada', 'A1B 2C1', 'A1B2C3D4E5');


--inserting 8 vehicle_properties
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('BMW','Z4', '2 Door Roadster', 'Car-Small');
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('Porsche','911', '2 Door Carrera Cabriolet(Convertible)', 'Car-Small');
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('Mercedez Benz','E300', '4 Door Sedan', 'Car-Medium');
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('Mercedez Benz','C300', '2 Door Coupe', 'Car-Medium');
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('BMW','X3', '4 Door SUV', 'Car-Large');
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('GMC','YUKON', '4 Door SUV (Up to 9 Seating)', 'Car-Large');
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('Mercedez Benz','Metris Cargo Van', '4-Cylinder Turbocharged (For Work)', 'Van');
INSERT INTO vehicle_properties (make, model, description, type) VALUES ('GMC','Canyon', 'Mid-Size Pickup Truck (For Work)', 'Truck');


--inserting 40 different vehicles with unique licence_plates but same make and same model are used for different licence_plates
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-111', 'BMW', 'Z4');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-112', 'BMW', 'Z4');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-113', 'BMW', 'Z4');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-114', 'BMW', 'Z4');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-115', 'BMW', 'Z4');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-116', 'Porsche', '911');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-117', 'Porsche', '911');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-118', 'Porsche', '911');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-119', 'Porsche', '911');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-120', 'Porsche', '911');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-121', 'Mercedez Benz', 'E300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-122', 'Mercedez Benz', 'E300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-123', 'Mercedez Benz', 'E300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-124', 'Mercedez Benz', 'E300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-125', 'Mercedez Benz', 'E300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-126', 'Mercedez Benz', 'C300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-127', 'Mercedez Benz', 'C300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-128', 'Mercedez Benz', 'C300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-129', 'Mercedez Benz', 'C300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-130', 'Mercedez Benz', 'C300');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-131', 'BMW', 'X3');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-132', 'BMW', 'X3');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-133', 'BMW', 'X3');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-134', 'BMW', 'X3');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-135', 'BMW', 'X3');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-136', 'GMC', 'YUKON');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-137', 'GMC', 'YUKON');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-138', 'GMC', 'YUKON');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-139', 'GMC', 'YUKON');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AAAA-140', 'GMC', 'YUKON');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('111-1AA', 'Mercedez Benz', 'Metris Cargo Van');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('111-2AA', 'Mercedez Benz', 'Metris Cargo Van');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('111-3AA', 'Mercedez Benz', 'Metris Cargo Van');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('111-4AA', 'Mercedez Benz', 'Metris Cargo Van');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('111-5AA', 'Mercedez Benz', 'Metris Cargo Van');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AA-11111', 'GMC', 'Canyon');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AA-11112', 'GMC', 'Canyon');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AA-11113', 'GMC', 'Canyon');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AA-11114', 'GMC', 'Canyon');
INSERT INTO vehicle (licence_plate, make, model) VALUES ('AA-11115', 'GMC', 'Canyon');

COMMIT;