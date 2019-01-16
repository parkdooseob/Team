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
	$(document).ready(function() {		
		if(${sessionScope.login_val} !=0){
			$("#email").attr("readonly",true).attr("disabled",false);		
		}
		
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
		
		
	});
</script>
</head>
<body>
	<div class="w3-row">				
		<div class="w3-col m8 w3-dark-grey w3-left">
			<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge fa fa-user"></i>&nbsp;&nbsp;&nbsp;프로필 수정</p> 
		</div>		
	</div>	
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			이메일
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			<input type="text" id="email" class="w3-input" placeholder="email" name="email" value="${sessionScope.udto.email }">
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● SNS계정은 이메일이 없을 수도 있습니다. </small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			닉네임
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			<input type="text"  class="w3-input" placeholder="닉네임" name="name" value="${sessionScope.udto.name }">
		</div>
		<div class="w3-col m4"></div>
	</div>	
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 공개 프로필에는 닉네임만 표시됩니다. </small>
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
		<div class="w3-col m8">
			<input type="text" class="w3-input" placeholder="비밀번호" name="pass" >
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● SNS계정은 비밀번호가 없을 수도 있습니다</small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row" >								
		<div class="w3-col m8">
			<input type="text" class="w3-input" placeholder="비밀번호 확인" name="pass">
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">								
		<div class="w3-col m8">
			<small>● 비밀번호 확인</small>
		</div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row">
		<div class="w3-col m8">	
			<input type="submit" class="w3-button w3-block w3-red" value="저 장">
		</div>	
	</div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row w3-margin-top" ></div>
	<div class="w3-row">				
		<div class="w3-col m8 w3-dark-grey w3-left">
			<p>&nbsp;&nbsp;&nbsp;<i class="w3-xxlarge far fa-credit-card"></i>&nbsp;&nbsp;&nbsp;내 포인트</p> 
		</div>		
	</div>
	<div class="w3-row" >								
		<div class="w3-col m7">
			<input type="text" class="w3-input" placeholder="포인트" name="point" value="${sessionScope.udto.point }" readonly="readonly">
		</div>
		<div class="w3-col m1"><p><small>POINT</small>(원)<p></div>
		<div class="w3-col m4"></div>
	</div>
	<div class="w3-row">
		<div class="w3-col m8">	
			<input type="submit" class="w3-button w3-block w3-red"  onclick="document.getElementById('credit').style.display='block'" value="포인트 충전 하기">
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