<%-- 
   Document   : dom
    Created on : Mar 15, 2014, 3:59:59 PM
    Author     : Gautam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
if(session.getAttribute("user")==null)
    response.sendRedirect("/Login.jsp?l=0");
%>
<%
Connection conn=null;
Statement stmt=null;
PreparedStatement ps=null;
ResultSet rs=null;
String d="";
if((request.getParameter("jdt"))!=null)
    d=request.getParameter("jdt");
else
    d=new java.util.Date().toString();
%>
<%
String[] cname=request.getParameterValues("pas");
String[] age=request.getParameterValues("age");
String[] pasid=request.getParameterValues("pasId");
String[] sex=request.getParameterValues("sex");
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
                        <%
                            if(session.getAttribute("user")!=null)
                                out.println("<a href=\"/logout.jsp\">Log Out</a>");
                            %>
                        <table border="0" width="968px">
                            <tbody>
                                <%
                                try
                                {
                                int cid=0,bid=0,fid=0,pid=0,avail=0;
                                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                conn=DriverManager.getConnection("jdbc:odbc:dev","gautam","kumar");

                                stmt=conn.createStatement();

                                rs=stmt.executeQuery("select NVL(max(cid),0) from customers");
                                if(rs.next())
                                    cid=rs.getInt(1)+1;
                                rs=stmt.executeQuery("select NVL(max(bid),0) from booking");
                                if(rs.next())
                                    bid=rs.getInt(1)+1;

                                rs=stmt.executeQuery("select NVL(max(id),0) from flights");
                                if(rs.next())
                                    fid=rs.getInt(1)+1;

                                rs=stmt.executeQuery("select NVL(max(pid),0) from payments");
                                if(rs.next())
                                    pid=rs.getInt(1)+1;

                                String f=request.getParameter("fno");
                                rs=stmt.executeQuery("select nvl(avail,0) from flights where id=" + f);
                                if(rs.next())
                                    avail=rs.getInt(1);

                                int count=0;
                                if(request.getParameter("adult")!=null)
                                    count=Integer.parseInt(request.getParameter("adult"));
                                for(int j=0;j<count;j++)
                                {
                                String s1="insert into customers values(?,?,?,?,?,?,?,?)";
                                ps=conn.prepareStatement(s1);
                                ps.setInt(1, cid);
                                cid++;
                                ps.setString(2, cname[j]);
                                ps.setString(3,sex[j]);
                                ps.setString(6, pasid[j]);
                                int ag=Integer.parseInt(age[j]);
                                ps.setInt(8, ag);
                                String m="";
                                m=request.getParameter("mob");
                                String e="";
                                e=request.getParameter("email");
                                ps.setString(4,m);  ps.setString(5,e);
                                ps.setInt(7, bid);
                                ps.executeUpdate();
                                }

                                String s3="insert into payments values(?,?,?,?)";
                                ps=conn.prepareStatement(s3);
                                ps.setInt(1,pid);   ps.setInt(2,bid);
                                int am=Integer.parseInt(request.getParameter("amt"));
                                ps.setInt(3,am);
                                String cno=request.getParameter("cardno");
                                ps.setString(4,cno);
                                ps.executeUpdate();

                                String s4="update flights set avail="+ (avail-(Integer.parseInt(request.getParameter("adult")))) +" where id=" +f;
                                stmt.executeUpdate(s4);

                                
                                String s2="insert into booking values(?,?,?)";
                                java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("MM/dd/yyyy");
                                java.util.Date bdt=sdf.parse(d);
                                java.sql.Date sdt=new java.sql.Date(bdt.getTime());
                                ps=conn.prepareStatement(s2);
                                
                                ps.setInt(1,bid); ps.setDate(2,sdt);
                                
                                ps.setString(3,f);
                                
                                ps.executeUpdate();
                                
                                out.println("<tr><td><br/><br/>Ticked Booked Successfully</td></tr>");
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
