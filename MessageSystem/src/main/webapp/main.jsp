<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
	<form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
                                                                                               
      <h2>ȸ������</h2>
      <div class="textForm">
        <input name="loginId" type="text" class="id" placeholder="���̵�">
        </input>
      </div>
      <div class="textForm">
        <input name="loginPw" type="password" class="pw" placeholder="��й�ȣ">
      </div>
       <div class="textForm">
        <input name="loginPwConfirm" type="password" class="pw" placeholder="��й�ȣ Ȯ��">
      </div>
      <div class="textForm">
        <input name="name" type="password" class="name" placeholder="�̸�">
      </div>
       <div class="textForm">
        <input name="email" type="text" class="email" placeholder="�̸���">
      </div>
      <div class="textForm">
        <input name="nickname" type="text" class="nickname" placeholder="�г���">
      </div>
      <div class="textForm">
        <input name="cellphoneNo" type="number" class="cellphoneNo" placeholder="��ȭ��ȣ">
      </div>
      <input type="submit" class="btn" value="J O I N"/>
    </form>
</body>
</html>