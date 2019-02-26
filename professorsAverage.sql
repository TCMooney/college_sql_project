USE college_university_schema;

SELECT AVG(grades_values) AS "Average Grades", professors_name AS "Student"
FROM grades g
LEFT JOIN students s
ON g.grades_id = s.students_grades_id
LEFT JOIN courses c
ON s.students_courses_id = c.courses_id
LEFT JOIN professors p
ON c.courses_professors_id = p.professors_id
GROUP BY professors_name;