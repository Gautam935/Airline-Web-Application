<%-- 
   Document   : dom
    Created on : Mar 5, 2014, 3:59:59 PM
    Author     : Gautam
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
if(session.getAttribute("user")==null)
    response.sendRedirect("/Login.jsp?l=0");
%>
<%
Connection conn=null;
ResultSet rs=null;
Statement stmt=null;
int amt=0;
%>
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
                    <td class="middle">
                        <form action="/BookConfirm.jsp" method="GET">
                            <%
                            if(session.getAttribute("user")!=null)
                                out.println("<a href=\"/logout.jsp\">Log Out</a>");
                            %>
                        <table border="0" width="968px" width="350px" bgcolor="lightyellow" style="border-color: pink; border-style: solid; border-width: thin;">
                            <tbody>
                                <tr>
                                    <td>
                                        From Airport
                                    </td>
                                    <td>
                                        <% out.println(request.getParameter("source")); %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        To Airport
                                    </td>
                                    <td>
                                        <% out.println(request.getParameter("destination")); %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        On Date:
                                    </td>
                                    <td>
                                        <% out.println(request.getParameter("jdt")); %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        No. of Adults :
                                    </td>
                                    <td>
                                        <% out.println(request.getParameter("adult")); %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Ticket Class :
                                    </td>
                                    <td>
                                        <% out.println(request.getParameter("classes")); %>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <h1>Passenger Information</h1>
                         <table>
                             <tbody>
                                <%
                                int l=Integer.parseInt(request.getParameter("adult"));
                                for(int i=0;i<l;i++)
                                {
                                    out.println("<tr>");
                                    out.println("<td>Name of Passenger</td>");
                                    out.println("<td><input type=\"text\" name=\"pas\" size=\"26\" /></td>");
                                    out.println("<td>Age(in Year)</td>");
                                    out.println("<td><input type=\"text\" name=\"age\" size=\"8\" /></td>");
                                    out.println("<td>Sex(M/F)</td>");
                                    out.println("<td><input type=\"text\" name=\"sex\" size=\"8\" /></td>");
                                    out.println("<td>Passangers ID</td>");
                                    out.println("<td><input type=\"text\" name=\"pasId\" size=\"17\" /></td>");
                                    out.println("</tr>");
                                }
                                %>
                             </tbody>
                         </table>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Mobile Number</td>
                                        <td><input type="text" name="mob" size="26" maxlength="13" /></td>
                                    </tr>
                                    <tr>
                                        <td>Email ID</td>
                                        <td><input type="text" name="email" size="26" maxlength="17" /></td>
                                    </tr>
                                    <tr>
                                        <td>Total Amount</td>
                                        <%
                                        try
                                        {
                                        int fair=0;
                                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                        conn=DriverManager.getConnection("jdbc:odbc:dev","gautam","kumar");
                                        stmt=conn.createStatement();
                                        String f=request.getParameter("fno");
                                        rs=stmt.executeQuery("select cost from flights where id=" + f);
                                        if(rs.next())
                                            fair=rs.getInt(1);

                                        int pas=Integer.parseInt(request.getParameter("adult"));
                                        amt=pas*fair;
                                        String cl=request.getParameter("classes");
                                        if(cl.equals("Business Class"))
                                            amt+=(amt*=0.10);
                                        }
                                        catch(ClassNotFoundException cnfe)
                                        {

                                        }
                                        catch(SQLException sqle)
                                        {
                                            out.println(sqle);
                                        }
                                        catch(Exception e)
                                        {
                                            out.println(e);
                                        }
                                        %>
                                        <td><input type="text" name="amt" value="<%out.println(amt);%>" size="17" readonly /></td>
                                    </tr>
                                    <tr>
                                        <td>Card No.</td>
                                        <td><input type="text" name="cardno" size="17" maxlength="16" /></td>
                                    </tr>
                                </tbody>
                            </table>

                            <input type="hidden" name="fno" value="<% out.print(request.getParameter("fno")); %>" />
                            <input type="hidden" name="source" value="<% out.print(request.getParameter("source")); %>" />
                            <input type="hidden" name="destination" value="<% out.print(request.getParameter("destination")); %>" />
                            <input type="hidden" name="jdt" value="<% out.print(request.getParameter("jdt")); %>" />
                            <input type="hidden" name="adult" value="<% out.print(request.getParameter("adult")); %>" />
                            <input type="hidden" name="classes" value="<% out.print(request.getParameter("classes")); %>" />

                            <input type="submit" name="submit" value="Book Ticket"/>
                            <input type="reset" name="reset" value="Clear"/>
                            
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
