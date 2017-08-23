<%-- 
    Document   : SignUpConfirm
    Created on : Mar 15, 2014, 3:39:36 PM
    Author     : Gautam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
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
                        <%
Connection conn=null;
Statement stmt=null;
try
{
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 conn=DriverManager.getConnection("jdbc:odbc:dev","gautam","kumar");

 stmt=conn.createStatement();
 int i=0;
 if((request.getParameter("UserName")!=null)&&(request.getParameter("Password"))!=null)
 i=stmt.executeUpdate("insert into usr values('" + request.getParameter("UserName")+"','"+request.getParameter("Password")+"')");
 if(i!=0)
     out.println("Account Created Successfully");
 else
     out.println("Failed to create Account Please ttry with other user name");
 }
 catch(ClassNotFoundException cnfe)
 {
    out.println(cnfe);
 }
 catch(SQLException sqle)
 {
    out.println("Some error! \n User with this name may exist");
 }
 catch(Exception e)
 {
    out.println(e);
 }
%>
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