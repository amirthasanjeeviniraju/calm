package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import info.action;

public final class log_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("     <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Ease | Feed </title>\n");
      out.write("\n");
      out.write("        \n");
      out.write("      \n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/bootstrap/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/font-awesome/css/font-awesome.min.css\">\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"assets/css/form-elements.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("        ");

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
            
        
      out.write("\n");
      out.write("         <script>alert(\"Please Check the Login credentials !\")</script>\n");
      out.write("        <script>window.location.href = \"login.jsp\";</script>\n");
      out.write("      \n");
      out.write("        ");
  }
      out.write("\n");
      out.write("     <body>\n");
      out.write("\t\t\n");
      out.write("        <div class=\"top-content\">\n");
      out.write("        \t\n");
      out.write("            <div class=\"inner-bg\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-8 col-sm-offset-2 text\">\n");
      out.write("                            <h1><strong>Ease</strong> Home</h1>\n");
      out.write("                            <div class=\"description\">\n");
      out.write("                            \t<p>\n");
      out.write("\t                            \t<strong>Feed</strong></a></p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6 col-sm-offset-3 form-box\">\n");
      out.write("                        \t\n");
      out.write("                        \t<form role=\"form\" action=\"back.jsp\" method=\"post\" class=\"registration-form\">\n");
      out.write("                        \t\t");
 
                                            int j=2;
                                        
                                        String qr="select * from feed where search like '%"+c1+"%' ";
                                        ResultSet rt= a.act(qr);
                                        rt.last();
                                        int rows = rt.getRow();
                                        rt.beforeFirst();
                                        rows=rows+2;
                                        
                                        
      out.write("\n");
      out.write("                        \t\t<fieldset>\n");
      out.write("\t\t                        \t<div class=\"form-top\">\n");
      out.write("\t\t                        \t\t<div class=\"form-top-left\">\n");
      out.write("\t\t                        \t\t\t<h3>Feed 1 / ");
      out.print( rows );
      out.write("</h3>\n");
      out.write("\t\t                            \t\t<p>Here is Your Stress Busters ...</p>\n");
      out.write("\t\t                        \t\t</div>\n");
      out.write("\t\t                        \t\t<div class=\"form-top-right\">\n");
      out.write("\t\t                        \t\t\t<i class=\"fa fa-user\"></i>\n");
      out.write("\t\t                        \t\t</div>\n");
      out.write("\t\t                            </div>\n");
      out.write("\t\t                            <div class=\"form-bottom\">\n");
      out.write("                                                \n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <center><img src=\"assets/one.png\" height=\"70%\" width=\"70%\"></center></div>        <button type=\"button\"  class=\"btn btn-next\">Next</button>\n");
      out.write("\t\t\t\t                    </div>\n");
      out.write("                                            </fieldset>\n");
      out.write("                                    ");
 
                                             while(rt.next()){
                                                 j++;
                                                 String topic=rt.getString("topic");
                                                 String link=rt.getString("link");
                                                 
                                            
                                            
      out.write("\n");
      out.write("\t\t\t                    \n");
      out.write("\t\t\t                    <fieldset>\n");
      out.write("\t\t                        \t<div class=\"form-top\">\n");
      out.write("\t\t                        \t\t<div class=\"form-top-left\">\n");
      out.write("\t\t                        \t\t\t<h3>Step ");
      out.print( j );
      out.write(" / ");
      out.print( rows );
      out.write("</h3>\n");
      out.write("\t\t                            \t\t<p>");
      out.print( topic );
      out.write("</p>\n");
      out.write("\t\t                        \t\t</div>\n");
      out.write("\t\t                        \t\t<div class=\"form-top-right\">\n");
      out.write("\t\t                        \t\t\t<i class=\"fa fa-user\"></i>\n");
      out.write("\t\t                        \t\t</div>\n");
      out.write("\t\t                            </div>\n");
      out.write("\t\t                            <div class=\"form-bottom\">\n");
      out.write("\t\t\t\t                    \t<div class=\"form-group\">\n");
      out.write("                                                            ");
      out.print( link );
      out.write("\t\n");
      out.write("\t\t\t\t                        </div>\n");
      out.write("\t\t\t\t                         <button type=\"button\" class=\"btn btn-previous\">Previous</button>\n");
      out.write("\t\t\t\t                        <button type=\"button\"  class=\"btn btn-next\">Next</button>\n");
      out.write("\t\t\t\t                    </div>\n");
      out.write("\t\t\t                    </fieldset>\n");
      out.write("\t\t\t                    ");
 } 
      out.write("\n");
      out.write("\t\t\t                    \n");
      out.write("\t\t\t                    <fieldset>\n");
      out.write("\t\t                        \t<div class=\"form-top\">\n");
      out.write("\t\t                        \t\t<div class=\"form-top-left\">\n");
      out.write("\t\t                        \t\t\t<h3>Step ");
      out.print( rows );
      out.write(" / ");
      out.print( rows );
      out.write("</h3>\n");
      out.write("\t\t                            \t\t<p>Thank you!</p>\n");
      out.write("\t\t                        \t\t</div>\n");
      out.write("\t\t                        \t\t<div class=\"form-top-right\">\n");
      out.write("\t\t                        \t\t\t<i class=\"fa fa-unlock\"></i>\n");
      out.write("\t\t                        \t\t</div>\n");
      out.write("\t\t                            </div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"form-bottom\">\n");
      out.write("                                                                           <div class=\"form-group\">\n");
      out.write("                                                                               <input type=\"hidden\" name=\"name\" value=\"");
      out.print( name  );
      out.write("\"/>\n");
      out.write("\t\t\t\t                        \t<label class=\"sr-only\" for=\"form-last-name\">How do you Like it ?</label>\n");
      out.write("\t\t\t\t                        \t<select name=\"feed\" class=\"form-last-name form-control\">\n");
      out.write("                                                                        <option value=\"nothing\"> Rate us </option>\n");
      out.write("\t\t\t\t                        \t\t<option value=\"1\">Poor </option>\n");
      out.write("                                                                        <option value=\"3\"> Average</option>\n");
      out.write("                                                                        <option value=\"5\">Great </option>\n");
      out.write("\t\t\t\t                        \t</select> \n");
      out.write("\t\t\t\t                        </div>\n");
      out.write("\t\t\t\t                        \n");
      out.write("\t\t\t\t                         <button type=\"button\" class=\"btn btn-previous\">Previous</button>\n");
      out.write("\t\t\t\t                        <button type=\"submit\" class=\"btn\">Submit</button>\n");
      out.write("\t\t\t\t                    </div>\n");
      out.write("\t\t                            \n");
      out.write("\t\t\t                    </fieldset>\n");
      out.write("\t\t                    \n");
      out.write("\t\t                    </form>\n");
      out.write("\t\t                    \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      \n");
      out.write("        <script src=\"assets/js/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <script src=\"assets/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery.backstretch.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/retina-1.1.0.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/scripts.js\"></script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
