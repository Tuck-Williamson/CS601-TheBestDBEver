
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
