# Write your MySQL query statement below
SELECT
    s.machine_id,
    ROUND(AVG(e.timestamp - s.timestamp), 3) AS processing_time
FROM
    Activity AS s
JOIN
    Activity AS e
ON 
    (s.machine_id, s.process_id) = (e.machine_id, e.process_id)
WHERE
    s.activity_type = 'start' AND
    e.activity_type = 'end'
GROUP BY
    s.machine_id;