<%-- 
    Document   : log
    Created on : 9 Sep, 2019, 1:55:18 PM
    Author     : N.AMIRTHA SANJEEVINI
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="info.action"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
     <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Ease | Feed </title>

        
      
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

      

    </head>
    
        <%
            String mobile=request.getParameter("mobile");
           String pass=request.getParameter("password");
           String c1=null,c2=null,c3=null,name=null;
           action a =new action();
            String qry="select * from calm where mobile='"+mobile+"' and password='"+pass+"'";
              ResultSet rs=null;
              rs=a.act(qry);
              while(rs.next()){
    name=rs.getString("name");
    c1=rs.getString("char1");
    c2=rs.getString("char2");
    c3=rs.getString("char3");
}
              rs.last();
int row = rs.getRow();
rs.beforeFirst();
while(rs.next()){
    name=rs.getString("name");
    c1=rs.getString("char1");
    c2=rs.getString("char2");
    c3=rs.getString("char3");
}
              if(row==0){
            
        %>
         <script>alert("Please Check the Login credentials !")</script>
        <script>window.location.href = "login.html";</script>
      
        <%  }%>
     <body>
		
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Ease</strong> Home</h1>
                            <div class="description">
                            	<p>
	                            	<strong>Feed</strong></a></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	
                        	<form role="form" action="back.jsp" method="post" class="registration-form">
                        		<% 
                                            int j=1;
                                        Random r = new Random();
                                            int rand=r.nextInt(3);
                                            String common=null;
                                            switch(rand){
                                                case 0: common=c1; break;
                                                case 1: common=c2; break;
                                                case 2: common=c3; break;
                                                default: common=c1;
                                            }
                                        
                                        String qr="select * from feed where search like '%"+common+"%' ";
                                        ResultSet rt= a.act(qr);
                                        rt.last();
                                        int rows = rt.getRow();
                                        rt.beforeFirst();
                                        rows=rows+2;
                                        
                                        %>
                        		<fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Feed 1 / <%= rows %></h3>
		                            		<p>Here is Your Stress Busters ...</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-user"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
                                                
                                                <div class="form-group">
                                                    <center><img src="assets/one.png" height="70%" width="70%"></center></div>        <button type="button"  class="btn btn-next">Next</button>
				                    </div>
                                            </fieldset>
                                    <% 
                                             while(rt.next()){
                                                 j++;
                                                 String topic=rt.getString("topic");
                                                 String link=rt.getString("link");
                                                 
                                            
                                            %>
			                    
			                    <fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Step <%= j %> / <%= rows %></h3>
		                            		<p><%= topic %></p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-user"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                    	<div class="form-group">
                                                            <%= link %>	
				                        </div>
				                         <button type="button" class="btn btn-previous">Previous</button>
				                        <button type="button"  class="btn btn-next">Next</button>
				                    </div>
			                    </fieldset>
			                    <% } %>
			                    
			                    <fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Step <%= rows %> / <%= rows %></h3>
		                            		<p>Thank you!</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-unlock"></i>
		                        		</div>
		                            </div>
									<div class="form-bottom">
                                                                           <div class="form-group">
                                                                               <input type="hidden" name="name" value="<%= name  %>"/>
				                        	<label class="sr-only" for="form-last-name">How do you Like it ?</label>
				                        	<select name="feed" class="form-last-name form-control">
                                                                        <option value="nothing"> Rate us </option>
				                        		<option value="1">Poor </option>
                                                                        <option value="3"> Average</option>
                                                                        <option value="5">Great </option>
				                        	</select> 
				                        </div>
				                        
				                         <button type="button" class="btn btn-previous">Previous</button>
				                        <button type="submit" class="btn">Submit</button>
				                    </div>
		                            
			                    </fieldset>
		                    
		                    </form>
		                    
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


      
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        

    </body>

</html>
