<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 로그인 Modal-->
<div class="modal fade" id="log-in">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">
					<span style="color: #3232FF;">로그인</span>
				</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">

				<form action="#" name="izone-sign-in" method="post" id="signInForm"
					style="margin-bottom: 0;">
					<table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">                            <!--  span태그는 보통 id나 class를 묶는데 사용된다.-->
								<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idCheck"></span></p>
							</td> 
						</tr>
						
						<!-- required="required" aria-required="true" 아무것도 입력안하고 전송하려고 할때 입력이 안되어있다면 메세지를 띄우는 거라고?-->
						
						<tr>
							<td><input type="text" name="userId" id="signInId"
								class="form-control tooltipstered" maxlength="10"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="최대 10자"></td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="signInPw"
								name="userPw" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="최소 8자"></td>
						</tr>
						
						<tr>
							<td>
								<input type="checkbox" id="auto-login" name="autoLogin"> 자동 로그인
								
							</td>
						
						
						</tr>
						
						
						
						<tr>
							<td style="padding-top: 10px; text-align: center">
								<p><strong>환영합니다.</strong></p>
							</td>
						</tr>
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;"><input
								type="button" value="로그인" class="btn form-control tooltipstered" id="signIn-btn"
								style="background-color: #3232FF; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
							</td>
						</tr>
						<tr>
							<td
								style="width: 100%; text-align: center; colspan: 2; margin-top: 24px; padding-top: 12px; border-top: 1px solid #ececec">
															<!-- data-toggle="modal" 모델을 열어주세요. -->
															<!--  href="#sign-up이 그 대상입니다.-->
								<a class="btn form-control tooltipstered" data-toggle="modal"  
								href="#sign-up" 
								style="cursor: pointer; margin-top: 0; height: 40px; color: white; background-color: orange; border: 0px solid #388E3C; opacity: 0.8">
									회원가입</a>
							</td>
						</tr>
						<tr>
							<td	style="width: 100%; text-align: center; colspan: 2; margin-top: 24px; padding-top: 12px; border-top: 1px solid #ececec">

								<a id="custom-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=1b99bdb2b2d8b2b7b7f7c7ee8f97842b&redirect_uri=http://localhost:8181/ggbro/kakaoLogin&response_type=code">
									<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
								</a>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 회원가입 Modal -->
<!-- 81번 href="#sign-up" 을 id로 받음. -->
<div class="modal fade" id="sign-up" role="dialog"> <!-- dialog 방식 -->
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"> <!-- h4로 modal-title을 썼지만 -->
					<span style="color: #3232FF;">회원가입</span> <!-- 화면에는 회원가입만 나온다. -->
				</h4>
				<button type="button" class="close" data-dismiss="modal">×</button>

			</div>

			<div class="modal-body">

				<form action="#" name="signup" id="signUpForm" method="post"
					style="margin-bottom: 0;">
					<table
						style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">
								<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
								<span id="idChk"></span></p>
							</td>
								
							
						</tr>
						<tr>
							<td><input type="text" name="userId" id="user_id"
								class="form-control tooltipstered" maxlength="14"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="숫자와 영어로 4-10자">
								</td>
							
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="password"
								name="userPw" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="영문과 특수문자를 포함한 최소 8자"></td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="password_check"
								name="pw_check" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="비밀번호가 일치해야합니다."></td>
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userName" id="user_name"
								class="form-control tooltipstered" maxlength="6"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="한글로 최대 6자"></td>
						</tr>
						
						<!--
						<tr>
							<td style="text-align: left">
								<p><strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="email" name="userEmail" id="user_email"
								class="form-control tooltipstered" 
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="ex) izone@produce.com"></td>
						</tr> 
						 -->

						<tr>
							<td style="padding-top: 10px; text-align: center">
								<p><strong>회원가입을 환영합니다.</strong></p>
							</td>
						</tr>
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;">
							<input
								type="button" value="회원가입" 
								class="btn form-control tooltipstered" id="signup-btn"
								style="background-color: #3232FF; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
							</td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
//start JQuery
$(function() {
	
	const getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
	const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	const getName= RegExp(/^[가-힣]+$/);
	const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
	
	//회원가입 검증~~
	//ID 입력값 검증.
	//아이디 중복확인 키업 이벤트(한자한자 쓸대마다 실시간으로 서버와 통신하여 아이디를 알려줌)
	$('#user_id').on('keyup', function() { //131번 user_id(input="text") 부분
		if($("#user_id").val() === ""){ //만약 입력창이 공백이라면,
			$('#user_id').css("background-color", "pink"); //입력창을 분홍색으로 변경하겠다.
			$('#idChk').html('<b style="font-size:14px;color:red;">[아이디는 필수 정보에요!]</b>'); //125번 
			//#idchk <span> </span> 사이에 html이하의 내용을 삽입하라.
			chk1 = false; // chk1 = false로 설정하겠다.
		}
		
		//아이디 유효성검사
		else if(!getIdCheck.test($("#user_id").val())){ //user_id를 test하고, getIdcheck에 있는 문자 내용들과 다르다면,
			$('#user_id').css("background-color", "pink"); //핑크색으로 변경
			$('#idChk').html('<b style="font-size:14px;color:red;">[영문자,숫자 4-14자]</b>'); //idCheck 부분에 이 문자열 삽입
			chk1 = false; // false로 설정.
		} 
		//ID 중복확인 비동기 처리
		else { //상기 if, else if문에 대한 조건이 걸리지 않았다면, 
			//ID 중복확인 비동기 통신
			const id = $(this).val(); // this == #user_id
			console.log(id);
			
			//통신함수 $.ajax()
			$.ajax({
				type: "POST",
				url: "/user/checkId", //어디로 통신하는가?	
				headers: {
	                "Content-Type": "application/json"
	            },
				dataType: "text",  // result값이 ok or No가 들어오므로 text를 써준다.
				data: id,
				success: function(result) { //성공하면 뭐할꺼니?
					if(result === "OK") {
						$("#user_id").css("background-color", "aqua");
						$("#idChk").html("<b style='font-size:14px; color:green;'>[아이디는 사용 가능!]</b>");						
						chk1 = true;
					} else {
						$("#user_id").css("background-color", "pink");
						$("#idChk").html("<b style='font-size:14px; color:red;'>[아이디가 중복됨!]</b>");						
						chk1 = false;
					}
				},
				error: function() {
					console.log("통신 실패!");
				}
			});
		}
	});
	
	//패스워드 입력값 검증.
	$('#password').on('keyup', function() {
		//비밀번호 공백 확인
		if($("#password").val() === ""){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[패스워드는 필수정보!]</b>');
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#password").val()) || $("#password").val().length < 8){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
			chk2 = false;
		} else {
			$('#password').css("background-color", "aqua");
			$('#pwChk').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
			chk2 = true;
		}
		
	});
	
	//패스워드 확인란 입력값 검증.
	$('#password_check').on('keyup', function() {
		//비밀번호 확인란 공백 확인
		if($("#password_check").val() === ""){
		    $('#password_check').css("background-color", "pink");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[패스워드확인은 필수정보!]</b>');
			chk3 = false;
		}		         
		//비밀번호 확인란 유효성검사
		else if($("#password").val() != $("#password_check").val()){
		    $('#password_check').css("background-color", "pink");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[위에랑 똑같이!!]</b>');
			chk3 = false;
		} else {
			$('#password_check').css("background-color", "aqua");
			$('#pwChk2').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
			chk3 = true;
		}
		
	});
	
	//이름 입력값 검증.
	$('#user_name').on('keyup', function() {
		//이름값 공백 확인
		if($("#user_name").val() === ""){
		    $('#user_name').css("background-color", "pink");
			$('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 필수정보!]</b>');
			chk4 = false;
		}		         
		//이름값 유효성검사
		else if(!getName.test($("#user_name").val())){
		    $('#user_name').css("background-color", "pink");
			$('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 한글로 ~]</b>');
			chk4 = false;
		} else { 
			$('#user_name').css("background-color", "aqua");
			$('#nameChk').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
			chk4 = true;
		}
		
	});
	
	
	//회원가입 버튼 클릭 이벤트
	$('#signup-btn').click(function(e) { //186번 회원가입 처리 버튼
		if(chk1 && chk2 && chk3 && chk4) {
			//아이디 정보를 저장할 상수 id
			const id = $("#user_id").val();
			console.log("id: " + id);
			//패스워드 정보
			const pw = $("#password").val();
			console.log("pw: " + pw);
			//이름 정보
			const name = $("#user_name").val();
			console.log("name: " + name);
				
			const user = { //자바스크립트의 객체 Json은 자바스크립트의 표기법을 따른다.
				account: id,
				password: pw,
				name: name
			};
			
			//클라이언트에서 서버와 통신하는 ajax함수(비동기 통신) 
			$.ajax({
				type: "POST", //서버에 전송하는 HTTP요청 방식 회원가입이니까 POST방식.
				url: "/user/", //서버 요청 URI
				headers: {
					"Content-Type": "application/json"
				}, //요청 헤더 정보
				dataType: "text", //응답받을 데이터의 형태
				data: JSON.stringify(user), //서버로 전송할 데이터
				success: function(result) { //함수의 매개변수는 통신성공시의 데이터가 저장될 곳.
					console.log("통신 성공!: " + result);
					if(result === "joinSuccess") {
						alert("회원가입에 성공했습니다!");
						location.href="/";
					} else {
						alert("회원가입에 실패했습니다!");
					}
				}, //통신 성공시 처리할 내용들을 함수 내부에 작성.
				error: function() {
					console.log("통신 실패!");
				} //통신 실패 시 처리할 내용들을 함수 내부에 작성.
			});
		
		} else {
			alert('입력정보를 다시 확인하세요.');			
		}
	});
	
	///////////////////////////////////////////////////////////////////////////////////////////
	
	//로그인 검증~~
	//ID 입력값 검증.
	$('#signInId').on('keyup', function() {
		if($("#signInId").val() == ""){
			$('#signInId').css("background-color", "pink");
			$('#idCheck').html('<b style="font-size:14px;color:red;">[아이디는 필수!]</b>');
			chk1 = false;
		}		
		
		//아이디 유효성검사
		else if(!getIdCheck.test($("#signInId").val())){
			$('#signInId').css("background-color", "pink");
			$('#idCheck').html('<b style="font-size:14px;color:red;">[영문자,숫자 4-14자~]</b>');	  
			chk1 = false;
		} else {
			$('#signInId').css("background-color", "aqua");
			$('#idCheck').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
			chk1 = true;
		}
	});
	
	//패스워드 입력값 검증.
	$('#signInPw').on('keyup', function() {
		//비밀번호 공백 확인
		if($("#signInPw").val() === ""){
		    $('#signInPw').css("background-color", "pink");
			$('#pwCheck').html('<b style="font-size:14px;color:red;">[패스워드는 필수!]</b>');
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#signInPw").val()) || $("#signInPw").val().length < 8){
		    $('#signInPw').css("background-color", "pink");
			$('#pwCheck').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
			chk2 = false;
		} else {
			$('#signInPw').css("background-color", "aqua");
			$('#pwCheck').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
			chk2 = true;
		}
		
	});
	
	//로그인 버튼 클릭이벤트
	$("#signIn-btn").click(function() {
		if(chk1 && chk2) { //369번라인 ID입력값검증에서 chk1,chk2가 통과 되었다면
			//ajax통신으로 서버에서 값 받아오기 //통신으로 서버에서 값을 받아오겠다.
			const id = $('#signInId').val(); //31번라인 id="signid"값을 id에 담겠다.
			const pw = $('#signInPw').val();
			//is()함수는 상태여부를 판단하여 논리값을 리턴합니다.
			//input 태그인데, name 속성값인 autoLogin인 애가 체크 되었나요? 라고 물어보는것이다.
			const autoLogin = $("input[name=autoLogin]").is(":checked"); //체크를 했다면 true, 안했으면 false를 담을것이다.
			
			
			console.log("id: " + id);
			console.log("pw: " + pw);
			console.log("auto: " + autoLogin);
			
			//$.ajax에서 url이 /user/와 통신하는 것이다.
			//UserController에서  /user는 UserVO객체를 받는다.
			//key:value == JSON형태로, 이값을 서버에 전송할것이다.
			
			
			const userInfo = { //userInfo라는 자바스크립트 객체에 자바스크립트 객체로 포장(VO에 담길수 있도록)

					account : id,
					password : pw,
					autoLogin : autoLogin	// url: "/user/loginCheck" 과 통신
							
			};
			
			$.ajax({
				type: "POST",
				url: "/user/loginCheck", //loginCheck와 통신하겠다.
				headers: {
	                "Content-Type": "application/json"
	            },
				data: JSON.stringify(userInfo),  //해석: 자바스크립트 객체를 JSON 문자열로 변환하겠다.

				dataType : "text", //리턴 dataType은 text이다

				success: function(data) { //성공했을경우 매개변수 값(내맘대로 설정)을 받아서

					console.log("result: " + data);	 //출력

					if(data === "idFail") { //자바스크립트는 " 와 '을 혼용사용한다.
						$('#signInId').css("background-color", "pink");
						$('#idCheck').html('<b style="font-size:14px;color:red;">[회원가입 먼저~~]</b>'); 
						$('#signInPw').val(""); // "" (공백)을 넣어라.
						$('#signInId').focus();  //입력창으로 마우스커서를 옮겨라.
						chk2 = false;
						
				    } else if(data === "pwFail") {
						$('#signInPw').css("background-color", "pink");
						$('#signInPw').val("");
						$('#signInPw').focus();
						$('#pwCheck').html('<b style="font-size:14px;color:red;">[비밀번호가 틀렸어요!]</b>');
						chk2 = false;
						
					} else if(data === "loginSuccess") {
						self.location="/"; //홈으로 돌려보냄
					}
				}
			});
			
		} else {
			alert("입력정보를 다시 확인하세요!");
		}
	});
	
});//end JQuery

</script>










