<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	/* <jsp:include page="../Top.jsp" flush="false"/>
		동적 페이지 폴더 변경 */
	String servlet = request.getServletPath();
	String path = "../";
	String path1 = ".";
	String path2 = "../user/";
	if(servlet.equals("/home.jsp") || servlet.equals("/Footer.jsp")){
		path="";
		path1="";
		path2 = "user/";
	}
	request.setAttribute("path", path);
	request.setAttribute("path1", path1);
	request.setAttribute("path2", path2);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<!-- 복사 1 font -->
<link href='https://cdn.rawgit.com/openhiun/hangul/14c0f6faa2941116bb53001d6a7dcd5e82300c3f/nanumbarungothic.css' rel='stylesheet' type='text/css'>

<!-- 복사2 google icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
<!-- awsome icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  

<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function() {	  
	
// 	<!-- 구글 로그인 구현 -->
// 	<!-- 구글 CLIENT_ID : 463533794318-unijrkh4odbf94n2pms494toetghdgir.apps.googleusercontent.com -->
// 	<!-- 구글 redirect_uri : http://localhost:8080/TeamProj/google-->
// 	<!-- 구글 client_secret : Vwl1rm1fi2naT41YevXIP7IB -->
	$("#google-sign").click(function(){	
		var popUrl ="https://accounts.google.com/o/oauth2/v2/auth?"
			+"redirect_uri=http://localhost:8181/TeamProj/google&"
			+"response_type=code&"			
			+"client_id=463533794318-unijrkh4odbf94n2pms494toetghdgir.apps.googleusercontent.com&"
			+"scope=openid%20email&"
			+"access_type=offline";	
			//팝업창에 출력될 페이지 URL
	
	var popOption = "width=400, height=500, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
	
	var win = window.open(popUrl,"",popOption);		
		
   });
// 	<!-- Rest API 키  :  7bed2c2cc35da2f635429b5665085d84 -->
// 	<!-- /PrivateProject1225/kakao -->
// 	<!-- “https://kauth.kakao.com/oauth/authorize?client_id=7bed2c2cc35da2f635429b5665085d84
// 	&redirect_uri=http://localhost:8181/TeamProj/kakao&response_type=code” -->	
	$("#kakao-sign").click(function(){	
		var popUrl ="https://kauth.kakao.com/oauth/authorize?client_id=7bed2c2cc35da2f635429b5665085d84"
			+"&redirect_uri=http://localhost:8181/TeamProj/kakao&response_type=code";	
			//팝업창에 출력될 페이지 URL
	
	var popOption = "width=400, height=500, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
	
	var win = window.open(popUrl,"",popOption);		
		
   });	
	
});
</script>
<style type="text/css">
 .w3-bar-item{
  letter-spacing: 1px;
  font-family: "Nanum Barun Gothic" !important; 
  color: #666666;
  font-style: bold;
}
#drop>a{
	border-bottom: 1px solid #f2f2f2;
}
#drop>a:HOVER{
	border-bottom: 1px solid black;
	trans
}

a{
   text-decoration:none;
}

</style>
</head>
<body>
<!-- Footer -->
	<footer>
		<div class="w3-bottom">			
			<div class="w3-cell-row">
		 		 <div class="w3-container w3-blue-grey w3-cell w3-mobile">
		   		 <p>(주) Share Space | tel: 1644-1234(9am - 6pm) </p>
		 	 </div>
		 	 <div class="w3-container  w3-sand w3-cell w3-mobile">
		 	 	<div class="w3-bar w3-sand w3-right">
					  <a href="#" class="w3-bar-item w3-hover-green">Home</a>
					  <a href="#" class="w3-bar-item w3-hover-green">검색 </a>
					  <a href="#" class="w3-bar-item w3-hover-green">호스팅 </a>
					  <a href="#" class="w3-bar-item w3-hover-green">예약내역 </a>
		  		</div>
		 	 </div>
		 	
		</div>
	</footer>
<!-- Footer 종료  -->



</body>
</html>