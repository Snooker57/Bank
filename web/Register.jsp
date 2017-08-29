<%-- 
    Document   : PeronalBank
    Created on : 2017-4-27, 15:41:57
    Author     : snooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

     <script>
        function check() 
        {
            var p1 = document.getElementById("p1").value;
            var p2 = document.getElementById("p2").value;
            if(p1 == p2) 
            {
                document.getElementById("tishi").innerHTML="";
                document.getElementById("submit").disabled = false;
            }
            else 
            {
                document.getElementById("tishi").innerHTML="<font color='red'>Error!Please enter again!</font>";
                document.getElementById("submit").disabled = true;
            }
        }
        function myCheck()
        {
          for(var i=0;i<document.form1.elements.length-1;i++)
          {
            if(document.form1.elements[i].value=="")
            {
                alert("Please fill in all the content...")
                document.form1.elements[i].focus();
                return false;
            }
          }
          return true;
        }
    </script>   
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
                    <td width='60%' >
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
                    <td width='60%' style="height: 450px">
                        <form name='form1' action="RegisterS.jsp" onSubmit="return myCheck()">
                            <table align="center" style="border-spacing:30px 20px;">
                                <tr>
                                    <td>User Name:</td>
                                    <td><input type="text" name="uname"></td>
                                </tr>
                                <tr>
                                    <td>Password:</td>
                                    <td><input type="password" id="p1" name="upass"></td>
                                </tr>
                                <tr>
                                    <td>Confirm:</td>
                                    <td><input type="password" id="p2" name="ucpass" onchange="check()"><span id="tishi"></span></td>
                                </tr>
                                <tr>
                                    <td>Address:</td>
                                    <td><input type="text" name="address"></td>
                                </tr>
                                <tr>
                                    <td>Email Id:</td>
                                    <td><input type="email" name="email"></td>
                                </tr>
                                <tr>
                                    <td>Contact Number:</td>
                                    <td>
                                        <input type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" 
                                                           pattern="^\d{11}$" title="Please enter a valide Phone number."
                                                           name="cnum" placeholder="XXX-XXXX-XXXX">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Bank Account Number:</td>
                                    <td><input type="text" onkeyup="this.value=this.value.replace(/\D/g,'')"
                                                           pattern="^\d{19}$" title="Please enter a valid bank account number."
                                                           name="banum" placeholder="xxxx xxxx xxxx xxxx xxx"></td>
                                </tr>
                                <tr>
                                    <td>Bank Account Type:</td>
                                    <td>
                                        <select name="batype">
                                            <option value="ca">Current account</option>
                                            <option value="sa">Savings account</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><input id="submit" type="submit" value="Register" style="background-color:#009999;width: 80px;height: 25px"></td>
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


