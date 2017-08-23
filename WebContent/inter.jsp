<%-- 
    Document   : inter
    Created on : Mar 15, 2014, 4:00:17 PM
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
                    <td class="middle">
                        <table border="0" width="968px">
                            <tbody>
                                <tr>
                                    <td>
                                        <jsp:include page="search.jsp" flush="true">
                                            <jsp:param name="" value=""></jsp:param>
                                        </jsp:include>
                                    </td>
                                    <td align="justify" style="padding:10px;color:gray;">
                                        Online Airline Reservation System is the Web application designed and developed for booking the flight ticket at your door step, available at 24X7. It offers the reliable browsing, searching flight and booking tickets.<br />
                                        Aviation is the one of the popular industries grows day by day and its customer’s increases drastically and their interest is to find the status of the flight and journey ticket at their door step. <br />
                                        This Web application is designed and developed by Gautam Kumar  (12SMC104) [Registration Number: 3251117] student of MCA-II ‘A’ for partial fulfillment of the MINI project of the MCA 4th Semester.
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
