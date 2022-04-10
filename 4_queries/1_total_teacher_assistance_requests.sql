SELECT teachers.name as teacher_name, count(assistance_requests.teacher_id)
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';

-- COMPASS ANSWER:

-- SELECT count(assistance_requests.*) as total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;