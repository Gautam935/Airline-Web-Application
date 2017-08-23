<%-- 
   Document   : dom
    Created on : Mar 5, 2014, 3:59:59 PM
    Author     : Gautam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
Connection conn=null;
ResultSet rs=null;
Statement stmt=null;
try
{
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 conn=DriverManager.getConnection("jdbc:odbc:dev","gautam","kumar");
 stmt=conn.createStatement();
 rs=stmt.executeQuery("select * from usr where un='" + request.getParameter("UserName")+"' and pw='"+request.getParameter("Password")+"'");
 if(rs.next())
{
     session.setAttribute("user", rs.getString(1));
     response.sendRedirect("/logedin.jsp");
}
 else
     response.sendRedirect("/Login.jsp?l=0");
 }
 catch(ClassNotFoundException cnfe)
 {
    out.println(cnfe);
 }
 catch(SQLException sqle)
 {
    out.println(sqle + sqle.getSQLState());
 }
 catch(Exception e)
 {
    out.println(e);
 }
%>