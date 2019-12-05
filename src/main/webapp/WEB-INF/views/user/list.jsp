<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>User list</h1>
	<table class="table">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">이름</th>
	      <th scope="col">번호</th>
	      <th scope="col">아이디</th>
	      <th scope="col">생성일</th>
	    </tr>
	  </thead>
	  <c:forEach items="${users}" var="user">
	  	<tr>
	  		<td>${user.uiName}</td>
	  		<td>${user.uiNum}</td>
	  		<td>${user.uiId}</td>
	  		<td>${user.credat}</td>
	  	</tr>
	  </c:forEach>
	</table>
</div>
</body>
</html>