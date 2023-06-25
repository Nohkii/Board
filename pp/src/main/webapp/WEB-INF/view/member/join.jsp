<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입 페이지</h3>
<form name="frm" action ="regist.do" method="post" enctype="multipart/form-data">
ID: <input type="text" name="id">
PWD:<input type="password" name="pwd">
이름: <input type="text" name="name">
이메일: <input type="email" name="email">
 성별 <select name="gender" id="gender">
                            <option value="0">선택</option>
                            <option value="1">남성</option>
                            <option value="2">여성</option>
                            </select> 
 생년월일<input type="text" name="birthday" id="birthday">           
<input type="submit" value="가입">
</form>
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> --%>
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script> -->
<!-- <style>
html {
	margin: 40px 80px 80px 80px;
}

input {
	margin-bottom: 20px;
}
</style> -->
<!-- </head>
<body>
	<h3>회원가입 페이지</h3>
 <form name="frm" action ="regist.do" method="post" enctype="multipart/form-data">
ID: <input type="text" name="id">
PW:<input type="password" name="pwd">
PW확인:<input type="password" name="pwd_check">
이름: <input type="text" name="name">
이메일: <input type="email" name="email">
 성별 <select name="gender" id="gender">
                            <option value="0">선택</option>
                            <option value="1">남성</option>
                            <option value="2">여성</option>
                            </select> 
 생년월일: <input type="text" name="birthday" id="birthday">        
 우편번호: <input type="text" name="zipcode" id="zipcode">          
 <button type="button" type="submit" >확인</button>
 </form> 
   -->

<!-- 	<form name="frm" action="regist.do" method="post"
		enctype="multipart/form-data">
		<div class="mb-3">
			<label for="id" class="form-label">아이디</label> <input type="text"
				name="id" class="form-control" id="id">
		</div>
		<div class="mb-3">
			<label for="password" class="form-label">비밀번호</label> <input
				type="password" name="pwd" class="form-control" id="password">
		</div>
		<div class="mb-3">
			<label for="pwd_check" class="form-label">비밀번호 확인</label> <input
				type="password" name="pwd_check" class="form-control" id="pwd_check">
		</div>
		<div class="mb-3">
			<label for="name" class="form-label">이름</label> <input type="text"
				name="name" class="form-control" id="name">
		</div>
		<div class="mb-3">
			<label for="email" class="form-label">이메일</label> <input type="email"
				name="email" class="form-control" id="email">
		</div>

		체크박스 자리(gender)

		<div class="mb-3">
			<label for="birthday" class="form-label">생년월일</label> <input
				type="text" class="form-control" id="birthday">
		</div>

		<div class="mb-3">
			<label for="tel" class="form-label">전화번호</label> <input type="text"
				name="tel" class="form-control" id="tel">
		</div>
		<div class="mb-3">
			<label for="zipcode" class="form-label">우편번호</label> <input
				type="text" name="zipcode" class="form-control" id="zipcode">
		</div>

		<div class="mb-3">
			<label for="addr1" class="form-label">주소1</label> <input type="text"
				name="addr1" class="form-control" id="addr1">
		</div>
		<div class="mb-3">
			<label for="addr2" class="form-label">주소2</label> <input type="text"
				name="addr2" class="form-control" id="addr2">
		</div>
		<button type="button" class="btn btn-primary" type="submit">가입</button>
	</form> -->
<!-- </body>
</html> -->