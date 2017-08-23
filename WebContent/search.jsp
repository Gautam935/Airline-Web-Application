<%-- 
    Document   : search.jsp
    Created on : March 18, 2014, 8:58:13 AM
    Author     : Gautam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <script type = "text/javascript" src = "validateSearch.js"></script>
    </head>
    <body>
        <form name="myForm" action="/SearchResult.jsp" method="POST" onsubmit="return validate()" style="color:#222;background-color:lightyellow;margin-left: 5px;">
            <div style="padding: 5px;border-color: pink; border-style: solid; border-width: thin;"><h3>Search Flight</h3></div>
        <div style="border-color: pink; border-style: solid; border-width: thin;">
            <table border="0" width="350px" bgcolor="lightyellow">
            <tbody>
                <tr>
                    <td>Source Airport</td>
                    <td><input type="text" name="source" title="Source Airport" size="10" maxlength="10" /></td>
                </tr>
                <tr>
                    <td>Destination City</td>
                    <td><input type="text" name="destination" title="Destination Airport" size="10" maxlength="10" /></td>
                </tr>
                <tr>
                    <td>Journey Date (MM/dd/yyyy)</td>
                    <td><input type="text" name="jdt" title="Journy Date in dd/MM/yyyy format [such as 01/01/2013]" size="10" maxlength="10" /></td>
                </tr>
                <tr>
                    <td>Number of Passenger</td>
                    <td><input type="text" name="adult" title="Number of Adult Passenger" size="2" maxlength="2" /></td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="classes" value="Economy Class" title="Economy Class" checked />Economy Class
                        <input type="radio" name="classes" value="Business Class" title="Business Class" />Business Class
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td align="right">
                        <input type="submit" name="submit" value="Search Flight" title="Search Flight" />
                        <input type="reset" name="clear" value="Clear" title="Clear" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </tbody>
        </table>
        </div>
        </form>
    </body>
</html>
