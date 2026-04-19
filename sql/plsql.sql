--created a sequence of numbers which we will increment
create sequence alert_seq start with 100
increment by 1
--TO GENERATE A ALERT WITH HIGH GLUCOSE READING
CREATE OR REPLACE TRIGGER glucose_alert_trigger
AFTER INSERT ON Glucose_Reading
FOR EACH ROW
BEGIN
    IF :NEW.glucose_level > 180 THEN
        INSERT INTO Alert (
            alert_id,
            risk_id,
            message,
            severity,
            created_at
        )
        VALUES (
            alert_seq.NEXTVAL,
            NULL,
            'High glucose detected for patient ' || :NEW.patient_id,
            'HIGH',
            CURRENT_TIMESTAMP
        );
    END IF;
END;
/
--validation trigger
CREATE OR REPLACE TRIGGER validate_glucose
BEFORE INSERT ON Glucose_Reading
FOR EACH ROW
BEGIN
    IF :NEW.glucose_level <= 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Invalid glucose value');
    END IF;
END;
/
--risk updataion trigger
CREATE OR REPLACE TRIGGER update_risk_trigger
AFTER INSERT ON Glucose_Reading
BEGIN
    MERGE INTO Risk_Assessment r
    USING (
        SELECT 
            patient_id,
            AVG(glucose_level) AS avg_glucose,
            CASE
                WHEN AVG(glucose_level) < 140 THEN 'LOW'
                WHEN AVG(glucose_level) < 180 THEN 'MEDIUM'
                ELSE 'HIGH'
            END AS risk_level
        FROM Glucose_Reading
        GROUP BY patient_id
    ) g
    ON (r.patient_id = g.patient_id)
    
    WHEN MATCHED THEN
        UPDATE SET 
            r.avg_glucose = g.avg_glucose,
            r.risk_level = g.risk_level,
            r.assessment_date = SYSDATE
    
    WHEN NOT MATCHED THEN
        INSERT (
            risk_id,
            patient_id,
            avg_glucose,
            risk_level,
            assessment_date
        )
        VALUES (
            risk_seq.NEXTVAL,
            g.patient_id,
            g.avg_glucose,
            g.risk_level,
            SYSDATE
        );
END;
/
--functions
--avg_glucose calculating function
CREATE OR REPLACE FUNCTION get_avg_glucose(p_id NUMBER)
RETURN NUMBER
IS
    avg_val NUMBER;
BEGIN
    SELECT AVG(glucose_level)
    INTO avg_val
    FROM Glucose_Reading
    WHERE patient_id = p_id;

    RETURN avg_val;
END;
/
--predict risk function
CREATE OR REPLACE FUNCTION calculate_risk(p_avg NUMBER)
RETURN VARCHAR2
IS
BEGIN
    IF p_avg < 140 THEN
        RETURN 'LOW';
    ELSIF p_avg < 180 THEN
        RETURN 'MEDIUM';
    ELSE
        RETURN 'HIGH';
    END IF;
END;
/