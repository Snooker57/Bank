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
                    <td width='60%' valign="top" style="height: 450px">
                        <%
                            int flag=0;
                            request.setCharacterEncoding("UTF-8"); 
                            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=OnlineBankSystem","sa","123456"); 
                            try {
                                flag++;
                                PreparedStatement pstmt=null;
                                String query=null;
                                query="insert into TransactionDetails values(?,?,?,?,?,?)";
                                pstmt=con.prepareStatement(query);
                                pstmt.setString(1, request.getParameter("pa"));
                                pstmt.setString(2, request.getParameter("pr"));
                                pstmt.setString(3, request.getParameter("at"));
                                pstmt.setString(4, request.getParameter("am"));
                                pstmt.setString(5, request.getParameter("date"));
                                pstmt.setString(6, request.getParameter("aa"));;
                                pstmt.executeQuery();   
                            }
                            catch (Exception e) {
                                %>
                                <p>OK,Please go back to click <b>Record</b> button to view transfer records.</p>
                                <%
                            }
                            if(flag!=0)
                            {
                                float balance,b1,b2;
                                b1=Float.valueOf(request.getParameter("ba1"));
                                b2=Float.valueOf(request.getParameter("am"));
                                balance=b1-b2;
                                try {
                                    PreparedStatement pstmt=null;
                                    String query=null;
                                    query="update AccountInfo set min_balance=? where b_account_num=?";
                                    pstmt=con.prepareStatement(query);
                                    pstmt.setString(1, String.valueOf(balance));
                                    pstmt.setString(2, request.getParameter("pa"));
                                    pstmt.execute();    
                                } 
                                catch (Exception e) {}
                            }
                        %>
                    </td>
                    <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>