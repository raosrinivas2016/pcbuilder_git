<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
 
<sql:setDataSource var="jdbc/pc_builder" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql:/[yourserver]:3306/pb_builder"
     user="root"  password="nbuser"/>
 
<sql:query dataSource="jdbc/pc_builder" var="result">
SELECT * from customer;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>Name</th>
   <th>age</th>
   <th>address</th>
   <th>lastName</th>
   <th>firstname</th>
   <th>city</th>
   <th>province</th>
   <th>country</th>
   <th>postalcode</th>
   <th>reference no</th>
   <th>credit limit</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.ID}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.age}"/></td>
   <td><c:out value="${row.address}"/></td>
   <td><c:out value="${row.lastname}"/></td>
   <td><c:out value="${row.firstname}"/></td>
   <td><c:out value="${row.city}"/></td>
   <td><c:out value="${row.province}"/></td>
   <td><c:out value="${row.country}"/></td>
   <td><c:out value="${row.postalcode}"/></td>
   <td><c:out value="${row.referenceno}"/></td>
   <td><c:out value="${row.creditlimit}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>