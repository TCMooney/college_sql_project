USE college_university_schema;

SELECT courses_title AS "Courses", students_name AS "Student"
FROM courses c
LEFT JOIN students s
ON c.courses_id = s.students_courses_id
ORDER BY c.courses_id;