<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardlist</title>
</head>
<body>

<main>
  <section class="d-flex">
    <div class="w-50" style="height: calc(100vh - 57px);overflow-y: auto;">
      <form class="px-5 pt-5 pb-3">
        <div class="form-row">
          <div class="col">
            <div class="form-group">
              <select class="form-control" name="category">
                <option value="">카테고리</option>
                <option value="teniss">테니스</option>
                <option value="soccer">축구</option>
                <option value="basketball">농구</option>
                <option value="bedminton">배드민터</option>
                <option value="baseball">야구</option>
              </select>
            </div>

          </div>
          <div class="col">
            
              <div class="form-group">
                <select class="form-control" name="area">
                  <option value="">지역</option>
                  <option value="teniss">종로구</option>
                  <option value="soccer">서대문구</option>
                  <option value="basketball">은평구</option>
                  <option value="bedminton">도봉구</option>
                </select>
              </div>
          </div>

          <div class="col">
            <input type="text" class="form-control" placeholder="이름검색">
          </div>
          <div class="col">
            <button type="button" class="btn btn-primary align-bottom mr-1">검색</button>
          </div>
		  <div><button type="button" class="btn btn-primary align-bottom mr-1" href="board/Board_Write">글쓰기</button></div>
        </div>
      </form>

	<c:forEach var="match" items="${list}">
		<tr type="hidden">${match.Board_Num }</tr>
      <div class="px-5 pt-0 pb-5">
        <div class="row">

          <div class="col-xl-4 col-lg-6 col-md-12 mb-3">
            <div class="card h-100">
              <img src="data:image/jpeg;base64,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" class="card-img-top" alt="...">
              <div class="position-absolute" style="top:10px;left:10px">
                <img src="https://cdn-icons-png.flaticon.com/512/1084/1084807.png" width="30">
              </div>
              <div class="card-body">
                <h5 class="card-title">${match.Board_Title }</h5>
                <p class="card-text">
                  <div><i class="bi bi-calendar3 mr-2 text-dark"></i> <fmt:formatDate value="${match.Board_ReservationDate}" pattern="yyyy년 MM월 dd일"/></div>
                  <div><i class="bi bi-geo-alt-fill mr-2 text-dark"></i>${match.Board_Sport_Address }</div>
                  <div><i class="bi bi-people-fill mr-2 text-dark"></i>${match.Board_Category }</div>
                </p>
                <button type="button" class="btn btn-primary btn-block" href="/board/boardDetail?Board_Num=${match.Board_Num}">내용보기</button>
                
                
                <!-------------------------------------------------------------------------------------------------------------------  
                <!-- <button onclick="showinfo(37.5758772, 126.9768121)" class="btn btn-outline-primary btn-block">내용보기</button>-->
                ---------------------------------------------------------------------------------------------------------------------->
                
                
              </div>
            </div>
          </div>
        </div>
      </div>
      </c:forEach>
      
    </div>

    <div class="w-50">
      <div id="map" style="width:100%;height:100%;"></div>
    </div>
  </section>
</main>


</body>
</html>