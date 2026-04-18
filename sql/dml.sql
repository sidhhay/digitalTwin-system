--patient data
INSERT INTO Patient VALUES (1,'Rahul','Sharma',45,'M','B+','Type 2');
INSERT INTO Patient VALUES (2,'Ananya','Singh',32,'F','A+','Type 1');
INSERT INTO Patient VALUES (3,'Amit','Verma',50,'M','O+','Type 2');
INSERT INTO Patient VALUES (4,'Neha','Gupta',28,'F','AB+','Type 1');
INSERT INTO Patient VALUES (5,'Rohan','Mehta',40,'M','B-','Type 2');
INSERT INTO Patient VALUES (6,'Priya','Kapoor',35,'F','O-','Type 1');
INSERT INTO Patient VALUES (7,'Karan','Malhotra',55,'M','A+','Type 2');
INSERT INTO Patient VALUES (8,'Sneha','Iyer',30,'F','B+','Type 1');
INSERT INTO Patient VALUES (9,'Vikas','Yadav',48,'M','O+','Type 2');
INSERT INTO Patient VALUES (10,'Pooja','Sharma',27,'F','A-','Type 1');

INSERT INTO Patient VALUES (11,'Arjun','Reddy',52,'M','AB+','Type 2');
INSERT INTO Patient VALUES (12,'Meera','Nair',33,'F','O+','Type 1');
INSERT INTO Patient VALUES (13,'Sahil','Khanna',46,'M','B+','Type 2');
INSERT INTO Patient VALUES (14,'Divya','Bansal',29,'F','A+','Type 1');
INSERT INTO Patient VALUES (15,'Manish','Agarwal',60,'M','O-','Type 2');
INSERT INTO Patient VALUES (16,'Kavya','Joshi',31,'F','B+','Type 1');
INSERT INTO Patient VALUES (17,'Ravi','Chopra',49,'M','A+','Type 2');
INSERT INTO Patient VALUES (18,'Nisha','Arora',26,'F','AB-','Type 1');
INSERT INTO Patient VALUES (19,'Deepak','Shah',54,'M','O+','Type 2');
INSERT INTO Patient VALUES (20,'Simran','Gill',34,'F','B-','Type 1');

INSERT INTO Patient VALUES (21,'Aditya','Pandey',47,'M','A+','Type 2');
INSERT INTO Patient VALUES (22,'Isha','Kumar',28,'F','O+','Type 1');
INSERT INTO Patient VALUES (23,'Mohit','Saxena',51,'M','B+','Type 2');
INSERT INTO Patient VALUES (24,'Tanya','Malik',30,'F','AB+','Type 1');
INSERT INTO Patient VALUES (25,'Nitin','Bhatia',44,'M','O-','Type 2');
INSERT INTO Patient VALUES (26,'Ritika','Sethi',29,'F','A+','Type 1');
INSERT INTO Patient VALUES (27,'Varun','Goel',53,'M','B+','Type 2');
INSERT INTO Patient VALUES (28,'Aisha','Khan',25,'F','O+','Type 1');
INSERT INTO Patient VALUES (29,'Harsh','Singla',48,'M','A-','Type 2');
INSERT INTO Patient VALUES (30,'Payal','Chaudhary',36,'F','B+','Type 1');
--doctor data
INSERT INTO Doctor VALUES (101,'Dr. Rajesh Mehta','Endocrinologist');
INSERT INTO Doctor VALUES (102,'Dr. Anil Kapoor','General Physician');
INSERT INTO Doctor VALUES (103,'Dr. Sunita Sharma','Diabetologist');
INSERT INTO Doctor VALUES (104,'Dr. Vivek Gupta','Endocrinologist');
INSERT INTO Doctor VALUES (105,'Dr. Neha Verma','General Physician');
INSERT INTO Doctor VALUES (106,'Dr. Amit Bansal','Diabetologist');
INSERT INTO Doctor VALUES (107,'Dr. Pooja Arora','Endocrinologist');
INSERT INTO Doctor VALUES (108,'Dr. Karan Malhotra','General Physician');
INSERT INTO Doctor VALUES (109,'Dr. Ritu Singh','Diabetologist');
INSERT INTO Doctor VALUES (110,'Dr. Manish Agarwal','Endocrinologist');
--patient doctor
-- Patients 1–10
INSERT INTO Patient_Doctor VALUES (1,101);
INSERT INTO Patient_Doctor VALUES (1,102);

INSERT INTO Patient_Doctor VALUES (2,103);
INSERT INTO Patient_Doctor VALUES (2,102);

INSERT INTO Patient_Doctor VALUES (3,101);
INSERT INTO Patient_Doctor VALUES (3,104);

INSERT INTO Patient_Doctor VALUES (4,103);

INSERT INTO Patient_Doctor VALUES (5,102);
INSERT INTO Patient_Doctor VALUES (5,105);

INSERT INTO Patient_Doctor VALUES (6,106);

INSERT INTO Patient_Doctor VALUES (7,101);
INSERT INTO Patient_Doctor VALUES (7,107);

INSERT INTO Patient_Doctor VALUES (8,103);
INSERT INTO Patient_Doctor VALUES (8,108);

INSERT INTO Patient_Doctor VALUES (9,104);
INSERT INTO Patient_Doctor VALUES (9,109);

INSERT INTO Patient_Doctor VALUES (10,102);

-- Patients 11–20
INSERT INTO Patient_Doctor VALUES (11,110);
INSERT INTO Patient_Doctor VALUES (11,101);

INSERT INTO Patient_Doctor VALUES (12,103);

INSERT INTO Patient_Doctor VALUES (13,104);
INSERT INTO Patient_Doctor VALUES (13,106);

INSERT INTO Patient_Doctor VALUES (14,103);

INSERT INTO Patient_Doctor VALUES (15,110);
INSERT INTO Patient_Doctor VALUES (15,105);

INSERT INTO Patient_Doctor VALUES (16,106);

INSERT INTO Patient_Doctor VALUES (17,101);

INSERT INTO Patient_Doctor VALUES (18,103);
INSERT INTO Patient_Doctor VALUES (18,109);

INSERT INTO Patient_Doctor VALUES (19,104);

INSERT INTO Patient_Doctor VALUES (20,105);

-- Patients 21–30
INSERT INTO Patient_Doctor VALUES (21,101);
INSERT INTO Patient_Doctor VALUES (21,110);

INSERT INTO Patient_Doctor VALUES (22,103);

INSERT INTO Patient_Doctor VALUES (23,104);
INSERT INTO Patient_Doctor VALUES (23,106);

INSERT INTO Patient_Doctor VALUES (24,103);

INSERT INTO Patient_Doctor VALUES (25,105);
INSERT INTO Patient_Doctor VALUES (25,102);

INSERT INTO Patient_Doctor VALUES (26,103);

INSERT INTO Patient_Doctor VALUES (27,101);

INSERT INTO Patient_Doctor VALUES (28,103);
INSERT INTO Patient_Doctor VALUES (28,108);

INSERT INTO Patient_Doctor VALUES (29,104);

INSERT INTO Patient_Doctor VALUES (30,105);
-- glucose reading
-- Patient 1
INSERT INTO Glucose_Reading VALUES (1,1,120,TIMESTAMP '2026-04-01 08:00:00');
INSERT INTO Glucose_Reading VALUES (2,1,150,TIMESTAMP '2026-04-02 08:00:00');
INSERT INTO Glucose_Reading VALUES (3,1,190,TIMESTAMP '2026-04-03 08:00:00');

-- Patient 2
INSERT INTO Glucose_Reading VALUES (4,2,100,TIMESTAMP '2026-04-01 09:00:00');
INSERT INTO Glucose_Reading VALUES (5,2,130,TIMESTAMP '2026-04-02 09:00:00');
INSERT INTO Glucose_Reading VALUES (6,2,170,TIMESTAMP '2026-04-03 09:00:00');

-- Patient 3
INSERT INTO Glucose_Reading VALUES (7,3,160,TIMESTAMP '2026-04-01 10:00:00');
INSERT INTO Glucose_Reading VALUES (8,3,180,TIMESTAMP '2026-04-02 10:00:00');
INSERT INTO Glucose_Reading VALUES (9,3,210,TIMESTAMP '2026-04-03 10:00:00');

-- Patient 4
INSERT INTO Glucose_Reading VALUES (10,4,90,TIMESTAMP '2026-04-01 07:30:00');
INSERT INTO Glucose_Reading VALUES (11,4,110,TIMESTAMP '2026-04-02 07:30:00');
INSERT INTO Glucose_Reading VALUES (12,4,140,TIMESTAMP '2026-04-03 07:30:00');

-- Patient 5
INSERT INTO Glucose_Reading VALUES (13,5,200,TIMESTAMP '2026-04-01 08:30:00');
INSERT INTO Glucose_Reading VALUES (14,5,210,TIMESTAMP '2026-04-02 08:30:00');
INSERT INTO Glucose_Reading VALUES (15,5,220,TIMESTAMP '2026-04-03 08:30:00');
--lifestyle log
INSERT INTO Lifestyle_Log VALUES (1,1,5000,'Low Sugar',30,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (2,2,7000,'Balanced',45,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (3,3,3000,'High Carb',10,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (4,4,8000,'Healthy',50,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (5,5,2000,'High Sugar',5,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (6,6,6000,'Balanced',40,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (7,7,4000,'Moderate Carb',25,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (8,8,7500,'Healthy',50,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (9,9,3000,'High Sugar',15,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (10,10,6500,'Balanced',35,DATE '2026-04-01');

INSERT INTO Lifestyle_Log VALUES (11,11,2000,'High Sugar',10,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (12,12,8000,'Healthy',55,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (13,13,5000,'Low Sugar',30,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (14,14,7200,'Balanced',45,DATE '2026-04-01');
INSERT INTO Lifestyle_Log VALUES (15,15,2500,'High Carb',20,DATE '2026-04-01');
--medication
INSERT INTO Medication VALUES (1,1,'Metformin','500mg');
INSERT INTO Medication VALUES (2,2,'Insulin','10 units');
INSERT INTO Medication VALUES (3,3,'Glimepiride','2mg');
INSERT INTO Medication VALUES (4,4,'Insulin','8 units');
INSERT INTO Medication VALUES (5,5,'Metformin','850mg');
INSERT INTO Medication VALUES (6,6,'Metformin','500mg');
INSERT INTO Medication VALUES (7,7,'Insulin','12 units');
INSERT INTO Medication VALUES (8,8,'Glimepiride','2mg');
INSERT INTO Medication VALUES (9,9,'Metformin','850mg');
INSERT INTO Medication VALUES (10,10,'Insulin','10 units');

INSERT INTO Medication VALUES (11,11,'Glimepiride','1mg');
INSERT INTO Medication VALUES (12,12,'Metformin','500mg');
INSERT INTO Medication VALUES (13,13,'Insulin','8 units');
INSERT INTO Medication VALUES (14,14,'Metformin','1000mg');
INSERT INTO Medication VALUES (15,15,'Insulin','15 units');
--risk assesment
INSERT INTO Risk_Assessment VALUES (1,1,153,'MEDIUM',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (2,2,133,'LOW',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (3,3,183,'HIGH',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (4,4,113,'LOW',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (5,5,210,'HIGH',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (6,6,156,'MEDIUM',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (7,7,180,'HIGH',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (8,8,150,'MEDIUM',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (9,9,195,'HIGH',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (10,10,140,'LOW',DATE '2026-04-03');

INSERT INTO Risk_Assessment VALUES (11,11,210,'HIGH',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (12,12,120,'LOW',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (13,13,160,'MEDIUM',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (14,14,145,'LOW',DATE '2026-04-03');
INSERT INTO Risk_Assessment VALUES (15,15,200,'HIGH',DATE '2026-04-03');
--alert
INSERT INTO Alert VALUES (1,3,'High glucose detected','HIGH',CURRENT_TIMESTAMP);
INSERT INTO Alert VALUES (2,5,'Critical glucose level','HIGH',CURRENT_TIMESTAMP);
INSERT INTO Alert VALUES (3,7,'High glucose trend detected','HIGH',CURRENT_TIMESTAMP);
INSERT INTO Alert VALUES (4,9,'Critical glucose level','HIGH',CURRENT_TIMESTAMP);
INSERT INTO Alert VALUES (5,11,'Severe diabetes risk','HIGH',CURRENT_TIMESTAMP);
INSERT INTO Alert VALUES (6,15,'Immediate attention required','HIGH',CURRENT_TIMESTAMP);