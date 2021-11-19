<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
mypageMain 에서 즐겨찾기를 눌렀을때 이동 되는 페이지<br>

<ol>
	<c:forEach items="${favorList}" var="favorList">
		<li>
			컨텐츠 아이디 : <a href="/detail?contentid=${favorList.contentId }">${favorList.contentId }</a><br/>
		</li>
	</c:forEach>
</ol>
<form action="/detail" method="post">
<input type="submit" value="세부 정보로 이동">
</form>
</body>
</html>