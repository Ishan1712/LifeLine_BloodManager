<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>

<head>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen">
    <style>
        body {
            margin: 0;
            font-family: 'Open Sans', sans-serif; 
            background-color: #f8f9fa; 
        }

	.start{
	            margin: 80px auto;
	}

        input[type="text"],
        input[type="password"],
        input[type="submit"],
        select {
            border: none;
            background: #e9ecef;
            height: 50px;
            font-size: 16px;
            margin-left: 35%;
            padding: 15px;
            width: 33%;
            border-radius: 25px;
        }

        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 55%;
            margin: 20px auto;
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
        }
    </style>
</head>

<body>
    <div id="header">
        <a href="myhome.jsp">Home</a>
        <a href="addNewDonor.jsp">Add New Donor</a>
        <a href="DonorDetails.jsp">List of Donor Details</a>
        <a href="manageStock.jsp">Manage Stock</a>
        <a href="requestForBlood.jsp">Request for Blood</a>
        <a href="requestCompleted.jsp">Request Completed</a>
        <a href="adminLogin.jsp">Logout</a>
    </div>

    <%
    String msg = request.getParameter("msg");
    if("invalid".equals(msg)){
    %>
    <center><font color="red" size="5">Something went wrong !!!</font></center>
        <%
        }
        %>
    <%
    if("valid".equals(msg)){
    %>
    <center><font color="green" size="5">Successfully Updated</font></center>
    <% } %>
    <form action="manageStockAction.jsp" method="post">
    <div class="start"></div>
        <div class="form-group">
            <center>
                <h2>Select Blood Group</h2>
            </center>
            <select name="bloodgroup">
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>
            <center>
                <h2>Select Increase/Decrease</h2>
            </center>
            <select name="incdec">
                <option value="inc">Increase</option>
                <option value="dec">Decrease</option>
            </select>
            <center>
                <h2>Give Blood Units</h2>
            </center>
            <input type='text' placeholder="Enter Units" name="units">
            <center><button type="submit" class="button">Save</button></center>
        </div>
    </form>
    <br>
    <center>
        <table id="customers">
            <tr>
                <th>Blood Group</th>
                <th>Units</th>
            </tr>
            <tr>
                <%
                try {
                    Connection con = ConnectionProvider.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select *from stock");
                    while (rs.next()) {
                        %>
                        <td><%=rs.getString(1)%>
                            <td><%=rs.getString(2)%>
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
    <h3><center>All Right Reserved @ Ishan Ahire</center></h3>
</body>

</html>
