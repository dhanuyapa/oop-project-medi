<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body style = "background-image: url('images/slide-5.jpg');">

  <h1 align="center" style="font-size: 50px;;">HEALTH CARE CENTER</h1><br><br><br><br><br>

  <form action="log" method="post" style="width: 300px; margin: 0 auto; border: 1px solid #ccc; padding: 20px; background-color:rgba(255, 255, 255, 0.8); box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">

    <label for="uname" style="display: block; margin-bottom: 10px;">Username</label>
    <input type="text" name="uname" id="uname" style="width: 100%; padding: 8px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px;">

    <label for="pass" style="display: block; margin-bottom: 10px;">Password</label>
    <input type="password" name="pass" id="pass" style="width: 100%; padding: 8px; font-size: 16px; border: 1px solid #ccc; border-radius: 4px;">

    <input type="submit" value="Login" style="width: 100%; padding: 10px; font-size: 16px; color: #fff; background-color: #8B0000; border: none; border-radius: 4px; cursor: pointer;">
  </form>
  <br>
  <br>
  
  <footer style="border-radius:5px;">
        <table style="width: 100%; color: black;" border="0">
            <tr align="left">
                <th width="110%">
                    <h3>About Us :</h3>
                </th>
                <th width="10%">
                    <h3>Contact Us :</h3>
                </th>
            </tr>
            <tr>
                <th align="left" width="100%">
                    It is our aim to make your visit with us a comfortable one.<br>
                    We practice with transparency, this means no suprises.<br>
                    Our doctors are locally trained, regulary educated,and are here<br>
                    to help you make informed decisions about the care we can provide for you.<br>
                    We are here to hold your hand and guide you through sometimes,<br>
                    unfortunately, difficult senarios.<br>
                    We are also here to provide some changing experiences that doctors can offer.<br>
                    Just ask our team that we can achieve for you!.<br>
                </th>
                <th>
                    <table border="0" width="80%">
                        <tr align="left">
                            <th><img src="images/phone.png" style = "width:10%; length:10%;"></th>
                            <th>Phone Number : 0779180997</th>
                            
                        </tr>
                        <tr align="left">
                            <th><img src="images/email.png" style = "width:10%; length:10%;"></th>
                            <th>Email : medical@gmail.com</th>
                            
                        </tr>
                        <tr align="left">
                            <th><img src="images/address.png" style = "width:10%; length:10%;"></th>
                            <th>Address : matale</th>
                            
                        </tr>
                    </table>
                </th>
            </tr>
        </table>
    </footer>
  

</body>
</html>