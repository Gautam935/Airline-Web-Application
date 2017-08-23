<%-- 
    Document   : top
    Created on : March 21, 2014, 8:35:52 AM
    Author     : Gautam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <link href="menustyle.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div style="align:right;">
        <a href="/index.jsp">Home</a> &nbsp; | &nbsp;
        <a href="/search.jsp">Search Flight</a> &nbsp;|&nbsp;
        <a href="/Login.jsp?l=0">Login</a> | &nbsp;
        <a href="/contact.jsp">Contact</a> &nbsp; |&nbsp;
        <a href="/SignUp.jsp">Sign Up</a>
        <img src="images/logo.png" alt="Logo" border="0" width="968px" height="100px"/>
        </div>
        <div id="cssmenu">
            <ul>
                <li class="last"><span><a href="/index.jsp">Home</a></span></li>
                <li class="last"><span><a href="/search.jsp">Search Flight</a></span></li>
                <li class="last"><span><a href="/dom.jsp">Domestic Flight</a></span></li>
                <li class="last"><span><a href="/inter.jsp">International Flight</a></span></li>
                <li class="last"><span><a href="/Login.jsp?l=0">Login</a></span></li>
                <li class="last"><span><a href="/SignUp.jsp">Sign Up</a></span></li>
            </ul>
        </div>
    </body>
</html>
