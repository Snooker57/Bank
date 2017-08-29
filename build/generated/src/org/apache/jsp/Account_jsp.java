package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Account_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                    <td width='60%' valign=\"top\" style=\"height:450px \">\n");
      out.write("                        ");

                            int flag=0;
                            request.setCharacterEncoding("UTF-8");
                            String uname=request.getParameter("uname");
                            String pass=request.getParameter("upass");
                            try{
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=OnlineBankSystem","sa","123456");
                                PreparedStatement pstmt1=null;
                                String query1=null;
                                query1="select * from CustomerInfo c join AccountInfo a on c.b_account_num=a.b_account_num where user_name=? and password=? ";
                                pstmt1=con.prepareStatement(query1);
                                pstmt1.setString(1, uname);
                                pstmt1.setString(2, pass);
                                ResultSet rs1=pstmt1.executeQuery();
                                while(rs1.next())
                                {
                                    
      out.write("\n");
      out.write("                                    <form action=\"Transfer.jsp\">\n");
      out.write("                                        <table align=\"center\"  style=\"border-spacing:20px 10px;width:auto\">\n");
      out.write("                                        <th colspan=\"2\"><h2>Information</h2></th>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>User Name</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
      out.print( rs1.getString("user_name") );
      out.write("\n");
      out.write("                                                <input type=\"text\" hidden name=\"lname\"value=\"");
      out.print( rs1.getString("user_name"));
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Email</td>\n");
      out.write("                                            <td>");
      out.print( rs1.getString("email_id") );
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Contact Number</td>\n");
      out.write("                                            <td>");
      out.print( rs1.getString("contact_num") );
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Address</td>\n");
      out.write("                                            <td>");
      out.print( rs1.getString("address") );
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Bank Account Number</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
      out.print( rs1.getString("b_account_num"));
      out.write("\n");
      out.write("                                                <input type=\"text\" hidden name=\"lban\"value=\"");
      out.print( rs1.getString("b_account_num"));
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Bank Account Type</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
      out.print( rs1.getString("account_type") );
      out.write("\n");
      out.write("                                                <input type=\"text\" hidden name=\"lbat\"value=\"");
      out.print( rs1.getString("account_type"));
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>Balance</td>\n");
      out.write("                                            <td>\n");
      out.write("                                                ");
      out.print( rs1.getString("min_balance") );
      out.write("\n");
      out.write("                                                <input type=\"text\" hidden name=\"ba\"value=\"");
      out.print( rs1.getString("min_balance"));
      out.write("\">\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td align=\"right\"><input type=\"submit\" value=\"Transfer\" style=\"background-color:#009999;width: 80px;height: 25px\"></td>\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                <input type=\"button\" value= \"Record \" onclick=\"location.href ='Record.jsp?p1=");
      out.print(rs1.getString("b_account_num"));
      out.write("'\" style=\"background-color: #009999;width: 80px;height: 25px\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>  \n");
      out.write("                                    <hr>\n");
      out.write("                                    </form> \n");
      out.write("                                    ");

                                    flag=1;
                                }
                                if(flag==0)
                                {
                                    
      out.write("\n");
      out.write("                                    <p>Sorry!...Please go back to <b>Personal Bank</b> Page to  login again or register a new bank account.</p>\n");
      out.write("                                    ");

                                }
                            } 
                            catch(Exception e) {}
                        
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td width='20%' style=\"background-image:url('Image/img20[1].gif')\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
