<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.city {display:none}
</style>
<body>
<!-- 충전 만 -->
	<div class="w3-container">
		
		<button	onclick="document.getElementById('recharge').style.display='block'"
			class="w3-button w3-black">충전하기
		</button>

		<div id="recharge" class="w3-modal">
			<div class="w3-modal-content w3-card-4 w3-animate-top"	style="width: 500px;">
				<header class="w3-container w3-pale-red w3-border-bottom">
					<span onclick="document.getElementById('recharge').style.display='none'
					"class="w3-button w3-pale-red w3-large w3-display-topright">&times;</span>
					<h5>일반 충전</h5>
				</header>
				<div class="w3-container">
					<div>사진, 아이디, 현재 돈</div>
					<div>충전 금액
						<label for="dfdf" style="displays:none">
						<input type="radio" name="gender" value="male" class="w3-btn"> Male<br>
						<input type="radio" name="gender" value="female"> Female<br>
						<input type="radio" name="gender" value="other"> Other
					</div>
					<div>충전 금액</div>
					<p>Some text..</p>
					<p>Some text..</p>
				</div>
				<footer class="w3-container w3-light-grey w3-padding">
   					<button class="w3-button w3-right w3-white w3-border" 
  					 onclick="document.getElementById('recharge').style.display='none'">Close</button>
 				 </footer>
			</div>
		</div>
	
	</div>


 
</body>
</html> 
