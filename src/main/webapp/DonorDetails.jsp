<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>

<head>
    <style>
        body {
            margin: 0;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            background-color: #f8f9fa;
        }

        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 95%;
            margin: 80px auto;
        }

        #customers td,
        #customers th {
            border: 1px solid #ddd;
            padding: 8px;
            background-color: #ffffff; /* Set the background color */
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
        }

        h3 {
            color: #555;
            margin-top: 20px;
            text-align: center;
        }

        /* Add more styles as needed */
    </style>
</head>

<body>
    <br>
    <%
    String msg = request.getParameter("msg");
    if("invalid".equals(msg)){
    %>
    <center><font color="red" size="5">Something went wrong !!!</font></center>
    <%
    }
    %>
    <%
    if("deleted".equals(msg)){
    %>
    <center><font color="green" size="5">Successfully Deleted</font></center>
    <% } %>
    <center>
        <table id="customers">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Father Name</th>
                <th>Mother Name</th>
                <th>Mobile Number</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Blood Group</th>
                <th>Address</th>
            </tr>
            <tr>
                <%
                try {
                    Connection con = ConnectionProvider.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select *from donor");
                    while (rs.next()) {
                        %>
                        <td><%=rs.getInt(9)%></td>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                        </tr>
                        <%
                    }
                } catch (Exception e) {

                }
                %>
        </table>
    </center>
    <br>
    <br>
    <br>
    <br>
    <h3>All Right Reserved @Ishan Ahire</h3>
</body>

</html>
