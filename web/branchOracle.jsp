<%-- 
    Document   : branchOracle
    Created on : Dec 15, 2016, 9:44:47 PM
    Author     : Eduardo Naranjo <enaranjorivera@bmcc.cuny.edu>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <h1>Branches from Oracle</h1>

        <sql:setDataSource var="snapshot" driver="oracle.jdbc.OracleDriver"
                           url="jdbc:oracle:thin:@localhost:1521:orcl12c"
                           user="SYSTEM"  password="oracle"/>

        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from branch
        </sql:query>

        <table border="1" width="50%">
            <tr>
                <th>Branch No</th>
                <th>Street</th>
                <th>City</th>
                <th>PostCode</th>
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
