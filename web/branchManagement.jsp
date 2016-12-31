<%-- 
    Document   : branchManagement
    Created on : Dec 11, 2016, 11:02:20 PM
    Author     : Eduardo Naranjo <enaranjorivera@bmcc.cuny.edu>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dream Home</h1>
        <jsp:forward page="/BranchController?action=listBranches"></jsp:forward>
    </body>
</html>
