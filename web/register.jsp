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
            String i,q1,q2,q3,c1,c2,c3;
            int b;
           String name=request.getParameter("name");
           String mobile=request.getParameter("mobile");
           String password=request.getParameter("password");
           String ques1=request.getParameter("ques2");
           String ques2=request.getParameter("ques3");
           String ques3=request.getParameter("ques4");
           
           
                      
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
                        	
                        	<form role="form" action="register.jsp" method="post" class="registration-form">
                        		<% 
                                          
                                        String qry="select * from feed where search like %"+c1+"% ";
                                        %>
                        		<fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Step 1 / 5</h3>
		                            		<p>Tell us who you are:</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-user"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-first-name">Name</label>
				                        	<input type="text" name="name" placeholder="Your Name" class="form-first-name form-control" id="name">
				                        </div>
				                        
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-last-name">Mobile Number</label>
				                        	<input type="text" id="mobile" name="mobile" placeholder="Mobile Number" class="form-last-name form-control" >
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-last-name">Password</label>
				                        	<input type="password" name="password" placeholder="Set Password" class="form-last-name form-control" id="password">
				                        </div>
										
				                        <button type="button"  class="btn btn-next">Next</button>
				                    </div>
                                            </fieldset>
                                    <% 
                                            String qry;
                                            ResultSet rs;
                                            Random r = new Random();
                                            int i=1;
                                            int rand=r.nextInt(3);
                                            qry="select * from questions where qid='"+rand+"'";
                                            action n=new action();
                                            rs=n.act(qry);
                                             while(rs.next()){
                                                 i++;
                                                 String question=rs.getString("question");
                                                 String option1=rs.getString("option1");
                                                 String option2=rs.getString("option2");
                                                 String option3=rs.getString("option3");
                                            
                                            %>
			                    
			                    <fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Step <%= i %> / 5</h3>
		                            		<p>Question</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-user"></i>
		                        		</div>
		                            </div>
		                            <div class="form-bottom">
				                    	<div class="form-group">
				                    		<P><%= question %></P>
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-last-name">Options</label>
				                        	<select name="ques<%=i %>" class="form-last-name form-control">
                                                                        <option value="nothing"> Select any one </option>
				                        		<option value="<%= option1 %>"><%= option1 %> </option>
                                                                        <option value="<%= option2 %>"> <%= option2 %></option>
                                                                        <option value="<%= option3 %>"><%= option3 %> </option>
				                        	</select> 
				                        </div>
				                         <button type="button" class="btn btn-previous">Previous</button>
				                        <button type="button"  class="btn btn-next">Next</button>
				                    </div>
			                    </fieldset>
			                    <% } %>
			                    
			                    <fieldset>
		                        	<div class="form-top">
		                        		<div class="form-top-left">
		                        			<h3>Step 5 / 5</h3>
		                            		<p>Thank you!</p>
		                        		</div>
		                        		<div class="form-top-right">
		                        			<i class="fa fa-unlock"></i>
		                        		</div>
		                            </div>
									<div class="form-bottom">
                                                                            <h3> "Have a happy time with ease" </h3>
				                         <button type="button" class="btn btn-previous">Previous</button>
				                        <button type="submit" class="btn">Register</button>
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

