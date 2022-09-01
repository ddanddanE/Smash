<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<form action="/user/success" method="post">
		아이디:
		<input type="text" class="" id="id" maxlength="15" name="user_id"> <button>중복확인</button>
		<br>
		비밀번호:
		<input type="password" class="" id="pw" maxlength="" name="user_pw" onkeyup="passneed()"><a id="chkPW"></a>
		<br>
		비밀번호 확인:
		<input type="password" class="" id="pwconf" maxlength="" onkeyup="passchk()"><a class="" id="alertPW"></a>
		<br>
		이름:
		<input type="text" class="" id="name" maxlength="" name="user_name">
		<br>
		주민번호:
		<input type="text" class="firResi" id="firResi" maxlength="6" name="" onkeyup="resi()">
		-
		<input type="password" class="secResi" id="secResi" maxlength="7" name="" onkeyup="resi()">
		<br>
		<input type="hidden" class="resiNum" id="resiNum"  name="user_resinum"><!-- hidden -->
		<br>
		이메일:
		<input type="text" class="" id="firEmail">@<input type="text" class="" id="secEmail">
		<select class="" id="selectEmail">
			<option value="직접입력">직접입력</option>
			<option value="naver.com">네이버</option>
			<option value="daum.net">다음</option>
			<option value="gmail.com">구글</option>
		</select>
		<input type="hidden" id="email" name="user_email">
		<br>
		전화번호:
		<input type="text" class="" id="phoneNum" placeholder="-을 빼고 입력해주세요" maxlength="11" name="user_phonenum">
		<br>
		생년월일:
		<input type="date" id="birth" name="user_birthday">
		<br>
		성별:
		<select class="" id="gender" name="user_gender">
			<option value="M">남자</option>
			<option value="F">여자</option>
		</select>
		<br>
		주소:
		<br>
		<input type="text" id="sample6_postcode" placeholder="우편번호" readonly="readonly">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" ><br>
		<input type="text" id="sample6_address" placeholder="주소" readonly="readonly"><br>
		<input type="text" id="sample6_detailAddress" placeholder="상세주소" onkeyup="adr()" >
		<input type="text" id="sample6_extraAddress" placeholder="참고항목" readonly="readonly">
		
		<input type="hidden" class="" id="Address" name="user_address" readonly="readonly"><!-- hidden -->
		<br>
		 
		<input type="checkbox" class="" id="checkAdr" checked="checked">고정 운동장 사용
		<br>
		고정 운동장:
		<br>
		<input type="text" id="sample7_postcode" placeholder="우편번호" readonly="readonly">
		<input type="button" id="sample7_btn" onclick="sample7_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample7_address" placeholder="주소" readonly="readonly"><br>
		<input type="text" id="sample7_detailAddress" placeholder="상세주소" onkeyup="sportadr()">
		<input type="text" id="sample7_extraAddress" placeholder="참고항목" readonly="readonly">
		
		<input type="hidden" class="" id="Sport_Address" name="user_sport_address" readonly="readonly" value="notsubmit"><!-- hidden -->
		<br>
		<input type="hidden" value="${resultagr}" name="user_agree">
		<!-- hidden -->
		<br>
		<input type="submit" value="회원가입" onclick="return checks()" >
		<input type="reset" value="취소">
	</form>
	
	<!-- 비밀번호 동일 테스트 -->
	<script>
	function passchk(){
		var firpw = $("#pw").val();
		var secpw = $("#pwconf").val();
		if(firpw != secpw){
			$("#alertPW").html("비밀번호가 일치하지 않습니다.");
		} else{
			$("#alertPW").html("비밀번호가 일치합니다.");
		}
	}
	</script>
	
	<!-- 비밀번호 유효성 -->
	<script>
	function passneed(){
		var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
		
		var pw = $("#pw").val();
		
		if(false === reg.test(pw)){
			$("#chkPW").html("대문자,소문자,숫자,특수문자를 이용해서 작성해주세요");
		}else{
			$("#chkPW").html("");
		}
	}
	</script>
	<!--주민번호-->
	<script>
		function resi(){
			let resiValue1 = document.querySelector(".firResi").value;
			let resiValue2 = document.querySelector(".secResi").value;
		
			document.querySelector(".resiNum").value= resiValue1+"-"+resiValue2;
		}
	</script>
	<!-- 이메일 -->
	<script>
		$("#selectEmail").change(function(){
			$("#selectEmail option:selected").each(function(){
				if($(this).val()=="직접입력"){
					$("#secEmail").val("");
					$("#secEmail").attr("readonly",false);
					
				}else{
					$("#secEmail").val($(this).val());
					$("#secEmail").attr("readonly",true);
					$("#email").val($("#firEmail").val()+"@"+$("#secEmail").val());
				}
			})
		});
		$("#firEmail").keyup(function(){
			$("#email").val($("#firEmail").val()+"@"+$("#secEmail").val());
		});
		$("#secEmail").keyup(function(){
			$("#email").val($("#firEmail").val()+"@"+$("#secEmail").val());
		});
	</script>
	<!--주소-->
	<script>
		function adr() {
			let adrValue1 = document.querySelector("#sample6_address").value;
			let adrValue2 = document.querySelector("#sample6_extraAddress").value;
			let adrValue3 = document.querySelector("#sample6_detailAddress").value;
			let adrValue4 = document.querySelector("#sample6_postcode").value;
		
			document.querySelector("#Address").value= adrValue1+adrValue2+adrValue3+"("+adrValue4+")";
		}
	</script>
	<!-- 스포츠주소 -->
	<script>
		function sportadr() {
			let sprValue1 = document.querySelector("#sample7_address").value;
			let sprValue2 = document.querySelector("#sample7_extraAddress").value;
			let sprValue3 = document.querySelector("#sample7_detailAddress").value;
			let sprValue4 = document.querySelector("#sample7_postcode").value;
		
			document.querySelector("#Sport_Address").value= sprValue1+sprValue2+sprValue3+"("+sprValue4+")";
		}
	</script>
	
	<script>
		$("#checkAdr").change(function(){
			 if($("#checkAdr").is(":checked")){
				 $("#sample7_postcode").attr("disabled", false);
				 $("#sample7_address").attr("disabled", false);
				 $("#sample7_extraAddress").attr("disabled", false);
				 $("#sample7_detailAddress").attr("disabled", false);
				 $("#sample7_btn").attr("disabled", false);
			 }else{
				 $("#sample7_postcode").attr("disabled", true);
				 $("#sample7_address").attr("disabled", true);
				 $("#sample7_extraAddress").attr("disabled", true);
				 $("#sample7_detailAddress").attr("disabled", true);
				 $("#sample7_btn").attr("disabled", true);
				
				$("#sample7_address").val("");
				$("#sample7_extraAddress").val("");
				$("#sample7_detailAddress").val("");
				$("#sample7_postcode").val("");
				$("#Sport_Address").val("notsubmit");
			 }
		});
	</script>
	<!-- 주소 자크립트 -->
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = extraAddr;
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                document.getElementById("Address").value = addr+extraAddr+"("+data.zonecode+")";
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
	</script>
	
	<!--고정 운동장 자크립트 -->
	<script>
	function sample7_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = extraAddr;
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample7_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample7_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample7_postcode').value = data.zonecode;
                document.getElementById("sample7_address").value = addr;
                document.getElementById("Sport_Address").value = addr+extraAddr+"("+data.zonecode+")";
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample7_detailAddress").focus();
            }
        }).open();
    }
    </script>
	<script>
		function checks() {
			var hobbyCheck = false;
			var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
			var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
			var getName = RegExp(/^[가-힣]+$/);
			var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
			var buf = new Array(13); //주민등록번호 배열

			if ($("#id").val() == "") {
				alert("아이디를 입력해주세요.")
				$("#id").focus();
				return false;
			}
			if (!getCheck.test($("#id").val())) {
				alert("형식에 맞게 입력해주세요");
				$("#id").val("");
				$("#id").focus();
				return false;
			}
			if ($("#pw").val() == "") {
				alert("패스워드 입력바람");
				$("#password").focus();
				return false;
			}
			if ($("#id").val() == $("#pw").val()) {
				alert("아이디와 비밀번호가 같습니다");
				$("#pw").val("");
				$("#pw").focus();
				return false;
			}
			if ($("#chkPW").html() != "") {
				alert("형식에 맞게 입력해주세요");
				$("#pw").val("");
				$("#pw").focus()
				return false;
			}
			if ($("#pwconf").val() == "") {
				alert("패스워드 확인란을 입력해주세요");
				$("#pwconf").focus();
				return false;
			}
			if ($("#alertPW").html() != "비밀번호가 일치합니다.") {
				alert("비밀번호가 상이합니다");
				$("#pw").val("");
				$("#pwconf").val("");
				$("#pw").focus();
				return false;
			}
			if ($("#name").val() == "") {
				alert("이름을 입력해주세요");
				$("#name").focus();
				return false;
			}
			if (($("#firResi").val() == "") || ($("#secResi").val() == "")) {
				alert("주민등록번호를 입력해주세요");
				$("#firResi").focus();
				return false;
			}
			if ($("#firEmail").val() == "" || $("#secEmail").val() == "") {
				alert("이메일을 입력해주세요");
				$("#firEmail").focus();
				return false;
			}
			if($("#phoneNum").val()==""){
				alert("전화번호를 입력해주세요");
				$("#phoneNum").focus();
				return false;
			}
			if($("#birth").val()==""){
				alert("생일을 입력해주세요");
				$("#birth").focus();
				return false;
			}
			if($("#Address").val()==""){
				alert("상세주소를 입력해주세요");
				$("#sample6_detailAddress").focus();
				return false;
			}
			if($("#Sport_Address").val()=="" && $("#checkAdr").is(":checked")){
				alert("운동장 주소를 입력해주세요");
				$("#sample7_detailAddress").focus();
				return false;
			}
		}
	</script>
</body>
</html>