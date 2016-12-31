<%-- 
    Document   : customersOracle
    Created on : Dec 15, 2016, 9:58:02 PM
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
        <title>Customers</title>
    </head>
    <body>
        
        <h1>Customers from Oracle</h1>

        <sql:setDataSource var="snapshot" driver="oracle.jdbc.OracleDriver"
                           url="jdbc:oracle:thin:@localhost:1521:orcl12c"
                           user="SYSTEM"  password="oracle"/>

        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from customers
            where country = 'USA'
        </sql:query>

        <table border="1">
            <tr>
                <th>Customer ID</th>
                <th>Customer Name</th>
                <th>Contact Name</th>
                <th>Address</th>
                <th>City</th>
                <th>PostCode</th>
                <th>Country</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.customerid}"/></td>
                    <td><c:out value="${row.customername}"/></td>
                    <td><c:out value="${row.contactname}"/></td>
                    <td><c:out value="${row.address}"/></td>
                    <td><c:out value="${row.city}"/></td>
                    <td><c:out value="${row.postalcode}"/></td>
                    <td><c:out value="${row.country}"/></td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
