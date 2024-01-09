<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
body {
  margin: 0;
  font-family: 'Open Sans', sans-serif; 
  background-color:  #333;
}

.container {
  max-width: 600px;
  margin: 80px auto;
  background-color: #fff;
  padding: 30px;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h2 {
  margin-bottom: 10px;
  color: #333;
  font-weight: 300; 
}

input[type="text"],
input[type="password"],
input[type="email"],
select,
input[type="number"] {
  border: 1px solid #ccc; 
  background: #fff;
  height: 50px;
  font-size: 16px;
  padding: 15px 20px;
  width: 100%; 
  border-radius: 4px;
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

input[type="text"]:focus,
input[type="password"]:focus,
input[type="email"]:focus,
select:focus,
input[type="number"]:focus {
  outline: none;  
  border-color: #54a0ff; 
}

hr {
  width: 100%;
  border: 0;
  height: 1px;
  background-color: #ccc;
  margin-bottom: 20px;
}

.button {
  background-color: #4CAF50;
  border: none;
  color: #fff;
  text-align: center;
  font-size: 18px;
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.button:hover {
  background-color: #4992e2; 
}

h3 {
  text-align: center;
  color: #555;
  margin-top: 40px;
}
</style>
</head>

<body>
    <div class="container">
        <form action="addNewDonorAction.jsp" method="post">
            <h2>ID</h2>
            <input type="number" name="id" placeholder="Enter ID">
            <h2>Name</h2>
            <input type="text" name="name" placeholder="Enter your name">
            <hr>
            <h2>Father Name</h2>
            <input type="text" name="father" placeholder="Enter Father's name">
            <hr>
            <h2>Mother Name</h2>
            <input type="text" name="mother" placeholder="Enter Mother's name">
            <hr>
            <h2>Mobile Number</h2>
            <input type="text" name="mobilenumber" placeholder="Enter Mobile Number">
            <hr>
            <h2>Gender</h2>
            <select name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Others">Other</option>
            </select>
            <hr>
            <h2>Email</h2>
            <input type="email" name="email" placeholder="Enter Email">
            <hr>
            <h2>Blood Group</h2>
            <select name="bloodgroup">
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">A-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select>
            <hr>
            <h2>Address</h2>
            <input type="text" name="address" placeholder="Enter your address">
            <br>
            <center><button type="submit" class="button">Save</button></center>
        </form>
    </div>

    <br>
    <br>
    <br>
    <br>
    <h3><center>All Right Reserved @Ishan Ahire </center></h3>
</body>
</html>
