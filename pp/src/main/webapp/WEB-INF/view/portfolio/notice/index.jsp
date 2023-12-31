<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title%></title>
<%@ include file="/WEB-INF/view//include/headHtml.jsp"%>
<script>
	
</script>
</head>
<body>
	<div id="boardWrap" class="bbs">
		<div class="pageTitle">
			<h2>공지사항</h2>
			<br />
			<%-- <c:if test="${empty loginSess }"> --%>
				<a href="login.do">로그인</a> 
                    <a href="join.do">회원가입 | </a>
			<%-- </c:if> --%>
			<%-- <c:if test="${!empty loginSess}">
				<a href="/test/member/logout.do">로그아웃</a> |
                    <a href="/test/member/mypage.do">마이페이지</a>
			</c:if> --%>
		</div>
		<!--//pageTitle-->
		<!--//search-->
		<div class="list">
			<table>
				<caption>목록</caption>
				<colgroup>
					<col width="50px" />
					<col width="*" />
					<col width="10%" />
					<col width="10%" />
					<col width="10%" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>

					<c:if test="${empty result.list }">
						<tr>
							<td>${result.list }</td>
							<td colspan="5">등록된 글이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="vo" items="${result.list}">
						<tr>
							<td>${vo.board_id }</td>
							<td a href="view.do?no=${vo.board_id }">${vo.title }</td>

							<td>${vo.writer }</td>
							<td>${vo.regdate }</td>
							<td>${vo.viewcount}</td>
						</tr>
					</c:forEach>

					<%--	<tr>
						<td colspan="5">등록된 데이터가 없습니다.</td>
					</tr>
				 <%
						String targetUrl = (String)request.getAttribute("result");
						for (int i=0; i<10; i++) {
							targetUrl = "style='cursor:pointer;' onclick=\"location.href='view.do?idx="+i+"'\"";
				%>
					<tr <%=targetUrl%>>
						<td><%=10-i%></td>
						<td class="title">공지사항 제목입니다.</td>
						<td>관리자</td>
						<td>2020-01-01</td>
						<td>111</td>
					</tr>
				<%
						}
				%>  --%>
				</tbody>
			</table>
			<div class="pagenate clear">
				<ul class='page'>
					<li><a href='javascript:;' class='current'>1</a></li>
					<li><a href='/portfolio/notice/index.do?reqPageNo=2'>2</a></li>
					<li><a href='/portfolio/notice/index.do?reqPageNo=3'>3</a></li>
				</ul>
			</div>
			<div class="btnSet">
				<div class="right">
					<a href="write.do" class="btn">작성</a>
				</div>
			</div>
		</div>
		<!--//list-->
	</div>
	<!--//boardWrap-->
</body>
</html>
