-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT DepartmentName, COUNT(Enrolment.EnrolmentId) AS TotalEnrolments
FROM Department LEFT JOIN Course ON Department.DepartmentId = Course.DepartmentId
LEFT JOIN Enrolment ON Course.CourseId = Enrolment.CourseId
GROUP BY DepartmentName;
