<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Move</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String aaa = request.getParameter("sitename");
	// 대문자로 입력시 소문자로 변환
	// 대문자로 입력해도 접속할 수 있도록 설정
	aaa = aaa.toLowerCase();
	
	switch(aaa) {
	case "네이버":
	case "naver":
		response.sendRedirect("https://www.naver.com");
		break;
	case "다음":
	case "daum":
		response.sendRedirect("https://www.daum.net");
		break;
	case "구글":
	case "google":
		response.sendRedirect("https://www.google.com");
		break;
	default:
		response.sendRedirect("https://www.yahoo.com");
		break;	
	}
	
%>
</body>
</html>