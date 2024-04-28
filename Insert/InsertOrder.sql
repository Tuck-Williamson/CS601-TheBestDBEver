SET SCHEMA 'thebestdbever';

INSERT INTO thebestdbever.order_item(quantity, itemid, topid, resid, waitedon, shiftid)
VALUES (1, 4, 3, 1, '922853432', 1), (1, 5, 3, 1, '922853432', 1), (2, 4, 10, 2, '922853432', 1),
       (2, 8, 10, 2, '922853432', 1), (3, 7, 10, 2, '922853432', 1),(2, 4, 10, 2, '922853432', 1),
       (2, 4, 4, 3, '050101581', 53), (3, 6, 4, 3, '050101581', 53), (3, 6, 3, 5, '050101581', 53),
       (2, 5, 4, 3, '050101581', 53);




SELECT *
FROM works_on_shift
         JOIN thebestdbever.shift s on s.shiftid = works_on_shift.shiftid
         JOIN thebestdbever.employee e on e.ssn = works_on_shift.ssn
WHERE date = '2024-05-01' AND pos = 'Waiter';