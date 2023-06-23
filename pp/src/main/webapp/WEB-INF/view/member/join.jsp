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
<form name="frm" action ="regist.do" enctype="multipart/form-data">
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