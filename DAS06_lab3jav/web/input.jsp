<%-- 
    Document   : input
    Created on : 18 окт. 2022 г., 12:06:37
    Author     : NITRO
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>Решение уравнения</title>
</head>
<body>
	Решение уравнения:
	<form action="Main" method="POST">
		Введите A: <input type="text" name="a" /> <br />
		Введите B: <input type="text" name="b"/> <br />
		Введите X: <input type="text" name="x"/><br /> 
		<input type="submit" name="calcSubmit" value="Решить" /> <br />
		<input type="reset" name="clearSubmit" value="Очистить" />
        </form>
        
        
        
</body>
</html>

