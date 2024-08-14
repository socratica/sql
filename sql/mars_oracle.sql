CREATE SEQUENCE martian_id
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE base_id
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE visitor_id
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE supply_id
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE SEQUENCE martian_id1
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE base(
base_id number(10) NOT NULL,
base_name VARCHAR2(50) NOT NULL,
founded DATE ,
PRIMARY KEY(base_id)
);
INSERT INTO base(base_id,base_name,founded)
Values(base_id.nextval, 'Tharsisland',TO_DATE('2037-06-03','yyyy/mm/dd') );
INSERT INTO base(base_id,base_name,founded)
Values(base_id.nextval,'Valles Marineris 2.0', TO_DATE('2040-12-01','yyyy/mm/dd'));
INSERT INTO base(base_id,base_name,founded)
Values(base_id.nextval, 'Gale Cratertown',TO_DATE('2014-08-15','yyyy/mm/dd') );
INSERT INTO base(base_id,base_name,founded)
Values(base_id.nextval, 'New New New York',TO_DATE('2042-02-10' ,'yyyy/mm/dd') );
INSERT INTO base(base_id,base_name,founded)
Values(base_id.nextval, 'Olympus Mons Spa & Casino', NULL);

CREATE TABLE visitor(
visitor_id number(10) not null,
host_id number(10),
first_name VARCHAR2(50) NOT NULL,
last_name VARCHAR2(50) NOT NULL,
PRIMARY KEY(visitor_id)
);
INSERT INTO visitor(visitor_id,host_id,first_name,last_name)
Values(visitor_id.nextval,7, 'George', 'Ambrose');
INSERT INTO visitor(visitor_id,host_id,first_name,last_name)
Values(visitor_id.nextval,1, 'Kris', 'Cardenas');
INSERT INTO visitor(visitor_id,host_id,first_name,last_name)
Values(visitor_id.nextval,9, 'Priscilla', 'Lane');
INSERT INTO visitor(visitor_id,host_id,first_name,last_name)
Values(visitor_id.nextval,11, 'Jane', 'Thornton');
INSERT INTO visitor(visitor_id,host_id,first_name,last_name)
Values(visitor_id.nextval,NULL, 'Doug', 'Stavenger');
INSERT INTO visitor(visitor_id,host_id,first_name,last_name)
Values(visitor_id.nextval,NULL, 'Jamie', 'Waterman');
INSERT INTO visitor(visitor_id,host_id,first_name,last_name)
Values(visitor_id.nextval,8, 'Martin', 'Humphries');

CREATE TABLE inventory(
base_id number(10) not null,
supply_id number(10),
quantity_id number(10)

);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(1, 1, 8);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(1, 3, 5);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(1, 5, 1);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(1, 6, 2);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(1, 8, 12);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(1, 9, 1);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(2, 4, 5);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(2, 8, 62);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(2, 10, 37);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(2, 8, 62);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(3, 2, 11);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(3, 7, 2);
INSERT INTO inventory(base_id,supply_id,quantity_id)
Values(4, 10, 91);

CREATE TABLE supply(
supply_id number(10) not null,
name VARCHAR2(50) NOT NULL,
description VARCHAR2(100) NOT NULL,
quantity number(10) not null,
PRIMARY KEY(supply_id)
);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Solar Panel', 'Standard 1x1 meter cell', 912);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval, 'Water Filter', 'This takes things out of your water so it''s drinkable.', 6);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Duct Tape', 'A 10 meeter roll of duct tape for ALL your repairs', 951);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Ketchup', 'It''s ketchup', 206);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Battery Cell', 'Standard 1000 kAH battery cell for power grid (heavy item).', 17);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'USB 6.0 Cable', 'Carbon fiber cooated / 10 TBps spool', 42);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Fuzzy Duster', 'It gets dusty around here. Be prepared!', 19);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Mars Bars', 'The ORIGINAL nutirent bar made with the finest bioengineered ingredients.', 3801);

INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Air Filter', 'Removes 99% of all Martian dust from your ventilation unit', 23);
INSERT INTO supply(supply_id,name,description,quantity)
Values(supply_id.nextval,'Famous Ray''s Frozen Pizza', 'This Martian favourite is covered in all your favourite toppings. 1 flavour only.', 823);

CREATE TABLE martian(
martian_id number(10) not null,
first_name VARCHAR2(50) NOT NULL,
last_name VARCHAR2(50) NOT NULL,
base_id number(10) ,
super_id number(10),
PRIMARY KEY(martian_id)
);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Ray', 'Bradbury', 1, NULL);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'John', 'Black', 4, 10);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Samuel', 'Hinkston', 4, 2)
;
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Jeff', 'Spender', 1, 9);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Sam', 'Parkhill', 2, 12);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Elma', 'Parkhill', 3, 8);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Melissa', 'Lewis', 1, 1);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Mark', 'Watney', 3, NULL);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Beth', 'Johanssen', 1, 1);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values( martian_id.nextval,'Chris', 'Beck', 4, NULL);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Nathaniel', 'York', 4, 2);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'Elon', 'Musk', 2, NULL);
INSERT INTO martian(martian_id,first_name,last_name,base_id,super_id)
Values(martian_id.nextval, 'John', 'Carter', NULL, 8);

CREATE TABLE martian_confidential (
martian_id1 number(10) not null,
first_name VARCHAR2(50) NOT NULL,
last_name VARCHAR2(50) NOT NULL,
base_id number(10),
super_id number(10),
salary number(10) not null,
dna_id VARCHAR2(50),
PRIMARY KEY(martian_id1)
);

INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Ray', 'Bradbury', 1, NULL, 155900, 'gctaggaatgtagaatctcctgttg');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'John', 'Black', 4, 10, 120100, 'cagttaatggttgaagctggggatt');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Samuel', 'Hinkston', 4, 2, 110000, 'cgaagcgctagatgctgtgttgtag');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Jeff', 'Spender', 1, 9, 10000, 'gactaatgtcttcgtggattgcaga');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Sam', 'Parkhill', 2, 12, 125000, 'gttactttgcgaaagccgtggctac');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Melissa', 'Lewis', 1, 1, 145250, 'cttcgatcgtcaatggagttccggac');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Mark', 'Watney', 3, NULL, 121100, 'gacacgaggcgaactatgtcgcggc');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Beth', 'Johanssen', 1, 1, 130000, 'cttagactaggtgtgaaacccgtta');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Chris', 'Beck', 4, NULL, 125000, 'gggggggttacgacgaggaatccat');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Nathaniel', 'York', 4, 2, 105000, 'ggtctccctgggcgggatattggatg');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'Elon', 'Musk', 2, NULL, 155800, 'atctgcttggatcaatagcgctgcg');
INSERT INTO martian_confidential(martian_id1,first_name,last_name,base_id,super_id,salary,dna_id)
Values(martian_id1.nextval, 'John', 'Carter', NULL, 8, 129500, 'ccaatcgtgcgagtcgcgatagtct');