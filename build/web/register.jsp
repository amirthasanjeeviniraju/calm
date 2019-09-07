<%-- 
    Document   : register
    Created on : 7 Sep, 2019, 12:32:09 PM
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
            String i,q1,q2,q3,c1,c2,c3;
            int b;
           String name=request.getParameter("name");
           String mobile=request.getParameter("mobile");
           String password=request.getParameter("password");
           String ques1=request.getParameter("ques1");
           String ques2=request.getParameter("ques2");
           String ques3=request.getParameter("ques3");
           
           
                      
           action a=new action();
           try{
              q1="select * from answer where options='"+ques1+"'";
              q2="select * from answer where options='"+ques2+"'";
              q3="select * from answer where options='"+ques3+"'";
              c1=a.fun(q1);
              c2=a.fun(q2);
              c3=a.fun(q3);
               i="insert into calm(name,mobile,password,char1,char2,char3) values('"+name+"','"+mobile+"','"+password+"','"+c1+"','"+c2+"','"+c3+"')";
               b=a.insert(i);
           }
           catch(Exception e){
               out.println("error"+e);
           }
          
        %>
         <h1>Hello </h1>
    </body>
</html>
