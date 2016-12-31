<%-- 
    Document   : listBranches
    Created on : Dec 11, 2016, 10:45:37 PM
    Author     : Eduardo Naranjo <enaranjorivera@bmcc.cuny.edu>
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show All Branches</title>
    </head>
    <body>
        <h3>Branch List</h3>
        
        <table border="1">
            <thead>
                <tr>
                    <th>Branch No</th>
                    <th>Street</th>
                    <th>City</th>
                    <th>Post Code</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${branches}" var="branch">
                    <tr>
                        <td><c:out value="${branch.branchno}" /></td>
                        <td><c:out value="${branch.street}" /></td>
                        <td><c:out value="${branch.city}" /></td>
                        <td><c:out value="${branch.postcode}" /></td>
                        <td><a
                                href="BranchController.do?action=edit&branchNo=<c:out value="${branch.branchno}"/>">Update</a></td>
                        <td><a
                                href="BranchController.do?action=delete&branchNo=<c:out value="${branch.branchno}"/>">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <p>
            <a href="BranchController.do?action=insert">Add Branch</a>
        </p>
        
    </body>
</html>
