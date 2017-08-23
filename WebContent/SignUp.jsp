<%-- 
    Document   : SignUp
    Created on : Mar 15, 2014, 3:37:25 PM
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
                    <td class="middle" align="center" style="padding-top:100px; padding-bottom:100px;">
                        <form method="POST" action="SignUpConfirm.jsp">
                        <table border="0">
                            <tbody>
                                <tr>
                                    <td>
                                        <p><b>UserName:</b> <input type="text" name="UserName" size="26" value=""></p>
                                        <p><b>Password:&nbsp;</b> <input type="Password" name="Password" size="26" value=""></p>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>
                                        <p><input type="submit" value="Sign Up" name="submit">
                                            <input type="reset" value="Reset" name="reset"></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        </form>
                    </td>
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
