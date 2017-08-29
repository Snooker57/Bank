<%-- 
    Document   : PeronalBank
    Created on : 2017-4-27, 15:41:57
    Author     : snooker
--%>

<%@page import="javax.security.auth.login.AccountException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        function show(obj)
        {  
               var radios =document.getElementsByName("r1");
               document.getElementById("b1").value=0;
               var n=0;
            if(obj.options[obj.selectedIndex].value=="1")
                {
                document.getElementById("rate").value="30%";
                   n=3;
               }
            else if(obj.options[obj.selectedIndex].value=="2")
                {
                document.getElementById("rate").value="20%";
                    n=2;
                }
               else
               {
                   document.getElementById("rate").value="10%";
                   n=1;
               }
                
                for (var i=0;i<radios.length;i++) 
                {
              radios[i].onchange=function() 
                   {
                if(this.checked) 
                       {
                           if(n==3)
                        document.getElementById("b1").value=this.value*0.3;
                           else if(n==2)
                        document.getElementById("b1").value=this.value*0.2;
                           else if(n==1)
                                document.getElementById("b1").value=this.value*0.1;
                } 
              }
               }
           }
       function check()
        {
            if(document.getElementById("b1").value==0)
            {
                alert("Please fill in all the content...");
                return false;
            }
            return true;
       }

  </script>
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
                            int flag=0,m=0,n=0;
                            String rate="";
                            request.setCharacterEncoding("UTF-8");
                            String uname=request.getParameter("uname");
                            String pass=request.getParameter("upass");
                            try{
                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=OnlineBankSystem","sa","123456");
                                PreparedStatement pstmt1=null;
                                String query1=null;
                                query1="select * from CustomerInfo where user_name=? and password=? ";
                                pstmt1=con.prepareStatement(query1,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                                pstmt1.setString(1, uname);
                                pstmt1.setString(2, pass);
                                ResultSet rs1=pstmt1.executeQuery();
                                while(rs1.next())
                                {
                                    n++;
                                    flag=1;
                                }
//                                out.println(n);
                                String[] account=new String[n];
                                rs1.absolute(0);
                                while(rs1.next())
                                {
                                    account[m]=rs1.getString("b_account_num");
                                    m++;
                                }
                                if(flag!=0)
                                {
                                    %>
                                    <form action="LoanInfo.jsp" onSubmit="return check()">
                                        <table align="center"  style="border-spacing:20px 10px;width:auto">
                                            <th colspan="2"><h2>Fill in the below form</h2></th>
                                            <tr>
                                                <td>User Name</td>
                                                <td>
                                                    <%=request.getParameter("uname") %>
                                                    <input type="text" hidden name="un" value="<%=request.getParameter("uname") %>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Account Number</td>
                                                <td>
                                                    <select name="an">
                                                    <%
                                                    for(int j=0;j<n;j++)
                                                    {
                                                        %>
                                                        <option><%=account[j]%></option>
                                                        <%
                                                     }
                                                    %>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Loan Type</td>
                                                <td>
                                                    <select name="lt"  onchange="show(this)">
                                                        <option value="0" disabled selected >Select</option>
                                                        <option value="1">Home Loan</option>
                                                        <option value="2">Car Loan</option>
                                                        <option value="3">Education Loan</option> 
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Rate of Interest</td>
                                                <td>
                                                    <input type="text" id="rate" name="rt" style="background-color:#ccccff;width:50px " readonly>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Amount</td>
                                                <td>
                                                    <input type="radio" name="r1" value="1000">1000<span>¥</span>
                                                    <input type="radio" name="r1" value="2000">2000<span>¥</span>
                                                    <input type="radio" name="r1" value="5000">5000<span>¥</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <input type="radio" name="r1" value="10000">10000<span>¥</span>
                                                    <input type="radio" name="r1" value="20000">20000<span>¥</span>
                                                    <input type="radio" name="r1" value="50000">50000<span>¥</span>
                                                </td>
                                            </tr>  
                                            <tr>
                                                <td>Min Down Payment</td>
                                                <td>
                                                    <input type="text" id="b1" name="mdp" style="background-color:#ccccff;width:50px " readonly>¥
                                                </td>
                                            </tr> 
                                            <tr>
                                                <td align="right"><input id="submit" type="submit" value="Register" style="background-color:#009999;width: 80px;height: 25px"></td>
                                                <td align="left"><input type="reset" value="Reset" style="background-color:#009999;width: 80px;height: 25px"></td>
                                            </tr>
                                        </table>
                                    </form>
                                    <%
                                }
                                else
                                {
                                    %>
                                    <p>Sorry,Login failure...</p>
                                    <p>Please go back to <b>Loan</b> Page to login again or go to <b>Personal Bank</b>page to register a new bank account.</p>
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