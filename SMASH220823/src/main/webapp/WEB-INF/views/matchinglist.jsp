<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>

  <main>
    <section class="container">
      <div class="row mb-4">
        <div class="col-3">

          <div class="text-center p-3 mb-3 border rounded">
            <img src="/resources/images/profile1.jpg" class="rounded-circle" width="100%">
            <div class="p-3">ID입니다</div>
          </div>

          <div class="list-group">
            <a href="memberinfo.html" class="list-group-item list-group-item-action ">회원정보</a>
            <a href="matchinglist.html" class="list-group-item list-group-item-action active">나의 매칭목록</a>
            <a href="matchdetail.html" class="list-group-item list-group-item-action">나의 신청내역</a>
             <a href="match_receive" class="list-group-item list-group-item-action">신청받은내역</a>
            <a href="reportlist.html" class="list-group-item list-group-item-action">신고받은 내용</a>
            <a href="rate_receive" class="list-group-item list-group-item-action">받은 평점</a>
            </div>

        </div>
        <div class="col-9">
          <h2 class="mb-3"><i class="bi bi-list-stars"></i> 나의 매칭목록</h2>
          <div class="table-responsive">
            <table class="table table-hover table-bordered">
              <tbody>
                <tr class="table-primary text-center">
                  <th style="width: 80px;">번호</th>
                  <th>제목</th>
                  <th style="width: 150px;">날짜</th>
                  <th style="width: 200px;">신고/평점</th>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-info btn-sm mr-1" onclick="popResult()">결과작성</button>
                  </td>
                 
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-info btn-sm mr-1" onclick="popResult()">결과작성</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-info btn-sm mr-1" onclick="popResult()">결과작성</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-outline-info" onclick="popReport()">신고하기</button>
                    <button class="btn btn-success btn-sm mr-1" onclick="popRate()">평점주기</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-outline-info" onclick="popReport()">신고하기</button>
                    <button class="btn btn-success btn-sm mr-1" onclick="popRate()">평점주기</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-danger btn-sm" onclick="popReport()">신고하기</button>
                    <button class="btn btn-success btn-sm mr-1" onclick="popRate()">평점주기</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-danger btn-sm" onclick="popReport()">신고하기</button>
                    <button class="btn btn-success btn-sm mr-1" onclick="popRate()">평점주기</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-danger btn-sm" onclick="popReport()">신고하기</button>
                    <button class="btn btn-success btn-sm mr-1" onclick="popRate()">평점주기</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-danger btn-sm" onclick="popReport()">신고하기</button>
                    <button class="btn btn-success btn-sm mr-1" onclick="popRate()">평점주기</button>
                  </td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                  <td class="text-center">
                    <button class="btn btn-danger btn-sm" onclick="popReport()">신고하기</button>
                    <button class="btn btn-success btn-sm mr-1" onclick="popRate()">평점주기</button>
                  </td>
                </tr>

              </tbody>
            </table>
          </div>

          <nav>
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <span class="page-link">이전</span>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item active" aria-current="page">
                <span class="page-link">
                  2
                  <span class="sr-only">(current)</span>
                </span>
              </li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#">다음</a>
              </li>
            </ul>
          </nav>

        </div>
 
      </div>
   

    </section>

  </main>
  <!--신고modal-->
  <div class="modal fade" id="modalReport" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">신고하기</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">로그인된 ID</label>
              <input type="text" class="form-control" id="recipient-name">
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">신고할 ID</label>
              <input type="text" class="form-control" id="recipient-name">
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">신고제목</label>
              <input type="text" class="form-control" id="recipient-name">
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">신고내용</label>
              <textarea class="form-control" id="message-text"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
         <button type="button" class="btn btn-primary" onclick="sendReport()">신고하기</button>
        </div>
      </div>
    </div>
  </div>

  <!--결과modal-->
  <div class="modal fade" id="modalResult" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">결과작성</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            
            <div class="form-group text-center">
              <label class="mr-5 font-weight-bold">결과</label>

              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                <label class="form-check-label" for="inlineRadio1">승</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2">무</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                <label class="form-check-label" for="inlineRadio3">패</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                <label class="form-check-label" for="inlineRadio3">노쇼</label>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="sendResult()">결과저장하기</button>
        </div>
      </div>
    </div>
  </div>


  <!-- 평점modal-->
  <div class="modal fade" id="modalRate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">평점주기</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Recipient:</label>
              <input type="text" class="form-control" id="recipient-name">
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Message:</label>
              <textarea class="form-control" id="message-text"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="sendRate()">평점주기</button>
        </div>
      </div>
    </div>
  </div>

 <script>
    function popReport(){
      $('#modalReport').modal('show');


    }

    function popRate(){
      $('#modalRate').modal('show');

    }

    function popResult(){
      $('#modalResult').modal('show');

    }

    function sendReport(){
      alert("신고완료되었습니다");

      $('#modalReport').modal('hide');


    }

    function sendRate(){
      alert("평점주기완료되었습니다");
      $('#modalRate').modal('hide');

    }

    function sendResult(){
      alert("결과가 전송되었습니다");
      $('#modalResult').modal('hide');

    }
  </script>



 <%@include file="./includes/footer.jsp"%>
