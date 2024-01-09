<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>

<head>
    <style>
        body {
            margin: 0;
            font-family: 'Open Sans', sans-serif; 
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
            background-color: #ffffff; 
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
    </style>
</head>

<body>
    <br>
    <center>
        <table id="customers">
            <tr>
                <th>Name</th>
                <th>Mobile Number</th>
                <th>Email</th>
                <th>Blood Group</th>
            </tr>
            <tr>
                <%
                try {
                    Connection con = ConnectionProvider.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select *from bloodrequest where status='completed'");
                    while (rs.next()) {
                        %>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
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
