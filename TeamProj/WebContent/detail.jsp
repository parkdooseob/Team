<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script
  src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha256-3edrmyuQ0w65f8gfBsqowzjJe2iM6n0nKciPUp8y+7E="
  crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<style type="text/css">
*{
	box-sizing: border-box;
}

body{
margin: 0px;
padding: 0px;

}

.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}

</style>

<script type="text/javascript">

$(document).ready(function() {
	
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
	
	$('#a1').click(function() {		
		$('#I1').html("ī��");		
		$('#Demo').removeClass("w3-show");
	});
	$('#a2').click(function() {		
		$('#I1').html("���ǽ�");		
		$('#Demo').removeClass("w3-show");

	});
	$('#a3').click(function() {		
		$('#I1').html("��");		
		$('#Demo').removeClass("w3-show");

	});
	
	$('#b1').click(function() {		
		$('#I2').html("�λ�");		
		$('#Demo1').removeClass("w3-show");
	});
	$('#b2').click(function() {		
		$('#I2').html("����");		
		$('#Demo1').removeClass("w3-show");

	});
	$('#b3').click(function() {		
		$('#I2').html("�뱸");		
		$('#Demo1').removeClass("w3-show");

	});
	
	$('#c1').click(function() {		
		$('#I3').html("1�ð�");		
		$('#Demo2').removeClass("w3-show");
	});
	$('#c2').click(function() {		
		$('#I3').html("2�ð�");		
		$('#Demo2').removeClass("w3-show");

	});
	$('#c3').click(function() {		
		$('#I3').html("3�ð�");		
		$('#Demo2').removeClass("w3-show");

	});
	
	
});

function myFunction() {
	  var x = document.getElementById("Demo");
	  if (x.className.indexOf("w3-show") == -1) {  
	    x.className += " w3-show";
	  } else { 
	    x.className = x.className.replace(" w3-show", "");
	  }
	}
	
function myFunction1() {
	  var y = document.getElementById("Demo1");
	  if (y.className.indexOf("w3-show") == -1) {  
	    y.className += " w3-show";
	  } else { 
	    y.className = y.className.replace(" w3-show", "");
	  }
	}
	
function myFunction2() {
	  var z = document.getElementById("Demo2");
	  if (z.className.indexOf("w3-show") == -1) {  
	    z.className += " w3-show";
	  } else { 
	    z.className = z.className.replace(" w3-show", "");
	  }
	}

</script>

</head>
<body>

	<div style="width:100%;">		
			
			<jsp:include page="Top.jsp" flush="false"/>
			<!-- ����� ��Ź Navbar -->
				<!-- <div class="w3-bar w3-green" style="width: 100%; position: fixed; z-index: 9999; height:50px">
				  <div class="w3-bar-item">London</div>
				  <div class="w3-bar-item">Paris</div>
				  <div class="w3-bar-item">Tokyo</div>
				</div> -->	
				
			<!-- ���� ����  -->
			<div style="float: left; width: 50%; margin-top: 50px">
				<!-- Search ����  -->
				<div style="width: 100%;">

					<div class="w3-dropdown-click" style="float: left; width: 25%; border: 1px solid #1e90ff;">
					  <button id="I1" onclick="myFunction()" class="w3-button w3-black" style="width: 100%">��������</button>
					  <div id="Demo" class="w3-dropdown-content w3-bar-block w3-border">
					     <span class="w3-bar-item w3-button" id="a1">ī��</span>
					     <span class="w3-bar-item w3-button" id="a2">���ǽ�</span>
					     <span class="w3-bar-item w3-button" id="a3">��</span>
					  </div>
					</div>
					
					<div class="w3-dropdown-click" style="float: left; width: 25%">
					  <button id="I2" onclick="myFunction1()" class="w3-button w3-black" style="width: 100%; border: 1px solid #1e90ff; ">����</button>
					  <div id="Demo1" class="w3-dropdown-content w3-bar-block w3-border">
					     <span class="w3-bar-item w3-button" id="b1">�λ�</span>
					     <span class="w3-bar-item w3-button" id="b2">����</span>
					     <span class="w3-bar-item w3-button" id="b3">�뱸</span>
					  </div>
					</div>
					
					<div class="w3-dropdown-click" style="float: left; width: 25%">
					  <button  id="I3" onclick="myFunction2()" class="w3-button w3-black" style="width: 100%; border: 1px solid #1e90ff;">�̿�ð�</button>
					  <div id="Demo2" class="w3-dropdown-content w3-bar-block w3-border">
					     <span class="w3-bar-item w3-button" id="c1">1�ð�</span>
					     <span class="w3-bar-item w3-button" id="c2">2�ð�</span>
					     <span class="w3-bar-item w3-button" id="c3">3�ð�</span>
					  </div>
					</div>
					
					<div style="width: 25%; display: inline-block;">
  						<button class="w3-button w3-black" style="width: 100%; border: 1px solid #1e90ff;" type="submit"><b>ã��</b></button>
					</div>				
				</div>
			<!-- Search ���� �� -->	
			
			<!-- ���� ���� , ������ ���� ���� -->
				<table width="100%">
					<tr align="center" height="300px;">
						<td width="40%"><div style="width: 90%"><img src="building_6_01.PNG" width="100%"></div></td>
						<td width="50%" style="text-align:left; position: relative;">
							<div style="position: absolute; top: 0px;">
								<h1 style="margin-bottom: -3px;">�Ｚ �� ���̽�</h1>
								<div class="starRev">
								  <span class="starR1 on">��1_����</span>
								  <span class="starR2">��1_������</span>
								  <span class="starR1">��2_����</span>
								  <span class="starR2">��2_������</span>
								  <span class="starR1">��3_����</span>
								  <span class="starR2">��3_������</span>
								  <span class="starR1">��4_����</span>
								  <span class="starR2">��4_������</span>
								  <span class="starR1">��5_����</span>
								  <span class="starR2">��5_������</span>
								  <p style="font-size: 24px; color: gray; display: inline;">&nbsp;&nbsp; �ı� : 1636��</p>
								</div>
							</div>
							<div style="margin-top: 50px;">
								<p style="margin-bottom: 0px"><b>���</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
								<p style="margin-top: 0px"><b>����</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
							</div>
							<div>
								<p><b>�������</b></p>
							</div>
							
						</td>
						<td width="10%" align="right"></td>
					</tr>	
					<tr align="center" height="300px;">
						<td width="40%"><div style="width: 90%"><img src="building_6_02.PNG" width="100%"></div></td>
						<td width="50%" style="text-align:left; position: relative;">
							<div style="position: absolute; top: 0px;">
								<h1 style="margin-bottom: -3px;">�Ｚ �� ���̽�</h1>
								<div class="starRev">
								  <span class="starR1 on">��1_����</span>
								  <span class="starR2">��1_������</span>
								  <span class="starR1">��2_����</span>
								  <span class="starR2">��2_������</span>
								  <span class="starR1">��3_����</span>
								  <span class="starR2">��3_������</span>
								  <span class="starR1">��4_����</span>
								  <span class="starR2">��4_������</span>
								  <span class="starR1">��5_����</span>
								  <span class="starR2">��5_������</span>
								  <p style="font-size: 24px; color: gray; display: inline;">&nbsp;&nbsp; �ı� : 1636��</p>
								</div>
							</div>
							<div style="margin-top: 50px;">
								<p style="margin-bottom: 0px"><b>���</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
								<p style="margin-top: 0px"><b>����</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
							</div>
							<div>
								<p><b>�������</b></p>
							</div>
							
						</td>
						<td width="10%" align="right"></td>
					</tr>	
					<tr align="center" height="300px;">
						<td width="40%"><div style="width: 90%"><img src="building_6_03.PNG" width="100%"></div></td>
						<td width="50%" style="text-align:left; position: relative;">
							<div style="position: absolute; top: 0px;">
								<h1 style="margin-bottom: -3px;">�Ｚ �� ���̽�</h1>
								<div class="starRev">
								  <span class="starR1 on">��1_����</span>
								  <span class="starR2">��1_������</span>
								  <span class="starR1">��2_����</span>
								  <span class="starR2">��2_������</span>
								  <span class="starR1">��3_����</span>
								  <span class="starR2">��3_������</span>
								  <span class="starR1">��4_����</span>
								  <span class="starR2">��4_������</span>
								  <span class="starR1">��5_����</span>
								  <span class="starR2">��5_������</span>
								  <p style="font-size: 24px; color: gray; display: inline;">&nbsp;&nbsp; �ı� : 1636��</p>
								</div>
							</div>
							<div style="margin-top: 50px;">
								<p style="margin-bottom: 0px"><b>���</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
								<p style="margin-top: 0px"><b>����</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
							</div>
							<div>
								<p><b>�������</b></p>
							</div>
							
						</td>
						<td width="10%" align="right"></td>
					</tr>	
					<tr align="center" height="300px;">
						<td width="40%"><div style="width: 90%"><img src="building_6_04.PNG" width="100%"></div></td>
						<td width="50%" style="text-align:left; position: relative;">
							<div style="position: absolute; top: 0px;">
								<h1 style="margin-bottom: -3px;">�Ｚ �� ���̽�</h1>
								<div class="starRev">
								  <span class="starR1 on">��1_����</span>
								  <span class="starR2">��1_������</span>
								  <span class="starR1">��2_����</span>
								  <span class="starR2">��2_������</span>
								  <span class="starR1">��3_����</span>
								  <span class="starR2">��3_������</span>
								  <span class="starR1">��4_����</span>
								  <span class="starR2">��4_������</span>
								  <span class="starR1">��5_����</span>
								  <span class="starR2">��5_������</span>
								  <p style="font-size: 24px; color: gray; display: inline;">&nbsp;&nbsp; �ı� : 1636��</p>
								</div>
							</div>
							<div style="margin-top: 50px;">
								<p style="margin-bottom: 0px"><b>���</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
								<p style="margin-top: 0px"><b>����</b>&nbsp;&nbsp; �ִ� 6�ð� &nbsp;&nbsp; <img alt="���డ" src="re.JPG">&nbsp;&nbsp; <span style="font-size: 28px;"> 25,000��</span></p>
							</div>
							<div>
								<p><b>�������</b></p>
							</div>
							
						</td>
						<td width="10%" align="right"></td>
					</tr>	
					
				</table>
			
			</div>
			
			<div style="width: 50%; position: fixed; right: 0; margin-top: 50px; height:100%">
					
					<div id="map" style="width:100%; height:100%;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55bb85418a60e0c25e4702007dc138fe"></script>
						<script>
						var container = document.getElementById('map');
						var options = {
							center: new daum.maps.LatLng(33.450701, 126.570667),
							level: 3
						};
				
						var map = new daum.maps.Map(container, options);
						</script>		
			</div>	
			
				
		</div>	

</body>
</html>