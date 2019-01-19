<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
<title>Insert title here</title>
</head>
<body>
<!-- 최상단 네비 바 시작 -->
<jsp:include page="../Top.jsp" flush="false"/>
<!-- 최상단 네비 바 종료 -->
<!-- 본문 시작 -->
 <form action="../hostSignUpController.do" method="post">
	<div class="w3-container w3-margin-top">
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top"></div>	
		<div class="w3-row w3-margin-top"></div>
		<h1 class="w3-center  w3-margin-top">호스트 회원 가입</h1>
		
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4 "><p> </p></div>		
			<div class="w3-col m4 w3-orange w3-left">
				<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge fa fa-star"></i></p> 
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m3 ">
				 <input type="text" class="w3-input" placeholder="호스트 아이디" name="id">
			</div>
			<div class="w3-col m1">
				<button type="button" class="w3-button w3-white w3-border w3-border-red w3-round-large" id="host_id">중복확인</button>
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row">
			<div class="w3-col m4"><p> </p></div>
			<div class="w3-col m4"><small>● 호스트는 로그인 아이디가 필요합니다.</small></div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4 "><p> </p></div>		
			<div class="w3-col m4 w3-orange w3-left">
				<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge fa fa-envelope"></i></p> 
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4 ">
				 <input type="text" class="w3-input" placeholder="이메일" name="email" disabled="disabled">
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4 "><p> </p></div>		
			<div class="w3-col m4 w3-orange w3-left">
				<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge fa fa-user"></i></p> 
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4 ">
				 <input type="text" class="w3-input" placeholder="닉네임" name="host_name">
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row">
			<div class="w3-col m4"><p> </p></div>
			<div class="w3-col m4"><small>● 호스트는 닉네임이 필요합니다(회원 닉네임과는 무관합니다.)</small></div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4 "><p> </p></div>		
			<div class="w3-col m4 w3-orange w3-left">
				<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge fa fa-phone"></i></p> 
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4">
				 <input type="text" class="w3-input" placeholder="핸드폰" name="host_phone" maxlength="11" >
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row">
			<div class="w3-col m4"><p> </p></div>
			<div class="w3-col m4"><small>● 호스트는 예약회원과의 연락하기위한 전화번호가 필요합니다.</small></div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		
				
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4 "><p> </p></div>		
			<div class="w3-col m4 w3-orange w3-left">
				<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge fa fa-unlock-alt"></i></p> 
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4">
				 <input type="password" class="w3-input" placeholder="비밀번호" name="pass">
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row">
			<div class="w3-col m4"><p> </p></div>
			<div class="w3-col m4">
				<small>● 호스트 로그인시 필요한 비밀번호 입니다.(회원 비밀번호와는 무관합니다.)</small>
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4 "><p> </p></div>		
			<div class="w3-col m4 w3-orange w3-left">
				<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge fa fa-unlock"></i></p> 
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4">
				 <input type="password" class="w3-input" placeholder="비밀번호 확인" name="email_ck">
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4 "><p> </p></div>		
			<div class="w3-col m4 w3-orange w3-left">
				<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge far fa-credit-card"></i></p> 
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4">
				 <input type="text" class="w3-input" placeholder="포인트" name="email_ck" disabled="disabled">
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4">
				 <input type="checkbox" class="w3-check"> 포인트 통합하기(필수)
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		<div class="w3-row">
			<div class="w3-col m4"><p> </p></div>
			<div class="w3-col m4">
				<small>● 호스트 회원은 회원 포인트와 호스트 포인트를 통합해야 합니다.</small>
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>
		
		<div class="w3-row w3-margin-top"></div>
		<div class="w3-row w3-margin-top">
			<div class="w3-col m4"><p> </p></div>		
			<div class="w3-col m4">
				 <input type="submit" class="w3-button w3-block w3-red" value="호스트 가입하기">
			</div>
			<div class="w3-col m4"><p> </p></div>
		</div>	
		
		<div class="w3-row w3-margin-bottom"></div>
		<div class="w3-row w3-margin-bottom"></div>
		<div class="w3-row w3-margin-bottom"></div>
		<div class="w3-row w3-margin-bottom"></div>
		<div class="w3-row w3-margin-bottom"></div>
		<hr>			
	</div>
 </form>
<!-- 본문 종료 -->
</body>
</html>