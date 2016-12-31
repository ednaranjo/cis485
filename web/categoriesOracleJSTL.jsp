<%-- 
    Document   : branchOracleJSTL
    Created on : Dec 14, 2016, 11:13:37 PM
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
        <title>Branch Page</title>
    </head>
    <body>
        <h1>Categories from Oracle</h1>

        <sql:setDataSource var="snapshot" driver="oracle.jdbc.OracleDriver"
                           url="jdbc:oracle:thin:@localhost:1521:orcl12c"
                           user="SYSTEM"  password="oracle"/>

        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from categories
        </sql:query>

        <table border="1" width="50%">
            <tr>
                <th>Category ID</th>
                <th>Category Name</th>
                <th>Description</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.categoryid}"/></td>
                    <td><c:out value="${row.categoryname}"/></td>
                    <td><c:out value="${row.description}"/></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
