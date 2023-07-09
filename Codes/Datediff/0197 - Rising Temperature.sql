# Write your MySQL query statement below
SELECT
    t.id
FROM
    Weather AS t
LEFT JOIN
    Weather AS y
ON
    DATEDIFF(t.recordDate, y.recordDate) = 1
WHERE
    t.temperature > y.temperature;