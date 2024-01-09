<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="style.css" type="text/css" media="screen">
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      color: #333;
    }

   .header {
      overflow: hidden;
      background-color: #333;
      padding: 10px 0;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .header a {
      color: white;
      text-decoration: none;
      padding: 14px 16px;
      text-align: center;
    }

    .header .logo img {
      max-height: 100px;
    }

    .header .heading {
      color: Red;
      font-size: 2.5em;
      margin-left: 20px;
      font-family:Bebas Neue;
    }

    .header a.home,
    .header a.admin {
      background-color: #4CAF50;
      color: white;
      border-radius: 5px;
      padding: 10px 20px;
      margin-left: 10px;
      transition: background-color 0.3s;
      text-align: center;
      text-decoration: none;
    }

    .header a.admin {
      background-color: #f44336;
    }

    .header a.home:hover,
    .header a.admin:hover {
      background-color: #45a049;
    }


    .container {
      max-width: 60%;
      margin: auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-top: 20px;
    }

    input[type="text"],
    input[type="password"],
    input[type="submit"] {
      border: none;
      background: silver;
      height: 50px;
      font-size: 16px;
      margin-left: 25%;
      padding: 15px;
      width: 50%;
      border-radius: 25px;
      margin-bottom: 20px;
      box-sizing: border-box;
    }

    .button {
      display: inline-block;
      border-radius: 25px;
      background-color: #4CAF50;
      border: none;
      color: #fff;
      text-align: center;
      font-size: 16px;
      padding: 10px 20px;
      transition: background-color 0.3s;
      cursor: pointer;
    }

    .button:hover {
      background-color: #45a049;
    }

    h2 {
      text-align: center;
    }

    .error-msg {
      color: red;
      font-size: 1.5em;
      text-align: center;
    }

    h3 {
      text-align: center;
      color: #555;
      margin-top: 20px;
    }
  </style>
</head>

<body>

  <div class="header">
    <div class="logo"><img src="Logo3.png"></div>
    <div class="heading">Lifeline Blood Manager</div>
    <div class="header-right">
      <a href="index.jsp" class="home">Home</a>
      <a href="adminLogin.jsp" class="admin">Admin</a>
    </div>
  </div>>

  <div class="container">
    <br>
    <br>
    <%
    String msg = request.getParameter("msg");
    if ("invalid".equals(msg)) {
    %>
    <div class="error-msg">Invalid Username/Password</div>
    <%
    }
    %>
    <form action="adminLoginAction.jsp" method="post">
      <div class="form-group">
        <h2>Username</h2>
        <input type="text" placeholder="Enter Username" name="username" required>
        <h2>Password</h2>
        <input type="password" placeholder="Enter Password" name="password" required>
        <center><button type="submit" class="button">Submit</button></center>
      </div>
    </form>
  </div>

  <br>
  <br>
  <br>
  <br>
  <h3><center>All Right Reserved @Ishan Ahire </center></h3>
</body>

</html>
