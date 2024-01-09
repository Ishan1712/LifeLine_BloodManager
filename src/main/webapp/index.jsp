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

    .slideshow-container {
      max-width: 100%;
      position: relative;
      margin: auto;
    }

    .mySlides {
      display: none;
    }

    input[type="text"],
    input[type="mail"] {
      border: none;
      background: #f4f4f4;
      height: 50px;
      font-size: 16px;
      margin-left: 2%;
      padding: 15px;
      width: 30%;
      box-sizing: border-box;
      border-radius: 5px;
      margin-bottom: 10px;
    }

    .button1 {
      display: inline-block;
      border-radius: 5px;
      background-color: #4CAF50;
      border: none;
      color: #fff;
      text-align: center;
      font-size: 16px;
      padding: 10px 20px;
      transition: background-color 0.3s;
      cursor: pointer;
    }

    .button1:hover {
      background-color: #45a049;
    }

    .form-container {
      max-width: 60%;
      margin: auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-top: 20px;
    }

    .msg {
      color: red;
      font-size: 1.2em;
      text-align: center;
      margin-bottom: 15px;
    }

    .container {
      max-width: 80%;
      margin: auto;
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
  </div>


  <div class="slideshow-container">
    <img class="mySlides" src="slide1.jpg">
    <img class="mySlides" src="slide2.png">
  </div>

  <div class="form-container">
    <div class="msg">
      <%
        String msg = request.getParameter("msg");
        if ("valid".equals(msg)) {
      %>
      Form Submitted Successfully. You'll get notified within 24 hours
      <% } else if ("invalid".equals(msg)) { %>
      Invalid! Please Try Again
      <% } %>
    </div>

    <h1 style="text-align: center; color: #333;">Enter Your Details To Request For Blood</h1>
    <form action="indexFormAction.jsp" method="post">
      <input type="text" name="name" placeholder="Enter your name" required>
      <input type="text" name="mobilenumber" placeholder="Enter your mobile" required>
      <input type="mail" name="email" placeholder="Enter your email" required>
      <input type="text" name="bloodgroup" placeholder="Enter your blood group" required>
      <button class="button1"><span>Submit</span></button>
    </form>
  </div>


  </div>
  <h3>All Rights Reserved @Ishan Ahire</h3>

</body>

</html>
