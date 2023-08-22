<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body style="font-family: Arial, sans-serif; background-color: #f2f2f2;">

  <form action="insert" method="post" style="width: 400px; margin: 50px auto; background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);">

    <h1 style="text-align: center; margin-bottom: 20px;">Insert Patient Details</h1>

    <label for="fname">First Name</label>
    <input type="text" name="fname" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" required>

    <label for="lname">Last Name</label>
    <input type="text" name="lname" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" required>

    <label for="telephone">Telephone</label>
    <input type="text" name="telephone" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" required>

    <label for="email">Email</label>
    <input type="text" name="email" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" required>

    <label for="uname">User Name</label>
    <input type="text" name="uname" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" required>

    <label for="password">Password</label>
    <input type="password" name="password" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px;" required>

    <input type="submit" name="submit" value="Create Patient" style="width: 100%; padding: 10px; background-color: #007BFF; color: #fff; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; font-weight: bold;">
  </form>










<input type="submit" name="submit" value="create patient"><br>

</form>

</body>
</html>