<%-- 
    Document   : PeronalBank
    Created on : 2017-4-27, 15:41:57
    Author     : snooker
--%>

<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script type="text/JavaScript">
    function check(){ 
        for(var i=0;i<document.form1.elements.length-1;i++)
          {
            if(document.form1.elements[i].value=="")
            {
                alert("Please fill in all the content...")
                document.form1.elements[i].focus();
                return false;
            }
          }
        if(document.form1.elements[0].value==document.form1.elements[3].value)
        {
                alert("You can't transfer money to yourself...")
                document.form1.elements[3].value="";
                document.form1.elements[3].focus();
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
                            request.setCharacterEncoding("UTF-8"); 
                        %>
                        <form action="TransferS.jsp" name='form1' onsubmit="return check()">
                            <table align="center" style="border-spacing:20px 10px;">
                                <th colspan="2"><h2>Transfer Accounts</h2></th>
                                <tr>
                                    <td>Payment Account </td>
                                    <td>
                                        <%=request.getParameter("lban")%>
                                        <input type="text" name="pa" hidden value="<%=request.getParameter("lban")%>">
                                        <input type="text" name="ba1" hidden value="<%=request.getParameter("ba")%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Account Type</td>
                                    <td>
                                        <%=request.getParameter("lbat")%>
                                        <input type="text" name="at" hidden value="<%=request.getParameter("lbat")%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Payer</td>
                                    <td>
                                        <%=request.getParameter("lname")%>
                                        <input type="text" name="pr" hidden value="<%=request.getParameter("lname")%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Accept account</td>
                                    <td><input type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" 
                                                           pattern="^\d{19}$" title="Please enter a valid bank account number."
                                                           name="aa" placeholder="xxxx xxxx xxxx xxxx xxx">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Amount</td>
<!--                                    <td><input type="text" onkeyup="if(isNaN(this.value))this.value=''"
                                                           name="aa" >¥</td>-->
                                    <td><input type="text" onkeyup="this.value=(this.value.match(/\d+(\.\d{0,2})?/)||[''])[0]"
                                                           name="am">¥
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date</td>
                                    <td>
                                        <% 
                                            Date date=new Date();
    //                                        Integer a=date.getYear()+1900;
                                            DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
                                            String time=format.format(date);                 
    //                                        String date=String.valueOf(d.getYear())+"/"+String.valueOf(d.getMonth())+"/"+String.valueOf(d.getDay());  
                                        %>
                                        <%=time%>
                                        <input type="text" name="date" hidden value="<%=time%>">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><input type="submit" value="Submit" style="background-color:#009999;width: 80px;height: 25px"></td>
                                    <td align="left"><input type="reset" value="Reset" style="background-color:#009999;width: 80px;height: 25px"></td>
                                </tr>
                            </table>
                        </form>     
                    </td>
                    <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>