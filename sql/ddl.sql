-- PATIENT
CREATE TABLE Patient (
    patient_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    age NUMBER,
    gender VARCHAR2(10),
    blood_type VARCHAR2(5),
    diabetes_type VARCHAR2(20)
);

-- DOCTOR
CREATE TABLE Doctor (
    doctor_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    specialization VARCHAR2(50)
);

-- M:N RELATION
CREATE TABLE Patient_Doctor (
    patient_id NUMBER,
    doctor_id NUMBER,
    PRIMARY KEY (patient_id, doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- GLUCOSE READING
CREATE TABLE Glucose_Reading (
    reading_id NUMBER PRIMARY KEY,
    patient_id NUMBER,
    glucose_level NUMBER,
    reading_time TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- LIFESTYLE LOG
CREATE TABLE Lifestyle_Log (
    log_id NUMBER PRIMARY KEY,
    patient_id NUMBER,
    steps NUMBER,
    diet VARCHAR2(50),
    exercise_minutes NUMBER,
    log_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- MEDICATION
CREATE TABLE Medication (
    med_id NUMBER PRIMARY KEY,
    patient_id NUMBER,
    medicine_name VARCHAR2(50),
    dosage VARCHAR2(20),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- RISK ASSESSMENT
CREATE TABLE Risk_Assessment (
    risk_id NUMBER PRIMARY KEY,
    patient_id NUMBER,
    avg_glucose NUMBER,
    risk_level VARCHAR2(10),
    assessment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- ALERT
CREATE TABLE Alert (
    alert_id NUMBER PRIMARY KEY,
    risk_id NUMBER,
    message VARCHAR2(100),
    severity VARCHAR2(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (risk_id) REFERENCES Risk_Assessment(risk_id)
);
    