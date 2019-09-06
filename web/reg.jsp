<%-- 
    Document   : reg
    Created on : 5 Sep, 2019, 12:50:41 PM
    Author     : N.AMIRTHA SANJEEVINI
--%>

<%@page import="info.action"%>
<%@page import="info.ease"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String i;
            int b;
           String Name=request.getParameter("Name");
           String Email=request.getParameter("Email");
           String Phone=request.getParameter("Phone");
           action a=new action();
           try{
               i="insert into calm(Name,Email,Phone) values('"+Name+"','"+Email+"','"+Phone+"')";
               b=a.insert(i);
           }
           catch(Exception e){
               out.println("error"+e);
           }
          
        %>
    </body>
</html>
