USE college_university_schema;

SELECT MAX(grades_values) AS "Average Grades", students_name AS "Student"
FROM grades g
LEFT JOIN students s
ON g.grades_id = s.students_grades_id
LEFT JOIN courses c
ON s.students_courses_id = c.courses_id
GROUP BY students_name;