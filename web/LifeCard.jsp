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
            a{TEXT-DECORATION:none}a:hover{TEXT-DECORATION:underline}
        </style>
    </head>
    <script>
        function myCheck()
        {
          if(!document.getElementById("c1").checked)
            {
                alert("Please accept 《Life Card Agreement》 first.");
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
                        Card Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Life Card
                        <hr>
                        <hr>
                        <p style="color:#009999;font-size: 20px;font-family: fantasy">Life Card</p>
                        &nbsp;&nbsp;&nbsp;&nbsp;Life is like wine, or aromatic, or strong, because honestly, it becomes mellow; life is like a song, or high or low, 
                        because the credit, it becomes sweet; life is picturesque, or bright, or elegant, because of honesty, it is so beautiful.
                        <details>
                           <summary style="color:red">More</summary>
                           &nbsp;&nbsp;&nbsp;&nbsp;*My life is cold and dark and dreary; and the wind is never weary.<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;*My thought still cling to the moldering past, But the hopes of youth fall thick in the blast.<br>
                           &nbsp;&nbsp;&nbsp;&nbsp;*And the days are dark and dreary. 
                       </details>
                       <hr><hr>
                       <a href="LifeCardAgreement.jsp">《Life Card Agreement》</a><br><br>

                       <form action="LifeCardFill.jsp" onSubmit="return myCheck();">
                           &nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="c1" value="agreement">I have read all the materials, fully understand all the information about life cards, 
                           and are willing to abide by the "life card agreement" <br><br><br>
                         ------------------------------------------------
                         <input type="submit" value="Next" style="background-color:#009999;width: 100px;height: 25px"> ------------------------------------------------      
                       </form>
                    </td>
                   <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>