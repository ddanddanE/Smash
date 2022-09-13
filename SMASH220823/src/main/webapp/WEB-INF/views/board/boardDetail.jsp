<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardDetail</title>
</head>
<body>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">${detail.Board_Title }</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <div class="border mb-3" id="map-detail" style="width:100%;height:200px;"></div>
        <p>
          <div><span class="badge badge-pill badge-primary mr-2" style="width:80px;">개설자</span>${detail.Board_Id }</div>
          <div><span class="badge badge-pill badge-primary mr-2" style="width:80px;">시 간</span><fmt:formatDate value="${detail.Board_ReservationDate}" pattern="yyyy년 MM월 dd일"/></div>
          <div><span class="badge badge-pill badge-primary mr-2" style="width:80px;">경기 종류</span>단식</div>
          <div class="d-flex">
              <div class="mr-2"><span class="badge badge-pill badge-primary" style="width:80px;">내 용</span></div>
              <div>${detail.Board_Content }</div>
          </div>
        </p>
        <form>
          <div class="form-group mb-0">
            <label for="recipient-name" class="col-form-label">신청내용:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-block" onclick="sendMatch()">신청하기</button>
      </div>
    </div>
  </div>
</div>

<script>
function sendMatch() {
    alert("신청하였습니다.");
    $('#myModal').modal('hide');
    $('#map-detail').html('');
  }
</script>

</body>
</html>