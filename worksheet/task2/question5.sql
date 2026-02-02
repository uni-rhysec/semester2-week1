-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT Student.StudentId, FirstName, LastName, SUM(Course.credits) AS TotalCreditsPassed
FROM Student LEFT JOIN Enrolment ON Student.StudentId = Enrolment.StudentId
LEFT JOIN Course ON Enrolment.CourseId = Course.CourseId
WHERE Enrolment.Grade >= 40
GROUP BY Student.StudentId;
