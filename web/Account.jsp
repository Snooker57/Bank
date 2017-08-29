<%-- 
    Document   : PeronalBank
    Created on : 2017-4-27, 15:41:57
    Author     : snooker
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style='background-color: #ccccff'>
            <table border='1'>
                <tr>
                    <td width='20%'>
                        <image src='Image/logo1.jpg' style="width:100%;height:130px">
                    </td>
                    <td width='60%' style='background-color:#009999'> 
                        <h1 style="color:yellow;font-size:60;font-family:Lucida Handwriting">EARNEST BANK</h1>
                    </td>
                    <td width='20%'><h2 style="color: red">Service Hotline:8888</h2></td>
                </tr>
                <tr style='background-color:#009999'>
                    <td width='20%'></td>
                    <td width='60%'>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" name="Home" value= "Home" onclick="location.href='index.jsp'" style="background-color:#cc9900;width: 100px;height: 25px"/>
                        <input type="button" name="PB" value= "Rersonal Bank" onclick="location.href='PersonalBank.jsp'" style="background-color:#cc9900;width: 100px;height: 25px"/>
                        <input type="button" name="Loan" value= "Loan" onclick="location.href='Loan.jsp'" style="background-color:#cc9900;width: 100px;height: 25px"/>
                        <input type="button" name="Credit" value= "Credit" onclick="location.href='Credit.jsp'" style="background-color:#cc9900;width: 100px;height: 25px"/>
                        <input type="button" name="AU" value= "About Us" onclick="location.href='AboutUs.jsp'" style="background-color:#cc9900;width: 100px;height: 25px"/>
                    </td>
                    <td width='20%'></td>
                </tr>
                <tr>
                    <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                    <td width='60%' valign="top" style="height:450px ">
                        <%
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
                                    %>
                                    <form action="Transfer.jsp">
                                        <table align="center"  style="border-spacing:20px 10px;width:auto">
                                        <th colspan="2"><h2>Information</h2></th>
                                        <tr>
                                            <td>User Name</td>
                                            <td>
                                                <%= rs1.getString("user_name") %>
                                                <input type="text" hidden name="lname"value="<%= rs1.getString("user_name")%>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Email</td>
                                            <td><%= rs1.getString("email_id") %></td>
                                        </tr>
                                        <tr>
                                            <td>Contact Number</td>
                                            <td><%= rs1.getString("contact_num") %></td>
                                        </tr>
                                        <tr>
                                            <td>Address</td>
                                            <td><%= rs1.getString("address") %></td>
                                        </tr>
                                        <tr>
                                            <td>Bank Account Number</td>
                                            <td>
                                                <%= rs1.getString("b_account_num")%>
                                                <input type="text" hidden name="lban"value="<%= rs1.getString("b_account_num")%>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Bank Account Type</td>
                                            <td>
                                                <%= rs1.getString("account_type") %>
                                                <input type="text" hidden name="lbat"value="<%= rs1.getString("account_type")%>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Balance</td>
                                            <td>
                                                <%= rs1.getString("min_balance") %>
                                                <input type="text" hidden name="ba"value="<%= rs1.getString("min_balance")%>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right"><input type="submit" value="Transfer" style="background-color:#009999;width: 80px;height: 25px"></td>
                                            <td align="left">
                                                <input type="button" value= "Record " onclick="location.href ='Record.jsp?p1=<%=rs1.getString("b_account_num")%>'" style="background-color: #009999;width: 80px;height: 25px"/>
                                            </td>
                                        </tr>
                                    </table>  
                                    <hr>
                                    </form> 
                                    <%
                                    flag=1;
                                }
                                if(flag==0)
                                {
                                    %>
                                    <p>Sorry!...Please go back to <b>Personal Bank</b> Page to  login again or register a new bank account.</p>
                                    <%
                                }
                            } 
                            catch(Exception e) {}
                        %>
                    </td>
                    <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>