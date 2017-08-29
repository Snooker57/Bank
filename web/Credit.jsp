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
        <style>
            #credit{ width:300px; height:180px;}
            #credit:hover{ width:350px; height:210px;}
        </style>
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
                        <h3 style="color: #6666ff">&nbsp;&nbsp;&nbsp;&nbsp;Product 1</h3>
                        <hr>
                        <table>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;<img align="center" id="credit" src="Image/credit.jpg" width="300px" height="180px" onclick="location.href='LifeCard.jsp'" ></td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;<b style="color:#009999;font-size: 28px;font-family: fantasy">Life Card</b><br><br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;Life is picture, or bright, or elegant<br><br> 
                                    &nbsp;&nbsp;&nbsp;&nbsp;Life is wine, or aromatic, or strong</td>
                            </tr>
                        </table>
                        <hr>
                    </td>
                   <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>