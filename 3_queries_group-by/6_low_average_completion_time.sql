SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
GROUP BY students.id, students.end_date
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration) AND students.end_date IS NULL 
ORDER BY AVG(assignment_submissions.duration);
