<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="model.Loginbean" %>

<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>ログイン後</title>
		</head>
			<body>
			<%
// リクエストスコープからインスタンスを取得
			Loginbean lob =(Loginbean)request.getAttribute("loginbean");
			%>

				<p>ログイン：<%= lob.getId() %> </p>
				<p>パスワード：<%= lob.getPass() %> </p>

			</body>
	</html>
