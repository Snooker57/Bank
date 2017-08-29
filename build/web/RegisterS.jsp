<%-- 
    Document   : RegisterS
    Created on : 2017-5-23, 13:43:37
    Author     : snooker
--%>

<%@page import="javafx.scene.control.Alert"%>
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
                                        %>
                                       <p>OK,Please go back to <b>Personal Bank</b> Page to  login.</p>
                                       <%
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
                    %>
                    </td>
                    <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>