-- 10 interesting queries
-- 1) List all active menu items with their prices:
SELECT Title, Price
FROM thebestdbever.menu_item
WHERE Active = TRUE;

-- 2) Retrieve the total number of shifts worked by each employee:
SELECT e.FirstName, e.LastName, COUNT(ws.shiftid) AS TotalShifts
FROM thebestdbever.employee e
LEFT JOIN thebestdbever.works_on_shift ws ON e.SSN = ws.ssn
GROUP BY e.FirstName, e.LastName;

-- 3) List the top 5 menu items by sales quantity:
SELECT mi.Title, SUM(oi.Quantity) AS TotalQuantity
FROM thebestdbever.order_item oi
JOIN thebestdbever.menu_item mi ON oi.ItemID = mi.ItemID
GROUP BY mi.Title
ORDER BY TotalQuantity DESC
LIMIT 5;

-- 4) Find the average party size for reservations on a specific date:
SELECT AVG(PartySize) AS AvgPartySize
FROM thebestdbever.reservation
WHERE Date = 'YYYY-MM-DD';

-- 5) Identify the shift with the highest number of employees working:
SELECT shiftid, COUNT(ssn) AS TotalEmployees
FROM thebestdbever.works_on_shift
GROUP BY shiftid
ORDER BY TotalEmployees DESC
LIMIT 1;

-- 6) List all reservations made for VIP customers:
SELECT *
FROM thebestdbever.reservation r
JOIN thebestdbever.customer c ON r.CustomerID = c.CustomerID
WHERE c.VIP = TRUE;

-- 7) Retrieve the total revenue generated from orders in a specific shift:
SELECT SUM(mi.Price * oi.Quantity) AS TotalRevenue
FROM thebestdbever.order_item oi
JOIN thebestdbever.menu_item mi ON oi.ItemID = mi.ItemID
WHERE oi.ShiftID = specified_shift_id;

-- 8) List all employees who have worked as a Manager and their shift details:
SELECT e.FirstName, e.LastName, s.Date, s.StartTime, s.Duration
FROM thebestdbever.employee e
JOIN thebestdbever.works_on_shift ws ON e.SSN = ws.ssn
JOIN thebestdbever.shift s ON ws.shiftid = s.ShiftID
WHERE e.Pos = 'Manager';

-- 9) Calculate the average revenue per customer for a specific date range:
SELECT AVG(total_revenue) AS AvgRevenuePerCustomer
FROM (
         SELECT c.CustomerID, SUM(mi.Price * oi.Quantity) AS total_revenue
         FROM thebestdbever.customer c
                  JOIN thebestdbever.reservation r ON c.CustomerID = r.CustomerID
                  JOIN thebestdbever.order_item oi ON r.ResID = oi.ResID
                  JOIN thebestdbever.menu_item mi ON oi.ItemID = mi.ItemID
         WHERE r.Date BETWEEN 'start_date' AND 'end_date'
         GROUP BY c.CustomerID
     ) AS revenue_per_customer;


-- 10) Identify the most popular table type (e.g., booth, bar, etc.) based on the number of reservations:
SELECT t.Type, COUNT(r.ReservationID) AS ReservationCount
FROM thebestdbever.reservation r
         JOIN thebestdbever.top t ON r.TopID = t.TopID
GROUP BY t.Type
ORDER BY ReservationCount DESC
    LIMIT 1;

-- 11) List the top 10 highest-spending customers along with their total expenditure:
SELECT c.LastName, c.FirstName, SUM(mi.Price * oi.Quantity) AS TotalExpenditure
FROM thebestdbever.customer c
         JOIN thebestdbever.reservation r ON c.CustomerID = r.CustomerID
         JOIN thebestdbever.order_item oi ON r.ResID = oi.ResID
         JOIN thebestdbever.menu_item mi ON oi.ItemID = mi.ItemID
GROUP BY c.LastName, c.FirstName
ORDER BY TotalExpenditure DESC
    LIMIT 10;

-- 12) Calculate the total revenue generated during lunch and dinner hours separately:
SELECT
    CASE
        WHEN EXTRACT(HOUR FROM s.StartTime) < 15 THEN 'Lunch'
        ELSE 'Dinner'
        END AS ShiftType,
    SUM(mi.Price * oi.Quantity) AS TotalRevenue
FROM thebestdbever.shift s
         JOIN thebestdbever.order_item oi ON s.ShiftID = oi.ShiftID
         JOIN thebestdbever.menu_item mi ON oi.ItemID = mi.ItemID
GROUP BY ShiftType;

-- 13) Find the average wait time for seating a reservation party:
SELECT AVG(EXTRACT(EPOCH FROM (r.SeatedTime - r.Time))) AS AvgWaitTimeInSeconds
FROM thebestdbever.reservation r;

-- 14) List the top 5 busiest days in terms of reservations:
SELECT r.Date, COUNT(r.ReservationID) AS ReservationCount
FROM thebestdbever.reservation r
GROUP BY r.Date
ORDER BY ReservationCount DESC
    LIMIT 5;

-- 15) Calculate the average turnover rate of tables (how many times they are occupied) during a specific period:
SELECT AVG(table_turnover) AS AvgTableTurnoverRate
FROM (
         SELECT r.TopID, COUNT(DISTINCT r.ReservationID) AS table_turnover
         FROM thebestdbever.reservation r
         WHERE r.Date BETWEEN 'start_date' AND 'end_date'
         GROUP BY r.TopID
     ) AS table_turnover_rates;






-- Just checking the functionality of the business constraint trigger checks.
SELECT *
    FROM works_on_shift
             INNER JOIN thebestdbever.shift s ON s.shiftid = works_on_shift.shiftid
             INNER JOIN thebestdbever.employee e ON e.ssn = works_on_shift.ssn
    WHERE headposition = 'Sommelier'
    LIMIT 20;

SELECT *
    FROM works_on_shift
             INNER JOIN thebestdbever.shift s ON s.shiftid = works_on_shift.shiftid
             INNER JOIN thebestdbever.employee e ON e.ssn = works_on_shift.ssn
    WHERE e.pos = 'Sommelier' AND headposition <> e.pos
    LIMIT 20;

SELECT wos.shiftid, COUNT(DISTINCT headposition) as filledPos FROM works_on_shift as wos
         INNER JOIN thebestdbever.shift s ON s.shiftid = wos.shiftid
         INNER JOIN thebestdbever.employee e ON e.ssn = wos.ssn
        GROUP BY wos.shiftid
LIMIT 20
;
