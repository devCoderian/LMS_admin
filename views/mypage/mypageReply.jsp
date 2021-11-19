<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
mypageMain 에서 댓글을 눌렀을때 이동 되는 페이지

				<div id="reply">
					<ol class="replyList">
						<c:forEach items="${myReply}" var="myReply">
							<li>
								<p>
								작성자 : ${myReply.writer}<br />
								작성 날짜 :  <fmt:formatDate value="${myReply.regdate}" pattern="yyyy-MM-dd" />
								</p>
								  
								<p>${myReply.content}</p>
								<div>
									<button type="button" class="replyUpdateBtn btn btn-warning" data-rno="${replyList.rno}">수정</button>
									<button type="button" class="replyDeleteBtn btn btn-danger" data-rno="${replyList.rno}">삭제</button>
								</div>
							</li>
						</c:forEach>   
					</ol>
				</div>

<form action="/detail" method="post">
<input type="submit" value="세부 정보로 이동">
</form>
</body>
</html>