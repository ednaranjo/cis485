<%-- 
    Document   : student
    Created on : Dec 11, 2016, 9:33:44 PM
    Author     : Eduardo Naranjo <enaranjorivera@bmcc.cuny.edu>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Management</title>
    </head>
    <body>
        <h3>Add Student</h3>

        <form action="StudentController.do" method="post">
            <fieldset>
                <table>
                    <tr>
                        <td><label for="studentId">Student ID</label></td>
                        <td><input type="text"
                                   name="studentId" value="<c:out value="${student.studentId}" />"
                                   readonly="readonly" placeholder="Student ID" /></td>
                    </tr>
                    <tr>
                        <td><label for="firstName">First Name</label></td>
                        <td><input type="text"
                                   name="firstName" value="<c:out value="${student.firstName}" />"
                                   placeholder="First Name" /></td>
                    </tr>
                    <tr>
                        <td><label for="lastName">Last Name</label></td>
                        <td><input type="text"
                                   name="lastName" value="<c:out value="${student.lastName}" />"
                                   placeholder="Last Name" /></td>
                    </tr>
                    <tr>
                        <td><label for="course">Course</label></td>
                        <td><input type="text" name="course"
                                   value="<c:out value="${student.course}" />" placeholder="Course" /></td>
                    </tr>
                    <tr>
                        <td><label for="year">Year</label></td>
                        <td><input type="text" name="year"
                                   value="<c:out value="${student.year}" />" placeholder="Year" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </table>

            </fieldset>
        </form>
                    <a href="index.jsp">List Students</a>
    </body>
</html>
