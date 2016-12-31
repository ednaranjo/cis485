<%-- 
    Document   : branchJSTL
    Created on : Dec 11, 2016, 8:45:28 PM
    Author     : Eduardo Naranjo <enaranjorivera@bmcc.cuny.edu>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <title>SELECT Operation</title>
    </head>
    <body>

        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/CIS485"
                           user="485user"  password="password"/>

        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from branch;
        </sql:query>

       

        <table border="1" width="50%">
            <tr>
                <th>Branch No</th>
                <th>Street</th>
                <th>City</th>
                <th>Postcode</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.branchno}"/></td>
                    <td><c:out value="${row.street}"/></td>
                    <td><c:out value="${row.city}"/></td>
                    <td><c:out value="${row.postcode}"/></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
