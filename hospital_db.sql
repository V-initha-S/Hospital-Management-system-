create database hospitalmanagements;
use hospitalmanagements;
CREATE TABLE PATIENTS(
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    PatientName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(200)
);
 CREATE TABLE DOCTORS(
   DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    DoctorName VARCHAR(50),
    Specialization VARCHAR(50),
    PhoneNumber varchar(15),
    Email VARCHAR(50),
    Department VARCHAR(50)
);
CREATE TABLE APPOINTMENTS(
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Fees DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES PATIENTS(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES DOCTORS(DoctorID)
);
CREATE TABLE BILLS(
    BillID INT PRIMARY KEY AUTO_INCREMENT,
    AppointmentID INT,
    BillAmount DECIMAL(10, 2),
    BillDate DATE,
    PaymentMode VARCHAR(50),
    PaymentStatus VARCHAR(50),
    FOREIGN KEY (AppointmentID) REFERENCES APPOINTMENTS(AppointmentID)
);
CREATE TABLE MEDICINES(
    MedicineID INT PRIMARY key ,
    MedicineName VARCHAR(50),
    Price DECIMAL(10, 2),
    ExpiryDate DATE,
    Quantity INT,
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES PATIENTS(PatientID)
);
CREATE TABLE ROOMS(
	RoomID INT PRIMARY KEY ,
    RoomType VARCHAR(50),
    PricePerDay DECIMAL(10, 2),
    PatientID INT,
    RoomStatus VARCHAR(50),
    RoomNumber INT,
    FOREIGN KEY (PatientID) REFERENCES PATIENTS (PatientID)
);
INSERT INTO PATIENTS(PatientName, Age, Gender, PhoneNumber, Address)
VALUES 
('John Doe', 30, 'Male', 9876543210, 'New York, USA'),
('Alice Smith', 25, 'Female', 9123456789, 'Los Angeles, USA'),
('Michael Johnson', 40, 'Male', 8987654321, 'Chicago, USA'),
('Emily Davis', 35, 'Female', 9765432109, 'Texas, USA'),
('Robert Wilson', 45, 'Male', 9345678901, 'Miami, USA'),
('Sophia Miller', 28, 'Female', 9456781234, 'Seattle, USA'),
('James Brown', 50, 'Male', 9012345678, 'Boston, USA'),
('Olivia Taylor', 22, 'Female', 9786543210, 'San Francisco, USA'),
('William Anderson', 38, 'Male', 9087654321, 'Denver, USA'),
('Ava Martinez', 27, 'Female', 9321456789, 'Phoenix, USA'),
('Benjamin Thomas', 33, 'Male', 9781234567, 'Houston, USA'),
('Mia White', 29, 'Female', 9456123789, 'Dallas, USA'),
('Daniel Harris', 41, 'Male', 9876541234, 'San Diego, USA'),
('Charlotte Clark', 31, 'Female', 9345678912, 'Las Vegas, USA'),
('Matthew Lewis', 36, 'Male', 9876123456, 'Atlanta, USA'),
('Amelia Walker', 26, 'Female', 9213456789, 'Austin, USA'),
('David Hall', 48, 'Male', 9898765432, 'Portland, USA'),
('Isabella Allen', 24, 'Female', 9345126789, 'Washington, USA'),
('Joseph Young', 39, 'Male', 9789456123, 'Orlando, USA'),
('Grace King', 32, 'Female', 9456789123, 'San Jose, USA');
INSERT INTO DOCTORS(DoctorName, Specialization, PhoneNumber, Email, Department)
 VALUES
('Dr. John Smith', 'Cardiologist', '9876543210', 'johnsmith@gmail.com', 'Cardiology'),
('Dr. Sarah Johnson', 'Dermatologist', '9876543211', 'sarahjohnson@gmail.com', 'Dermatology'),
('Dr. Michael Lee', 'Orthopedic', '9876543212', 'michaellee@gmail.com', 'Orthopedics'),
('Dr. Emily Davis', 'Pediatrician', '9876543213', 'emilydavis@gmail.com', 'Pediatrics'),
('Dr. Robert Brown', 'Neurologist', '9876543214', 'robertbrown@gmail.com', 'Neurology'),
('Dr. Linda Wilson', 'Gynecologist', '9876543215', 'lindawilson@gmail.com', 'Gynecology'),
('Dr. James Miller', 'Cardiologist', '9876543216', 'jamesmiller@gmail.com', 'Cardiology'),
('Dr. Jessica Martinez', 'Dermatologist', '9876543217', 'jessicamartinez@gmail.com', 'Dermatology'),
('Dr. William Taylor', 'Orthopedic', '9876543218', 'williamtaylor@gmail.com', 'Orthopedics'),
('Dr. Olivia Anderson', 'Pediatrician', '9876543219', 'oliviaanderson@gmail.com', 'Pediatrics'),
('Dr. David Thomas', 'Neurologist', '9876543220', 'davidthomas@gmail.com', 'Neurology'),
('Dr. Sophia White', 'Gynecologist', '9876543221', 'sophiawhite@gmail.com', 'Gynecology'),
('Dr. Richard Harris', 'Cardiologist', '9876543222', 'richardharris@gmail.com', 'Cardiology'),
('Dr. Mary Clark', 'Dermatologist', '9876543223', 'maryclark@gmail.com', 'Dermatology'),
('Dr. Christopher Walker', 'Orthopedic', '9876543224', 'christopherwalker@gmail.com', 'Orthopedics'),
('Dr. Patricia Hall', 'Pediatrician', '9876543225', 'patriciahall@gmail.com', 'Pediatrics'),
('Dr. Joseph Lewis', 'Neurologist', '9876543226', 'josephlewis@gmail.com', 'Neurology'),
('Dr. Barbara Allen', 'Gynecologist', '9876543227', 'barbaraallen@gmail.com', 'Gynecology'),
('Dr. Daniel Young', 'Cardiologist', '9876543228', 'danielyoung@gmail.com', 'Cardiology'),
('Dr. Nancy King', 'Dermatologist', '9876543229', 'nancyking@gmail.com', 'Dermatology');
INSERT INTO APPOINTMENTS (PatientID, DoctorID, AppointmentDate, Fees, Status) VALUES
(1, 3, '2025-03-01', 500.00, 'Completed'),
(2, 5, '2025-03-02', 700.00, 'Pending'),
(3, 7, '2025-03-03', 400.00, 'Cancelled'),
(4, 2, '2025-03-04', 600.00, 'Completed'),
(5, 8, '2025-03-05', 550.00, 'Pending'),
(6, 10, '2025-03-06', 750.00, 'Completed'),
(7, 4, '2025-03-07', 500.00, 'Pending'),
(8, 1, '2025-03-08', 450.00, 'Completed'),
(9, 6, '2025-03-09', 700.00, 'Cancelled'),
(10, 9, '2025-03-10', 600.00, 'Pending'),
(11, 11, '2025-03-11', 800.00, 'Completed'),
(12, 13, '2025-03-12', 550.00, 'Pending'),
(13, 15, '2025-03-13', 400.00, 'Cancelled'),
(14, 17, '2025-03-14', 900.00, 'Completed'),
(15, 19, '2025-03-15', 650.00, 'Pending'),
(16, 12, '2025-03-16', 700.00, 'Completed'),
(17, 14, '2025-03-17', 500.00, 'Cancelled'),
(18, 16, '2025-03-18', 750.00, 'Completed'),
(19, 18, '2025-03-19', 800.00, 'Pending'),
(20, 20, '2025-03-20', 600.00, 'Completed');
INSERT INTO BILLS(AppointmentID, BillAmount, BillDate, PaymentMode, PaymentStatus)
VALUES
(1, 500.00, '2025-03-01', 'Cash', 'Paid'),
(2, 600.00, '2025-03-02', 'Card', 'Paid'),
(3, 450.00, '2025-03-03', 'UPI', 'Unpaid'),
(4, 700.00, '2025-03-04', 'Card', 'Paid'),
(5, 550.00, '2025-03-05', 'Cash', 'Paid'),
(6, 480.00, '2025-03-06', 'Card', 'Paid'),
(7, 620.00, '2025-03-07', 'UPI', 'Unpaid'),
(8, 500.00, '2025-03-08', 'Cash', 'Paid'),
(9, 530.00, '2025-03-09', 'Card', 'Paid'),
(10, 400.00, '2025-03-10', 'UPI', 'Unpaid'),
(11, 450.00, '2025-03-11', 'Cash', 'Paid'),
(12, 600.00, '2025-03-12', 'Card', 'Paid'),
(13, 700.00, '2025-03-13', 'UPI', 'Unpaid'),
(14, 650.00, '2025-03-14', 'Cash', 'Paid'),
(15, 550.00, '2025-03-15', 'Card', 'Unpaid'),
(16, 580.00, '2025-03-16', 'UPI', 'Paid'),
(17, 620.00, '2025-03-17', 'Cash', 'Cancelled'),
(18, 500.00, '2025-03-18', 'Card', 'Paid'),
(19, 470.00, '2025-03-19', 'UPI', 'Unpaid'),
(20, 490.00, '2025-03-20', 'Cash', 'Paid');
INSERT INTO MEDICINES(MedicineID,MedicineName, Price, ExpiryDate, Quantity, PatientID)
VALUES
(111, 'Cough Syrup', 120.00, '2025-11-10', 50, 1),
(112, 'Panadol', 60.00, '2026-03-05', 200, 2),
(113, 'Amoxiclav', 300.00, '2025-08-20', 100, 3),
(114, 'Vitamin D', 180.00, '2026-05-12', 400, 4),
(115, 'Blood Pressure Tablet', 250.00, '2025-10-15', 150, 5),
(116, 'Antibiotic Capsule', 400.00, '2026-04-25', 70, 6),
(117, 'Cough Drops', 50.00, '2025-07-20', 300, 7),
(118, 'Pain Relief Gel', 320.00, '2025-12-30', 90, 8),
(119, 'Allergy Tablet', 150.00, '2026-03-18', 200, 9),
(120, 'Multivitamin Syrup', 500.00, '2025-09-05', 60, 10),
(121, 'Diabetes Tablet', 350.00, '2026-01-20', 100, 11),
(122, 'Eye Drops', 180.00, '2025-06-25', 50, 12),
(123, 'Calcium Syrup', 250.00, '2026-02-10', 80, 13),
(124, 'Iron Tablet', 200.00, '2025-11-15', 150, 14),
(125, 'Thyroid Tablet', 450.00, '2026-04-05', 60, 15),
(126, 'Cough Syrup Extra', 170.00, '2025-08-25', 90, 16),
(127, 'Vitamin B Complex', 220.00, '2025-12-10', 300, 17),
(128, 'Insulin Pen', 1000.00, '2026-03-15', 40, 18),
(129, 'Liver Tablet', 280.00, '2025-10-20', 120, 19),
(130, 'Calcium Injection', 800.00, '2026-05-30', 50, 20);
INSERT INTO ROOMS(RoomID, RoomType, PricePerDay, PatientID, RoomStatus, RoomNumber) 
VALUES 
(1, 'Single', 2500.00, 1, 'Occupied', 101),
(2, 'Deluxe', 5000.00, 2, 'Occupied', 102),
(3, 'General', 1500.00,3, 'Occupied', 103),
(4, 'ICU', 7000.00, 4, 'Occupied', 104),
(5, 'Single', 2500.00, NULL, 'Available', 105),
(6, 'Deluxe', 5000.00, NULL, 'Available', 106),
(7, 'General', 1500.00, 5, 'Occupied', 107),
(8, 'ICU', 7000.00, 6, 'Occupied', 108),
(9, 'Single', 2500.00, NULL, 'Available', 109),
(10, 'General', 1500.00, 7, 'Occupied', 110),
(11, 'Deluxe', 5000.00, NULL, 'Available', 111),
(12, 'ICU', 7000.00, 8, 'Occupied', 112),
(13, 'General', 1500.00, NULL, 'Available', 113),
(14, 'Single', 2500.00, 9, 'Occupied', 114),
(15, 'Deluxe', 5000.00, 10, 'Occupied', 115),
(16, 'General', 1500.00, NULL, 'Available', 116),
(17, 'ICU', 7000.00, 11, 'Occupied', 117),
(18, 'Single', 2500.00, NULL, 'Available', 118),
(19, 'General', 1500.00, 12, 'Occupied', 119),
(20, 'Deluxe', 5000.00, NULL, 'Available', 120);
SELECT * FROM PATIENTS;
SELECT * FROM DOCTORS;
SELECT * FROM APPOINTMENTS;
SELECT * FROM BILLS;
SELECT * FROM MEDICINES;
SELECT * FROM ROOMS;
SELECT P.PatientID, P.PatientName, M.MedicineName, M.Price
FROM PATIENTS P
INNER JOIN MEDICINES M ON P.PatientID = M.PatientID;
SELECT P.PatientID, P.PatientName, M.MedicineName, M.Price
FROM PATIENTS P
LEFT JOIN MEDICINES M ON P.PatientID = M.PatientID;
SELECT P.PatientID, P.PatientName, M.MedicineName, M.Price
FROM PATIENTS P
RIGHT JOIN MEDICINES M ON P.PatientID = M.PatientID;
SELECT P.PatientName, M.MedicineName
FROM PATIENTS P
CROSS JOIN MEDICINES M;
SELECT A.PatientName AS Patient1, B.PatientName AS Patient2
FROM PATIENTS A, PATIENTS B
WHERE A.PatientID <> B.PatientID AND A.Age = B.Age;
SELECT DoctorID, SUM(Fees) AS TotalFees
FROM APPOINTMENTS
GROUP BY DoctorID
HAVING TotalFees > 5000;
SELECT PatientID, PatientName
FROM PATIENTS
WHERE PatientID IN (
    SELECT PatientID 
    FROM MEDICINES
    WHERE Quantity > 200
);
DELIMITER $$

CREATE PROCEDURE GetSameAgePatients()
BEGIN
    SELECT A.PatientName AS Patient1, B.PatientName AS Patient2, A.Age
    FROM PATIENTS A, PATIENTS B
    WHERE A.PatientID < B.PatientID  -- Avoids duplicate pairs
    AND A.Age = B.Age;
END $$

DELIMITER ;
CALL GetSameAgePatients();
SELECT DoctorName, Specialization FROM DOCTORS WHERE Department = 'Cardiology';
SELECT COUNT(*) AS TotalAppointments FROM APPOINTMENTS;
SELECT PATIENTS.PatientName  
FROM PATIENTS 
LEFT JOIN APPOINTMENTS ON PATIENTS.PatientID = APPOINTMENTS.PatientID  
WHERE APPOINTMENTS.PatientID IS NULL 
LIMIT 0, 1000;

SELECT SUM(Fees) AS TotalRevenue FROM APPOINTMENTS;
SELECT P.PatientName, R.RoomType, R.RoomNumber 
FROM ROOMS R 
JOIN PATIENTS P ON R.PatientID = P.PatientID 
WHERE R.RoomType = 'ICU';
SELECT D.DoctorName, COUNT(A.AppointmentID) AS TotalAppointments 
FROM DOCTORS D 
JOIN APPOINTMENTS A ON D.DoctorID = A.DoctorID 
GROUP BY D.DoctorName 
HAVING TotalAppointments > 2;
SELECT MedicineName, ExpiryDate FROM MEDICINES WHERE YEAR(ExpiryDate) = YEAR(CURDATE());
SELECT P.PatientName, B.BillAmount, B.PaymentStatus 
FROM PATIENTS P 
JOIN APPOINTMENTS A ON P.PatientID = A.PatientID 
JOIN BILLS B ON A.AppointmentID = B.AppointmentID 
WHERE B.PaymentStatus = 'Paid';
SELECT RoomNumber, RoomType FROM ROOMS WHERE RoomStatus = 'Available';
