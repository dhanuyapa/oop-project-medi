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



 <style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
  }

  form {
    width: 90%; /* Adjust width for small screens */
    max-width: 400px; /* Set maximum width for larger screens */
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
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 14px;
  }

  input[type="submit"] {
    width: 100%;
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

  /* Media Query for Small Screens (Max-width 600px) */
  @media only screen and (max-width: 600px) {
    form {
      width: 90%; /* Adjust width for small screens */
    }
  }
</style>


  <form action="delete" method="post">
    <h1>Patient Account Delete</h1>
    <label for="cusId">Customer ID</label>
   <input type="text" name="cusId" value="<%= id %>">

    <label for="fname">First Name</label>
    <input type="text" name="fname" value="<%= fname %>"readonly>

    <label for="lname">Last Name</label>
    <input type="text" name="lname" value="<%= lname %>"readonly>

    <label for="telephone">Telephone</label>
    <input type="text" name="telephone" value="<%= telephone %>"readonly>

    <label for="email">Email</label>
    <input type="text" name="email" value="<%= email %>"readonly>

    <label for="userName">User Name</label>
    <input type="text" name="userName" value="<%= userName %>"readonly>

   

    <input type="submit" name="submit" value="Delete my acoount">
  </form>

</body>
</html>