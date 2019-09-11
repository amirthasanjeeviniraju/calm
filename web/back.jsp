<%-- 
    Document   : back
    Created on : 9 Sep, 2019, 1:46:41 PM
    Author     : N.AMIRTHA SANJEEVINI
--%>

<%@page import="info.action"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String feed=request.getParameter("feed");
            String name=request.getParameter("name");
            action n=new action();
               String qry="update calm set feed='"+feed+"' where name='"+name+"' ";
               int i=n.insert(qry);

        %>
        <script>alert("Thank You for your feedback ");</script>
        <script>window.location.href = "login.html";</script>
    </body>
</html>
