# Write your MySQL query statement below

# Inefficient Approach
-- SELECT
--     e.name
-- FROM
--     Employee AS e
-- LEFT JOIN
--     Employee AS m
-- ON
--     e.id = m.managerId
-- GROUP BY
--     e.id
-- HAVING
--     COUNT(e.id) >= 5;

# Efficient Approach
SELECT
    e.name
FROM
    Employee AS e
JOIN
    (
        SELECT
            managerId
        FROM
            Employee
        GROUP BY
            managerId
        HAVING
            COUNT(managerId) >= 5
    ) AS m
ON
    e.Id = m.managerId;