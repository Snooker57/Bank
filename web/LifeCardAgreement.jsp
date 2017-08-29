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
                    <td width='60%'  style="height: 450px">
                        <h2>Contract&agreement</h2>
                        1.A contract cannot arise out of an illegal act.<br>
                        2.A contract is established when the acceptance becomes effective.<br>
                        3.A contract may be modified if the parties reach a consensus through consultation.<br>
                        4.A person is not liable for debts contracted during his minority.<br>
                        5.A transaction between two parties ought not to operate to the disadvantage of a third.<br>
                        6.An acceptance once given cannot be revoked unless the offeror consents.<br>
                        7.An acceptance is a statement made by the offeree indicating assent to an offer.<br>
                        8.An offeror may withdraw an offer at any time before it has been accepted.<br>
                        9.Any amendment to this contract shall become effective only by a written agreement by Patry A and Party B.<br>
                        10.Any annex is the integral part of this contract.<br>
                        11.Any departure from the terms and conditions of the contract must be advised in writing.<br>
                        12.Any failure by a party to carry out all or part of his obligations under the contract shall be considered as a substantial breach.<br>
                        13.Any party has no right to terminate this contract without another party's agreement.<br>
                        14.Any violation of deadlines contained in the contract will equate to breach of contract.<br>
                        15.Contract law is initially concerned with determining what promises the law will enforce or recognize as creating legal rights.<br>
                        16.Examples of void contracts are those entered into as a result of misrepresentation, duress or undue influence.<br>
                        17.He is incompetent to sign the contract.<br>
                        18.He reasonably believes that there will be a fundamental non-performance of the contract by the other party.<br>
                        19.He signed a covenant against under letting the premises.<br>
                        20.He was incapable of fulfilling the terms of the contract.<br>
                    </td>
                   <td width='20%' style="background-image:url('Image/img20[1].gif')">
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>