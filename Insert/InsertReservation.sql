SET SCHEMA 'thebestdbever';

INSERT INTO thebestdbever.reservation(customerid, date, time, partysize, occasion, comment, seatedtime, topid)
VALUES (1, '2024-03-01', '10:30 am', 2, NULL, NULL, '10:30 am', 3), (3, '2024-03-01', '12:30 pm', 4, NULL, NULL, '12:30 pm', 10),
       (6, '2024-04-01', '10:30 am', 8, NULL, NULL, '10:30 am', 4), (8, '2024-03-01', '4:00 pm', 2, NULL, NULL, '4:00 pm', 3),
       (2, '2024-03-01', '1:30 pm', 2, NULL, NULL, '1:30 pm', 3), (20, '2024-03-01', '3:30 pm', 12, NULL, NULL, '3:30 pm', 7),
       (13, '2024-04-01', '10:30 am', 2, NULL, NULL, '10:30 am', 3), (10, '2024-04-01', '12:30 pm', 2, NULL, NULL, '12:30 pm', 3),
       (14, '2024-04-01', '1:00 pm', 2, NULL, NULL, '1:00 pm', 3), (15, '2024-04-01', '1:00 pm', 2, NULL, NULL, '1:00 pm', 10);