<%-- 
    Document   : index
    Created on : Oct 19, 2020, 6:52:41 PM
    Author     : KEY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Home</h1>
        Welcome : <%= session.getAttribute("username")%>
        <a href="LogoutController?logout=ok">logout</a>
    </body>
</html>
