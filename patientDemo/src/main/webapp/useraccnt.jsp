<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style = "background-image: url('images/Service.jpg');">
<c:forEach var="cus" items="${pDetails}">


<c:set var = "id" value = "${cus.id}"/>
<c:set var = "fname" value = "${cus.firstName}"/>
<c:set var = "lname" value = "${cus.lastName}"/>
<c:set var = "telephone" value = "${cus.telephone}"/>
<c:set var = "email" value = "${cus.email}"/>
<c:set var = "userName" value = "${cus.userName}"/>
<c:set var = "password" value = "${cus.password}"/>



 
  
<h1 style="font-size: 50px; color: red; background-color: #ADD8E6; text-align: center;">Patient Details</h1>


<style>

    table {
      border-collapse: collapse;
      width: 30%; /* Adjust table width as needed */
      margin: 50px auto; /* Center the table vertically */
    }

    table th, table td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: left;
    }

    table th,td {
      background-color: #007BFF;
      color: #fff;
    }

    /* Media Query for Small Screens (Max-width 600px) */
    @media only screen and (max-width: 600px) {
      table {
        width: 40%;
      }
    }
  </style>
</head>
<body>
  <table>
    <tr>
      <th>ID</th>
      <td>${cus.id}</td>
    </tr>
    <tr>
      <th>First Name</th>
      <td>${cus.firstName}</td>
    </tr>
    <tr>
      <th>Last Name</th>
      <td>${cus.lastName}</td>
    </tr>
    <tr>
      <th>Telephone</th>
      <td>${cus.telephone}</td>
    </tr>
    <tr>
      <th>Email</th>
      <td>${cus.email}</td>
    </tr>
    <tr>
      <th>Username</th>
      <td>${cus.password}</td>
    </tr>
    <tr>
      <th>Password</th>
      <td>${cus.userName}</td>
    </tr>
  </table>
 

</c:forEach>

<c:url value="update.jsp" var="update">
<c:param name="id" value="${id}"/>
<c:param name="fname" value="${fname}"/>
<c:param name="lname" value="${lname}"/>
<c:param name="telephone" value="${telephone}"/>
<c:param name="email" value="${email}"/>
<c:param name="userName" value="${password}"/>
<c:param name="password" value="${userName}"/>
</c:url>
<a href="${update}">

 
 <input type="button" name="update" value="Update My Data" style="display: block; margin: 0 auto; background-color: #0056b3; color: #fff; border: none; border-radius: 5px; padding: 10px 20px; font-size: 16px; font-weight: bold; cursor: pointer;">
  

</a><br>

<c:url value="delete.jsp" var="cusdelete">

<c:param name="id" value="${id}"></c:param>
<c:param name="fname" value="${fname}"></c:param>
<c:param name="lname" value="${lname}"></c:param>
<c:param name="telephone" value="${telephone}"></c:param>
<c:param name="email" value="${email}"></c:param>
<c:param name="userName" value="${password}"></c:param>
<c:param name="password" value="${userName}{userName}"></c:param>

</c:url>
<a href="${cusdelete}">
<input type="button" name="delete" value="delete my Acoount" style="display: block; margin: 0 auto; background-color: #8B0000; color: #fff; border: none; border-radius: 5px; padding: 10px 20px; font-size: 16px; font-weight: bold; cursor: pointer;">


</body>
</html>