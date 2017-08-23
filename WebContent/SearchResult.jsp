<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
Connection conn=null;
Statement stmt=null;
ResultSet rs=null;
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
                        <form nmae="myForm" action="/Book.jsp" method="POST">
                        <h1>Flights Search Result</h1>
                        <table style="color:gray; border-color: black; border-style: solid; border-width: thin;" width="968px">
                            <tbody>
                                <tr>
                                    <th>Flight Number</th>
                                    <th>Flight Name</th><th>Source Station</th>
                                    <th>Destination Station</th><th>Available</th>
                                    <th>Cost Per Ticket</th>
                                    <th>Departure Time</th><th>Arrival Time</th>
                                </tr>
                                <%
                                try
                              {
                                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                conn=DriverManager.getConnection("jdbc:odbc:dev","gautam","kumar");
                                String sql="select * from flights where src='" +request.getParameter("source") +"' and dest='" +request.getParameter("destination") +"'";
                                //String sql="select * from flights";
                                stmt=conn.createStatement();
                                rs=stmt.executeQuery(sql);                                                         
                                while(rs.next())
                                {
                                    if(rs.getInt("avail")>Integer.parseInt(request.getParameter("adult")))
                                        {
                                        int id=rs.getInt("id");
                                %>
                                <tr align="center">
                                    <td>
                                        <input type="radio" name="fno" value="<% out.println(id); %>">
                                        <% out.println(id); %>
                                        </input>
                                    </td>
                                    <td>
                                        <%
                                        out.println(rs.getString("fname"));
                                        %>
                                    </td>
                                    <td>
                                        <%
                                        out.println(rs.getString("src"));
                                        %>
                                    </td>
                                    <td>
                                        <%
                                        out.println(rs.getString("dest"));
                                        %>
                                    </td>
                                    <td>
                                        <%
                                        out.println(rs.getInt("avail"));
                                        %>
                                    </td>
                                    <td>
                                        <%
                                        out.println(rs.getInt("cost"));
                                        %>
                                    </td>
                                    <td>
                                        <%
                                        out.println(rs.getString("dtime"));
                                        %>
                                    </td>
                                    <td>
                                        <%
                                        out.println(rs.getString("atime"));
                                        %>
                                    </td>
                                </tr>
                                <%
                                }//end if
                                }//end while
                                }//end try
                                catch(ClassNotFoundException cnfe)
                                        {
                                    out.println(cnfe);
                                    }
                                catch(SQLException sqle)
                                        {
                                    out.println(sqle.getStackTrace());
                                    }
                                %>
                            </tbody>
                        </table>
                            <input type="hidden" name="source" value="<% out.print(request.getParameter("source")); %>" />
                            <input type="hidden" name="destination" value="<% out.print(request.getParameter("destination")); %>" />
                            <input type="hidden" name="jdt" value="<% out.print(request.getParameter("jdt")); %>" />
                            <input type="hidden" name="adult" value="<% out.print(request.getParameter("adult")); %>" />
                            <input type="hidden" name="classes" value="<% out.print(request.getParameter("classes")); %>" />

                            <input type="submit" name="submit" value="Book" />
                            <input type="reset" name="reset" value="Clear Selction"/>
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
