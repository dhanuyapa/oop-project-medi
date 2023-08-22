<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('images/slide-3.jpg'); background-size: cover; font-family: Arial, sans-serif; background-color: #f2f2f2; ; margin: 0; padding: 0;">
<% 
String id=request.getParameter("id");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String telephone=request.getParameter("telephone");
String email=request.getParameter("email");
String userName=request.getParameter("userName");
String password=request.getParameter("password");

%>


<style>



   font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }

    form {
      width:20px;
      margin: 50px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    form h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    input[type="text"] {
      width: 20%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
      font-size: 14px;
    }

    input[type="submit"] {
      width: 20%;
      padding: 10px;
      background-color: #007BFF;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
      font-weight: bold;
    }

    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>


  <form action="update" method="post"style="width: 400px; margin: 50px auto; background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);">
    <h1>Edit Patient Details</h1>
    <label for="cusId">Customer ID</label>
    <input type="text"style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" name="cusId" value="<%= id %>" readonly><br>

    <label for="fname">First Name</label>
    <input type="text"style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" name="fname" value="<%= fname %>"><br>

    <label for="lname">Last Name</label>
    <input type="text"style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" name="lname" value="<%= lname %>"><br>

    <label for="telephone">Telephone</label>
    <input type="text"style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" name="telephone" value="<%= telephone %>"><br>

    <label for="email">Email</label>
    <input type="text"style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" name="email" value="<%= email %>"><br>

    <label for="userName">User Name</label>
    <input type="text"style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" name="userName" value="<%= userName %>"><br>

    <label for="password">Password</label>
    <input type="text"style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" name="password" value="<%= password %>"><br>

    <input type="submit" name="submit" value="Update"><br>
  </form>



</body>
</html>