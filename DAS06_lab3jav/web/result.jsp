<%-- 
    Document   : result
    Created on : 18 окт. 2022 г., 12:07:21
    Author     : Boris Britva
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="bzh_jsp_servlet.ResultForm" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>Решение уравнения</title>
</head>
<body>
<a href="Main">Назад</a><br/><br/>
	Решение уравнения:<br/>
	<%
	ResultForm form = (ResultForm)request.getAttribute("form");

	if (form==null) { out.print("Нет решения!<br/><br/>"); }
	else {
		out.println(String.format("y= %.3f<br/>",form.getY()));
	}
%>
</html>


