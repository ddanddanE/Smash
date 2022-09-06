<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<body>
	<form action="/user/updatesuccess" method="post" id="updateform">
		이름:
		<input type="text" class="" id="name" maxlength="" name="user_name" value=${user.user_name}>
		<br>
		이메일:
		<input type="text" class="" id="firEmail" value=${firEmail}>@<input type="text" class="" id="secEmail" value=${secEmail}>
		<select class="" id="selectEmail">
			<option value="직접입력">직접입력</option>
			<option value="naver.com">네이버</option>
			<option value="daum.net">다음</option>
			<option value="gmail.com">구글</option>
		</select>
		<input type="text" id="email" name="user_email" value="${user.user_email}">
		<br>
		전화번호:
		<input type="text" class="" id="phoneNum" placeholder="-를 빼고 입력해주세요" maxlength="11" name="user_phonenum" value=${user.user_phonenum}>
		<br>
		생년월일:
		<input type="date" id="birth" name="user_birthday" value=${user.user_birthday}>
		<br>
		주소:
		<br>
		<input type="text" id="sample6_postcode" placeholder="우편번호" readonly="readonly" value="${adr4}">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" ><br>
		<input type="text" id="sample6_address" placeholder="주소" readonly="readonly" value="${adr1}"}><br>
		<input type="text" id="sample6_detailAddress" placeholder="상세주소" onkeyup="adr()" value="${adr3}">
		<input type="text" id="sample6_extraAddress" placeholder="참고항목" readonly="readonly" value="${adr2}">
		
		<input type="text" class="" id="Address" name="user_address" readonly="readonly" value="${user.user_address}"><!-- hidden -->
		<br>
		<input type="checkbox" class="" id="checkAdr" checked="checked">고정 운동장 사용
		<br>
		고정 운동장:
		<br>
		<input type="text" id="sample7_postcode" placeholder="우편번호" readonly="readonly" value="${s_Adr4}">
		<input type="button" id="sample7_btn" onclick="sample7_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample7_address" placeholder="주소" readonly="readonly" value="${s_Adr1}"><br>
		<input type="text" id="sample7_detailAddress" placeholder="상세주소" onkeyup="sportadr()" value="${s_Adr3}">
		<input type="text" id="sample7_extraAddress" placeholder="참고항목" readonly="readonly" value="${s_Adr2}">
		
		<input type="text" class="" id="Sport_Address" name="user_sport_address" readonly="readonly" value="${user.user_sport_address}"><!-- hidden -->
		<br>
		<input type="hidden" id="id" name="user_id" value="${user.user_id}">
		비밀번호:
		<input type="password" class="" id="pw" maxlength="" name="user_pw">
		<br>
		<input type="button" value="수정" id="pwUpdate" >
		<input type="reset" value="취소">
	</form>
</body>
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
<script>
	function adr() {
		let adrValue1 = document.querySelector("#sample6_address").value;
		let adrValue2 = document.querySelector("#sample6_extraAddress").value;
		let adrValue3 = document.querySelector("#sample6_detailAddress").value;
		let adrValue4 = document.querySelector("#sample6_postcode").value;

		document.querySelector("#Address").value = adrValue1 + "@" + adrValue2
				+ "#" + adrValue3 + "(" + adrValue4 + ")";
	}
</script>
<script>
	function sportadr() {
		let sprValue1 = document.querySelector("#sample7_address").value;
		let sprValue2 = document.querySelector("#sample7_extraAddress").value;
		let sprValue3 = document.querySelector("#sample7_detailAddress").value;
		let sprValue4 = document.querySelector("#sample7_postcode").value;

		document.querySelector("#Sport_Address").value = sprValue1 + "@"
				+ sprValue2 + "#" + sprValue3 + "(" + sprValue4 + ")";
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
	$(document).ready(function(){
		$("#pwUpdate").on("click",function(){
			/* 유효성 검사 */
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
			
			$.ajax({
				url: "/user/pwChk",
				type:"POST",
				data: {
					"id" : $("#id").val(),
					"pw" : $("#pw").val()
				},
				success: function(data){
					if($("#pw").val()=="" && data =="F"){
						alert("비밀번호를 입력해주세요.");
						$("#pw").focus();
						return;
					}
					else if(data=="F"){
						alert("비밀번호가 일치하지 않습니다.");
						$("#pw").focus();
						return;
					}
					else if(data=="T"){
						$("#updateform").submit();
						alert("수정되었습니다.");
					}
				},
				error : function(){
					alert("오류");
				}
			});
		});
	});
	</script>
</html>