SELECT count(assistance_requests.*) as total_assistance_requests, students.name as student_name
FROM assistance_requests
JOIN students ON students.id = student_id
GROUP BY students.name
HAVING students.name = 'Elliot Dickinson';

-- COMPASS ANSWER:

-- SELECT count(assistance_requests.*) as total_assistances, students.name
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;