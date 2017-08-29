package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javafx.scene.control.Alert;
import java.sql.*;

public final class RegisterS_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style='background-color: #ccccff'>\n");
      out.write("            <table border='1'>\n");
      out.write("                <tr>\n");
      out.write("                    <td width='20%'>\n");
      out.write("                        <image src='Image/logo1.jpg' style=\"width:100%;height:130px\">\n");
      out.write("                    </td>\n");
      out.write("                    <td width='60%' style='background-color:#009999'> \n");
      out.write("                        <h1 style=\"color:yellow;font-size:60;font-family:Lucida Handwriting\">EARNEST BANK</h1>\n");
      out.write("                    </td>\n");
      out.write("                    <td width='20%'><h2 style=\"color: red\">Service Hotline:8888</h2></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr style='background-color:#009999'>\n");
      out.write("                    <td width='20%'></td>\n");
      out.write("                    <td width='60%'>\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                        &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                        <input type=\"button\" name=\"Home\" value= \"Home\" onclick=\"location.href='index.jsp'\" style=\"background-color:#cc9900;width: 100px;height: 25px\"/>\n");
      out.write("                        <input type=\"button\" name=\"PB\" value= \"Rersonal Bank\" onclick=\"location.href='PersonalBank.jsp'\" style=\"background-color:#cc9900;width: 100px;height: 25px\"/>\n");
      out.write("                        <input type=\"button\" name=\"Loan\" value= \"Loan\" onclick=\"location.href='Loan.jsp'\" style=\"background-color:#cc9900;width: 100px;height: 25px\"/>\n");
      out.write("                        <input type=\"button\" name=\"Credit\" value= \"Credit\" onclick=\"location.href='Credit.jsp'\" style=\"background-color:#cc9900;width: 100px;height: 25px\"/>\n");
      out.write("                        <input type=\"button\" name=\"AU\" value= \"About Us\" onclick=\"location.href='AboutUs.jsp'\" style=\"background-color:#cc9900;width: 100px;height: 25px\"/>\n");
      out.write("                    </td>\n");
      out.write("                    <td width='20%'></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td width='20%' style=\"background-image:url('Image/img20[1].gif')\">\n");
      out.write("                    </td>\n");
      out.write("                    <td width='60%' valign=\"top\" style=\"height: 450px\">\n");
      out.write("                        ");

                            int flag=0,flag1=0;
                            request.setCharacterEncoding("UTF-8"); 
                            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=OnlineBankSystem","sa","123456"); 
                            try {
                                PreparedStatement pstmt2=null;
                                String query2=null;
                                query2="select * from CustomerInfo";
                                pstmt2=con.prepareStatement(query2);
                                ResultSet rs=pstmt2.executeQuery();
                                while(rs.next())
                                {
                                    if(rs.getString("b_account_num").equals(request.getParameter("banum")))
                                    {
                                        out.println("Sorry!...This bank account has been registered,please login directly");
                                        flag1=1;
                                    }
                                }
                            
                            if(flag1==0)
                            {
                                if(flag==0)
                                {
                                    try 
                                    {
                                        PreparedStatement pstmt=null;
                                        String query=null;
                                        flag++;
                                        query="insert into CustomerInfo values(?,?,?,?,?,?,?)";
                                        pstmt=con.prepareStatement(query);
                                        pstmt.setString(1, request.getParameter("uname"));
                                        pstmt.setString(2, request.getParameter("upass"));
                                        pstmt.setString(3, request.getParameter("address"));
                                        pstmt.setString(5, request.getParameter("email"));
                                        pstmt.setString(6, request.getParameter("cnum"));
                                        pstmt.setString(4, request.getParameter("banum"));
                                        if(request.getParameter("batype").equals("ca"))
                                            pstmt.setString(7, "Current account");
                                        else
                                            pstmt.setString(7, "Savings account");
                                        pstmt.executeQuery();
                                    } 
                                    catch (Exception e) {
                                        
      out.write("\n");
      out.write("                                       <p>OK,Please go back to <b>Personal Bank</b> Page to  login.</p>\n");
      out.write("                                       ");

                                    }
                                }
                                if(flag!=0)
                                {
                                    PreparedStatement pstmt1=null;
                                    String query1=null;
                                    query1="insert into AccountInfo values(?,?,?,?)";
                                    pstmt1=con.prepareStatement(query1);
                                    if(request.getParameter("batype").equals("ca"))
                                    {
                                        pstmt1.setString(1, "Current account");
                                        pstmt1.setString(3, "0.35");
                                    }
                                    else
                                    {
                                        pstmt1.setString(1, "Savings account");
                                        pstmt1.setString(3, "1.5");

                                    }
                                    pstmt1.setString(2, "5000");
                                    pstmt1.setString(4, request.getParameter("banum"));
                                    pstmt1.execute();
                                }
                            }       
                        }
                        catch (Exception e) {} 
                    
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td width='20%' style=\"background-image:url('Image/img20[1].gif')\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
