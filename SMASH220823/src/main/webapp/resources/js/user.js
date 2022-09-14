//비밀번호 일치 확인 자바스크립트
function passchk(){
	var firpw = $("#pw").val();
	var secpw = $("#pwconf").val();
	
	if(firpw != secpw){
		$("#alertPW").html("비밀번호가 일치하지 않습니다.");
	}else{
		$("#alertPW").html("비밀번호가 일치합니다.");
	}
}

//비밀번호 유효성 확인 자바스크립트
function passneed(){
	var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	
	var pw = $("#pw").val();
	
	if(reg.test(pw) === false){
		$("#chkPW").html("대문자,소문자,숫자,특수문자를 이용해서 작성해주세요");

	}else{
		$("#chkPW").html("");
	}
};

//주민번호 합치는 자바스크립트
function resi(){
	let resiVal1 = $("#jumin1").val();
	let resiVal2 = $("#jumin2").val();
	
	$(".resiNum").val(resiVal1+"-"+resiVal2);
}

//이메일 자바스크립트
function changeEmail(){
	$("#selectEmail option:selected").each(function(){
		if($(this).val() == "직접입력"){
			$("#secEmail").val("");
			$("#secEmail").attr("readonly",false);
		}else{
			$("#secEmail").val($(this).val());
			$("#secEmail").attr("readonly",true);
			$("#email").val($("#firEmail").val()+"@"+$("#secEmail").val());
		}
	});
}

function insertEmail() {
	$("#firEmail").keyup(function() {
		$("#email").val($("#firEmail").val() + "@" + $("#secEmail").val());
	});

	$("#secEmail").keyup(function() {
		$("#email").val($("#firEmail").val() + "@" + $("#secEmail").val());
	});
}

//주소 자크립트 
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
			if (data.userSelectedType === 'R') {
				//법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname != '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
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
			document.getElementById("Address").value = addr + extraAddr + "(" + data.zonecode + ") ";
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("sample6_detailAddress").focus();
		}
	}).open();
}

//주소 합치는 스크립트
function adr() {
	let adrValue1 = $("#sample6_address").val();
	let adrValue2 = $("#sample6_extraAddress").val();
	let adrValue3 = $("#sample6_detailAddress").val();
	let adrValue4 = $("#sample6_postcode").val();
	
	$("#Address").val(adrValue1+adrValue2+adrValue3+"("+adrValue4 +")");
}

//고정 운동장 자크립트 
function sample7_execDaumPostcode() {
	var geocoder = new daum.maps.services.Geocoder();
					//마커를 미리 생성
					
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
			if (data.userSelectedType === 'R') {
				//법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname != '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
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
			document.getElementById("Sport_Address").value = addr + extraAddr + "(" + data.zonecode + " ) ";
			geocoder.addressSearch(data.address, function(results, status) {
			document.getElementById('getmap').style.width = "500px";
			document.getElementById('getmap').style.height = "300px";
				// 정상적으로 검색이 완료됐으면
				if (status === daum.maps.services.Status.OK) {
					
					var mapContainer = document.getElementById('getmap'), // 지도를 표시할 div
						mapOption = {
							center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
							level: 5 // 지도의 확대 레벨
						};
					//지도를 미리 생성
					var map = new daum.maps.Map(mapContainer, mapOption);
					//주소-좌표 변환 객체를 생성
					
					var marker = new daum.maps.Marker({
						position: new daum.maps.LatLng(37.537187, 127.005476),
						map: map
					});

					var result = results[0]; //첫번째 결과의 값을 활용

					// 해당 주소에 대한 좌표를 받아서
					var coords = new daum.maps.LatLng(result.y, result.x);
					$("#longitude").val(result.x);
					$("#Latitude").val(result.y);
					// 지도를 보여준다.
					mapContainer.style.display = "block";
					map.relayout();
					// 지도 중심을 변경한다.
					map.setCenter(coords);
					// 마커를 결과값으로 받은 위치로 옮긴다.
					marker.setPosition(coords)
				}
                });
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("sample7_detailAddress").focus();
		}
	}).open();
}

// 유효성검사
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
		return false;
	}

	if ($("#idpass").val() == "" || $("#idpass").val() == "T"){
		alert("아이디 중복검사를 해주세요")
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
	
	if ($("#phoneNum").val() == "") {
		alert("전화번호를 입력해주세요");
		$("#phoneNum").focus();
		return false;
	}
	
	if ($("#birth").val() == "") {
		alert("생일을 입력해주세요");
		$("#birth").focus();
		return false;
	}
	
	if ($("#Address").val() == "") {
		alert("상세주소를 입력해주세요");
		$("#sample6_detailAddress").focus();
		return false;
	}
	
	if ($("#Sport_Address").val() == "" && $("#checkAdr").is(": checked")) {
		alert("운동장 주소를 입력해주세요");
		$("#sample7_detailAddress").focus();
		return false;
	}
	
}
///////////////////////////////////
//AJAX
///////////////////////////////////
//회원가입 아이디 중복체크
function idchk(){
	if ($("#id").val() == "") {
		alert("아이디를 입력해주세요.")
		$("#id").focus();
		return false;
	}
	else{
		$.ajax({
		url: "/user/idChk",
		type: "POST",
		data: {
			"id": $("#id").val()
		},
		success: function(data) {
			if (data == "T") {
				$("#id").val("");
				alert("이미 존재하는 아이디입니다.");
				$("#idpass").val("T");
				$("#id").focus();
			}
			else if (data == "F") {
				alert("사용가능한 아이디입니다.")
				$("#idpass").val("F");
			}
		}
		});
	}
}
//업데이트 비밀번호 확인
function pwchk(){
	$.ajax({
		url:"/user/pwChk",
		type:"POST",
		data:{
			"id" : $("#id").val(),
			"pw" : $("#pwconf").val()
		},
		success: function(data){
			if($("#pwconf").val()=="" && data == "F"){
				alert("비밀번호를 입력해주세요");
				$("#pwconf").focus();
				return;
			}
			else if(data == "F"){
				alert("비밀번호가 일치하지 않습니다.");
				$("#pwconf").focus();
				return;
			}
			else if(data == "T"){
				$("#updateform").submit();
				alert("수정되었습니다.");
			}
		},
		error : function(){
					alert("오류");
				}
	});

}

//아이디 찾기
function findid(){
	$.ajax({
		url : "/user/findIDresult",
		type : "POST",
		data : {
			"name" : $("#inputname").val(),
			"email" : $("#inputemail").val()
		},
		success: function(data){
			if(data == 1){
				$("#inputname").val("");
				$("#inputemail").val("");
				$("#inputname").focus();
				alert("이름이나 이메일이 다릅니다.");
			}else{
				alert(data);
				history.go(-1);
			}
		}
	});
}

//비밀번호 찾기
function findpw(){
	$.ajax({
		url : "/user/findPWresult",
		type : "POST",
		data : {
			"id" : $("#inputid").val(),
			"name" : $("#inputname").val(),
			"email" : $("#inputemail").val()
		},
		success: function(data){
			if(data == 1){
				$("#inputid").val("");
				$("#inputname").val("");
				$("#inputemail").val("");
				$("#inputname").focus();
				alert("아이디나 이름,이메일이 다릅니다.");
			}else{
				alert(data);
				history.go(-1);
			}
		}
	});
}