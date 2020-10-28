<%-- 
    Document   : login
    Created on : Oct 19, 2020, 6:53:12 PM
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
        <%
            Cookie[] listCookie = request.getCookies();
            String user = "";
            String pass = "";
            int co = 0;
            if (listCookie != null) {
                while (co < listCookie.length) {
                    if (listCookie[co].getName().equals("user")) {
                        user = listCookie[co].getValue();
                    }
                    if (listCookie[co].getName().equals("pass")) {
                        pass = listCookie[co].getValue();
                    }
                    co++;
                }

            }
        %>
        ${error}
        <h1>Login</h1>
        <form action="LoginController" method="POST">
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="usernameField" value="<%out.print(user);%>"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="passwordField" value="<%out.print(pass);%>" />      </td>
                </tr>
                <tr>
                    <td> <input type="checkbox" name="rememberCheckBox" value="ON" />Remember to me</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
