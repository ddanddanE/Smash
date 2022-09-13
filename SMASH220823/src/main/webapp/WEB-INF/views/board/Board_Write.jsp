<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=71a69cbaf42ac4f9af2ad27683a0d577"></script>

<style type="text/css">
table.type03 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 3px solid #369;
	margin: 20px 10px;
}

table.type03 th {
	width: 147px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

table.type03 td {
	width: 100px;
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}
</style>

</head>
<body>

<div class="container my-5">

	<form name="frm" action="/Board_Write" method="post" class="type03">

		<table class="type03" width="100%">
			
			<tr>
				<th>Board_Id(작성자)</th>
				<td><input type="text" name="Board_Id" value="${sessionScope.id }" readonly="readonly"></td>
			</tr>
			
			<tr>
				<th>Board_Title(매칭 제목)</th>
				<td><input type="text" name="Board_Title"></td>
			</tr>
			

			<tr>
				<th>Board_Sport_Address(경기 장소)</th>
				<td><input type="text" name="Board_Sport_Address" value="${sessionScope.adress }"></td>
			</tr>
			
			<tr>
				<th>Board_Category(게임 종류)</th>
				<td>
				<select name="Board_Category">
					<option value="">종목</option>
					<option value="tennis">테니스</option>
					<option value="pingpong">탁구</option>
					<option value="badminton">배드민턴</option>
				</select>
				</td>

			</tr>
			
			<tr>
				<th>Board_Time(게임 시간)</th>
				<td><input type="date" name="Board_ReservationDate">
					<input type="time" name="Board_ReservationTime">
				</td>

			</tr>
			
			<tr>
				<th>Board_TotalPeople(모집 인원)</th>
				<td>
					<select name="Board_TotalPeople">
					<option value="">인원수</option>
					<option value=1>1</option>
					<option value=2>2</option>
					<option value=3>3</option>
					<option value=4>4</option>
				</select>
				</td>

			</tr>



			<tr>
				<th>Board_Content(매칭 내용)</th>
				<td><textarea style="width : 100%; height : 200px;" name="Board_Content"></textarea></td>
			</tr>
		</table>
		<button type="submit">완료</button>
	</form>

	

</div>


<script>
    function initMap() {
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(37.5758772, 126.9768121), // 지도의 중심좌표
            level: 7 // 지도의 확대 레벨
        };

      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
      var map = new kakao.maps.Map(mapContainer, mapOption); 


      var points = [
        new kakao.maps.LatLng(37.5758772, 126.9768121),
        new kakao.maps.LatLng(37.5868793, 126.9868121),
        new kakao.maps.LatLng(37.5978734, 126.9798121),
      ];

      // 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
      var bounds = new kakao.maps.LatLngBounds();    

      var i, marker;
      for (i = 0; i < points.length; i++) {
          // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
          marker =     new kakao.maps.Marker({ position : points[i] });
          marker.setMap(map);
          
          // LatLngBounds 객체에 좌표를 추가합니다
          bounds.extend(points[i]);
      }
    }
   
    initMap();

    function showinfo(x, y) {
      $('#map-detail').html('');

      $('#myModal').modal('show').on('shown.bs.modal', function (event) {

        var mapDetailContainer = document.getElementById('map-detail'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(x, y), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

        var mapDetail = new kakao.maps.Map(mapDetailContainer, mapOption);
        var mapTypeControl = new kakao.maps.MapTypeControl();
        mapDetail.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

        var markerPosition  = new kakao.maps.LatLng(x, y); 
        var marker = new kakao.maps.Marker({position: markerPosition});
        marker.setMap(mapDetail);
      });
    }

    
</script>
</body>
 <%@include file="../includes/footer.jsp" %> 
</html>