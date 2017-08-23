<%-- 
    Document   : contact
    Created on : Mar 5, 2014, 4:00:53 PM
    Author     : Gautam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Online Airline Reservation System</title>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <table border="0" class="tbl">
            <tbody>
                <tr>
                    <td class="left">&nbsp;</td>
                    <td class="middle" align="right" style="padding-left: 5px; padding-right: 5px;">
                        <jsp:include page="top.jsp" flush="true">
                            <jsp:param name="" value=""></jsp:param>
                        </jsp:include>
                    </td>
                    <td class="right">&nbsp;</td>
                    </tr>
                <tr>
                    <td class="left">&nbsp;</td>
                    <td class="middle" style="padding-left: 2px;">
                        <iframe align="center" src="Slider/index.html" frameborder="0" marginheight="0px" marginwidth="0px" width="966px" height="360px" style="margin: 0px; padding: 0px;"></iframe>
                    </td>
                    <td class="right">&nbsp;</td>
                </tr>
                <tr>
                    <td class="left">&nbsp;</td>
                    <td class="middle" style="padding-top:20px;padding-bottom: 20px;">
                        <div style="border-color: pink; border-style: solid; border-width: thin;">
                            <h1>This Project is designed and developed By:</h1>
                            <h2><a href="http://www.sauravkumarsuman.blogspot.in/">Gautam Kumar</a></h2>
                            Student,Sathyabama University, Chennai-119 <br/>
                            11SMC166 (Reg- 3251117)
                            IInd-MCA 'A'<br/>
                            <h3>Guided by:</h3>
                            <h2>Raghvi Mam.</h2>
                            Associate Professor<br/>
                            Dept. of MCA<br/>
                            Sathyabama University, Chennai-119
                        </div>
                    <td class="right">&nbsp;</td>
                </tr>
                <tr>
                    <td class="left">&nbsp;</td>
                    <td class="middle">
                        <jsp:include page="footer.jsp" flush="true">
                            <jsp:param name="" value=""></jsp:param>
                        </jsp:include>
                    </td>
                    <td class="right">&nbsp;</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
