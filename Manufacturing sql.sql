create database manufacturing1;
SELECT * FROM dataset;

#KPI 1
select SUM(Manufactured) AS Total_Manufactured_Quantity
from dataset;

#KPI 2
SELECT SUM(Rejected) AS Total_Rejected_Quantity
from dataset;


#KPI 3
SELECT SUM(Processed) AS Total_Processed_Quantity
from dataset;

#KPI 4
SELECT SUM(Wastage) AS Total_Wastage_Quantity
from dataset;

#KPI 5
SELECT EMPCode, SUM(Rejected) AS total_rejected_quantity
FROM dataset
GROUP BY EMPCode
ORDER BY total_rejected_quantity DESC;


#KPI 6

SELECT MachineCode, SUM(Rejected) AS total_rejected_quantity
FROM dataset
GROUP BY MachineCode;

SELECT MachineName, SUM(Rejected) AS total_rejected_quantity
FROM dataset
GROUP BY MachineName;


#KPI 7

SELECT 
    Doc_Date,
    SUM(produced) AS total_produced
FROM 
    dataset
GROUP BY 
    Doc_Date
ORDER BY 
    Doc_Date;

#KPI 8

SELECT 
    SUM(Produced) AS total_produced,
    SUM(Rejected) AS total_rejected
FROM 
    dataset;



#KPI 9

SELECT 
    DepartmenName,
    SUM(Produced) AS total_produced,
    SUM(Rejected) AS total_rejected
FROM 
    dataset
GROUP BY 
    DepartmenName;


#KPI 10

SELECT EmpName, SUM(Rejected) AS total_rejected_quantity
FROM dataset
GROUP BY EmpName;

