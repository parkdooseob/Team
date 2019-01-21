<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<style type="text/css">
</style> 
<script type="text/javascript">	
	var flag=0;
	
	$(document).ready(function() {			
		
		$("#btn5_plus").click(function(){			
			var i = Number($("#money").val());
			$("#money").val(i+5000);
		});
			
		$("#btn5_minus").click(function(){			
			var i = Number($("#money").val());
			if(i<=0){
				i=0;
			}else{
				$("#money").val(i-5000);				
			}
			
		});
		
		$("#btn10_plus").click(function(){			
			var i = Number($("#money").val());
			$("#money").val(i+10000);
		});
		
		$("#btn10_minus").click(function(){			
			var i = Number($("#money").val());
			if(i<=0){
				i=0;
			}else{
				$("#money").val(i-10000);				
			}
		});		
		
		$("#host_id").keyup(function(){
			$("#btn_submit").attr("disabled",true);
			$("#host_id_check").attr("disabled",false);
			$("#p_alert").text("");
		});		
		
		 
		$("#host_id_check").click(function(){	 
			var flag = -1;		
			var host_id = $("#host_id").val();
			var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
			
			$("#btn_submit").attr("disabled",true);
			
			
			if(!getCheck.test(host_id) || host_id ==""){
				alert("형식에 맞게 입력해주세요!");
				 $("#host_id").focus();
				 return false;
			}
			
			if(host_id == "${sessionScope.hdto.host_id }"){
				alert("현재 아이디와 동일합니다.");
				 $("#host_id").focus();
				 $("#btn_submit").attr("disabled",true);
				 return false;
			}
			
			
			alert("통과");
			//ID정규표현식을 이용하여 입력한 ID값이 맞을 경우(통과)
			$.ajax({
				type : "POST",
				url  : "../HostIdCheck.do",
				data: {"host_id": host_id}, //{parameterName, data} 형식
				success: function(result){					
					flag = result;		  	
					
					if(flag==0){
						$("#p_alert").text("*등록된 아이디가 존재 합니다");
						$("#p_alert").css("color","red");
						$("#btn_submit").attr("disabled",true);
						 return false;
					}else if(flag==-1){
						$("#p_alert").text("*사용 가능한 아이디입니다.");
						$("#p_alert").css("color","blue");
						$("#btn_submit").attr("disabled",false);
						$("#host_id_check").attr("disabled",true);
						 return false;
					}		 		
					
				}
			});// ajax 끝	
	
		}); // 중복 체크버튼 이벤트 끝		
		 
		 $("#passwd_chage").click(function(){			
			 $("input[name='passwd']").val("");
			 $("input[name='passwd']").attr("disabled",false);
			 $("input[name='passwd_ch']").attr("disabled",false);
			 $("input[name='passwd_check']").attr("disabled",false);
			 flag=1;
		 });
		
	}); /*  ready 종료 */	
	
	function func_check(){				
		var txt_passwd = $("input[name='host_pass']").val();
		var txt_passwd_ch = $("input[name='passwd_ch']").val();
		var txt_passwd_check = $("input[name='passwd_check']").val();
		// 비밀번호 유효성 검증
		var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
		
		if(flag==1){			
			
			if( "${sessionScope.hdto.host_pass}" != txt_passwd){
				alert("현재 비밀번호가 다릅니다.");
				$("input[name='host_pass']").focus();
				return false;
			}
			
			if(!getCheck.test(txt_passwd_ch) || txt_passwd_ch==""){
				alert("형식에 맞게 입력해주세요");
				$("input[name='passwd_ch']").focus();
				return false;				
			}
			
			if(txt_passwd == txt_passwd_ch){
				alert("현재 비밀번호와 동일합니다.");
				$("input[name='passwd_ch']").focus();
				return false;
			}
			
			if(txt_passwd_ch != txt_passwd_check){
				alert("변경비밀번호가 일치하지 않습니다.");
				$("input[name='passwd_check']").focus();
				return false;
			}
		}
		
		// 유효성이 완료되면 전송
		document.form_hostProfile.submit();
		
	}
		
	
	
</script>
</head>
<body>
<div class="w3-container">
	<div class="w3-row">				
		<div class="w3-col m8 w3-orange w3-left">
			<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge  fa fa-star"></i>&nbsp;&nbsp;&nbsp;호스트 프로필 수정</p> 
		</div>		
	</div>
	<!-- 정보 수정 시작 -->
	<form action="../HostProfileUpdateController.do" method="post" name="form_hostProfile">	
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			호스트 아이디
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m6">
			<input type="text" id="host_id" class="w3-input" placeholder="email" name="host_id" value="${sessionScope.hdto.host_id }">
		</div>
		<div class="w3-col m2">
			<button type="button" class="w3-button w3-white w3-border w3-border-red w3-round-large" id="host_id_check">중복확인</button>	
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 호스트 아이디 변경은 일반계정과는 무관합니다. </small>
		</div>	
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >
		<div class="w3-col m12" id="p_alert"></div>
	</div>
	
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			호스트 닉네임
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			<input type="text"  class="w3-input" placeholder="닉네임" name="host_nic" value="${sessionScope.hdto.host_nic }">
		</div>
		<div class="w3-col m4"></div>
	</div>	
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 예약 회원들에게 보여질 닉네임 입니다. </small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			호스트 휴대전화 번호
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			<input type="text"  class="w3-input" placeholder="휴대전화 번호" name="host_phone" value="${sessionScope.hdto.host_phone }" maxlength="11">
		</div>
		<div class="w3-col m4"></div>
	</div>	
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 예약 회원들에게 제공될 전화번호 입니다. </small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			비밀번호
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m6">
			<input type="password" class="w3-input" placeholder="현재 비밀번호" name="host_pass" value="${sessionScope.hdto.host_pass }" disabled="disabled">
		</div>
		<div class="w3-col m2">	
			<button type="button" class="w3-button w3-white w3-border w3-border-red w3-round-large" id="passwd_chage">비밀번호 변경</button>			
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 호스트 비밀번호 입니다.</small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			<input type="password" class="w3-input" placeholder="변경 비밀번호" name="passwd_ch" disabled="disabled">
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 변경할 비밀 번호를 입력해 주세요(4자~12자 사이의 영문으로 입력)</small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			<input type="password" class="w3-input" placeholder="변경 비밀번호 확인" name="passwd_check" disabled="disabled">
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 변경할 비밀 번호를 다시 한번 입력해 주세요</small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row">
		<div class="w3-col m8">	
			<input type="button" id="btn_submit" class="w3-button w3-block w3-red" value="저 장" onclick="func_check()">
		</div>	
	</div>
	</form>
	<!-- 정보 수정 끝-->
	<!-- 내 포인트 시작 -->
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row">				
		<div class="w3-col m8 w3-orange w3-left">
			<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge far fa-credit-card"></i>&nbsp;&nbsp;&nbsp;내 포인트</p> 
		</div>		
	</div>
	<div class="w3-row" >								
		<div class="w3-col m7">
			<input type="text" class="w3-input" placeholder="포인트" name="point" value="${sessionScope.hdto.point }" disabled="disabled">
		</div>
		<div class="w3-col m1"><p><small>POINT</small>(원)<p></div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">
		<div class="w3-col m8">	
			<input type="submit" class="w3-button w3-block w3-red"  onclick="document.getElementById('credit').style.display='block'" value="포인트 충전 하기">
		</div>	
	</div>
</div>	
	<!-- 모달창 시작 -->
<div class="w3-container">  
  <div id="credit" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">	
	  <header class="w3-container w3-indigo w3-center"> 
	    <span onclick="document.getElementById('credit').style.display='none'" 
	          class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
	    <h2><i class="w3-xxlarge far fa-credit-card"></i>&nbsp;&nbsp;&nbsp;내 포인트 충전</h2>
	  </header>
      <form class="w3-container" action="${path1}./UserLoginController.do" method="post">
        <div class="w3-section">        
          <label><b>내 포인트 </b></label>
          <input id="money" class="w3-input w3-border w3-margin-bottom" type="text" placeholder="금액" name="email" value="${sessionScope.udto.point }" readonly="readonly" required>        		                      
          <button id="btn5_plus" type="button"  class="w3-button w3-yellow">+</button> 5000 <button id="btn5_minus" type="button" class="w3-button w3-yellow">-</button>                    
          <button id="btn10_plus" type="button" class="w3-button w3-yellow">+</button> 10000 <button id="btn10_minus" type="button" class="w3-button w3-yellow">-</button>   	
       
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">충전하기</button>
       <span class="w3-right w3-padding w3-hide-small">실제 "오천원" "만원" 단위로 충전이 가능 합니다.</a></span>
        </div>
      </form>  
      <div class="w3-container w3-border-top w3-padding-16 w3-indigo">
        <button onclick="document.getElementById('credit').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Point 충전은 자유롭게 하실 수 있습니다. </span>
      </div>

    </div>
  </div>
</div>

<!-- 모달창 종료 -->	
</body>
</html>