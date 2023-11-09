<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    />
    <title>Document</title>

    <style>
      .container {
        display: flex;
        width: 80%;
        height: 80px;
        margin: 0 auto;
        align-items: flex-end;
      }
      .title {
        background: transparent url('/img/logoHeader.png')
          no-repeat center;
        flex-grow: 3;
        min-width: 298px;
        min-height: 75px;
        margin-right: 50px;
      }
      .popular {
        display: flex;
        background: #e8ebf1;
        flex-grow: 4;
        border: 1px solid lightgray;
        height: 60px;
      }
      .real-time {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-grow: 1;
        min-width: 200px;
      }
      .real-time .sound-icon {
        width: 20px;
        height: 30px;
        background: transparent url('/img/soundIcon.png')
          no-repeat center;
        margin-right: 10px;
      }
      .real-time .real-time-icon {
        font-weight: bold;
      }
      .fest-name {
        display: flex;
        align-items: center;
        flex-grow: 5;
        padding-left: 10px;
        border-left: 3px solid rgba(204, 202, 202, 0.929);
        min-width: 200px;
      }
      .fest-name span {
        font-weight: bold;
      }
      .counter-container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding-right: 50px;
      }
      #increase {
        margin-bottom: 5px;
        background: url('/img/upper.png') no-repeat center;
        text-indent: -9999px;
        width: 49px;
        height: 29px;
        border: none;
      }
      #decrease {
        margin-bottom: 5px;
        background: url('/img/lower.png') no-repeat center;
        text-indent: -9999px;
        width: 49px;
        height: 29px;
        border: none;
      }
      .btn-area {
        display: flex;
        flex-grow: 0.5;
        justify-content: space-around;
        align-items: center;
        margin-left: 50px;
      }

      .btn-area .btn {
        /* background-color: #0356a9; */
        color: black;
        width: 100px;
        height: 30px;
        border-radius: 20px;
        border: none;
        text-align: center;
        text-decoration: none;
      }
      .btn-area .like {
        background: url('/img/like.png') no-repeat center;
        text-indent: -9999px;
        margin-bottom: 7px;
        /* border: 1px solid black; */
        
      }
      .btn-area .like:hover {
        background: url('/img/likeDarker.png') no-repeat center;
        text-indent: -9999px;
        margin-bottom: 7px;
      }
      .login-btn {
        margin-bottom: 7px;

        transition: 0.5s;
        background-size: 200% auto;
        color: white;
        box-shadow: 10 0 20px #ece8e8;
        background-image: linear-gradient(to right, #457acf 0%, #83bad1 51%, #a1c4fd 100%);
      }
      .login-btn:hover{
        background-position: right center; 
      }
      .join-btn {
        margin-bottom: 7px;

        transition: 0.5s;
        background-size: 200% auto;
        color: white;
        box-shadow: 10 0 20px #eee;
        background-image: linear-gradient(to right, #457acf 0%, #83bad1 51%, #a1c4fd 100%);
      }
      .join-btn:hover{
        background-position: right center; 
      }

      /*****모달창*****/
      * {
        margin: 0;
        padding: 0;
      }
      a.button {
        display: inline-block;
        padding: 10px 20px;
        text-decoration: none;
        color: #fff;
        background: #000;
        margin: 20px;
      }
      #modal {
        display: none;
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        background: rgba(0, 0, 0, 0.3);
      }
      .modal-con {
        display: none;
        position: fixed;
        top: 50%;
        left: 15%;
        transform: translate(-50%, -50%);
        width: 300px;
        height: 500px;
        background: #fff;
      }
      .modal-header {
        font-size: 20px;
        padding: 20px;
        background: skyblue;
      }
      .modal-con .con {
        font-size: 15px;
        line-height: 1.3;
        padding: 30px;
      }
      .modal-con .close {
        display: block;
        position: absolute;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        border: 3px solid #000;
        text-align: center;
        line-height: 30px;
        text-decoration: none;
        color: #000;
        font-size: 20px;
        font-weight: bold;
        right: 10px;
        top: 10px;
      }

      .portal{
        font-size: 15px;
      }
     
    </style>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  </head>
  <body>
    <div class="container">
      <a href="${pageContext.request.contextPath}/" class="title"></a>
      <div class="popular">
        <div class="real-time">
          <div class="sound-icon"></div>
          <div class="real-time-icon">실시간 인기많은 축제</div>
        </div>
        <div class="fest-name"><span id="quote">축제0</span></div>
        <div class="counter-container">
          <button id="increase">↑</button>
          <button id="decrease">↓</button>
        </div>
      </div>
      <div class="btn-area">
        <c:if test="${login == null}">
        <a id="loginBtn" class="btn login-btn" href = '${pageContext.request.contextPath}/user/login'>로그인</a>
        <a id="joinBtn" class="btn join-btn" href='${pageContext.request.contextPath}/user/join'>회원가입</a>
        </c:if>
        <c:if test="${login != null}">
        <a id="myPageBtn" class="btn myPage-btn" href='${pageContext.request.contextPath}/user/myPage'>마이페이지</a>
        <a id="logoutBtn" class="btn logout-btn" href='${pageContext.request.contextPath}/user/logout'>로그아웃</a>
        <a
        href="javascript:openModal('modal1');"
        class="btn like"
        >좋아요목록</a
        >
      </c:if>
      </div>
    </div>

    <!-- 좋아요 목록 모달-->
    <div id="modal"></div>
    <div class="modal-con modal1">
      <div class="modal-header">
        <input type="text" placeholder="좋아요 리스트"/>
        <a href="#" class="portal">검색</a>
        <button type="button" class="close-area">X</button>
      </div>
      <div class="board_list_wrap">
        <div class="board_list">
          <div class="ftv1">
            <div class="num">1</div>
            <div class="modal_title"><a href="#">글제목</a></div>
            <div class="likebtn">♡</div>
          </div>
          <div class="ftv2">
            <div class="num">2</div>
            <div class="modal_title"><a href="#">글제목</a></div>
            <div class="likebtn">♡</div>
          </div>
          <div class="ftv3">
            <div class="num">3</div>
            <div class="modal_title"><a href="#">글제목</a></div>
            <div class="likebtn">♡</div>
          </div>
          <div class="ftv4">
            <div class="num">4</div>
            <div class="modal_title"><a href="#">글제목</a></div>
            <div class="likebtn">♡</div>
          </div>
          <div class="ftv5">
            <div class="num">5</div>
            <div class="modal_title"><a href="#">글제목</a></div>
            <div class="likebtn">♡</div>
          </div>
        </div>
      </div>

      <!-- <form action="${pageContext.request.contextPath}" name="pageForm">
              <div class="text-center">
                  <hr>
                  <ul id="pagination" class="pagination pagination-sm">
                      <c:if test="${pc.prev}">
                          <li><a href="#" data-pagenum="${pc.begin-1}">이전</a></li>
                      </c:if>
                      
                      <c:forEach var="num" begin="${pc.begin}" end="${pc.end}">               
                          <li class="${pc.page.pageNo == num ? 'active' : ''}"><a href="#" data-pagenum="${num}">${num}</a></li>
                      </c:forEach>
                      
                      <c:if test="${pc.next}">
                          <li><a href="#" data-pagenum="${pc.end+1}">다음</a></li>
                      </c:if>
                  </ul>
              </div>

              <input type="hidden" name="pageNo" value="${pc.page.pageNo}">
              <input type="hidden" name="amount" value="${pc.page.amount}">
              <input type="hidden" name="keyword" value="${pc.page.keyword}">
              <input type="hidden" name="condition" value="${pc.page.condition}"> 
              
      </div>
      <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
              <input type="hidden" name="condition" value="${pc.page.condition}">  -->
    </div>

    <script>

      function openModal(modalname) {
        $('#modal').fadeIn(300);
        $('.' + modalname).fadeIn(300);
        document.querySelector('.modal1').style.zIndex = '10';
      }

      $('#modal, .close-area').on('click', function () {
        $('#modal').fadeOut(300);
        $('.modal1').fadeOut(300);
      });

      // 헤더 랜덤 축제에 관련된 변수
      var quote = document.getElementById('quote');
      var btn = document.getElementById('increase');
      var btn2 = document.getElementById('decrease');

      // 축제 배열로 담은 것
      var arr = [
    {
      quote: "축제1",
    },
    {
      quote: "축제2",
    },
    {
      quote: "축제3",
    },
    {
      quote: "축제4",
    },
    {
      quote: "축제5",
    },
  ];

    //버튼 눌렀을 때 arr 배열 안의 축제 랜덤으로 출력 btn
    btn.addEventListener('click', function(){

    var random = Math.floor(Math.random() * arr.length);

    quote.textContent = arr[random].quote;
    });

    //버튼 눌렀을 때 arr 배열 안의 축제 랜덤으로 출력 btn2
    btn2.addEventListener('click', function(){

    var random = Math.floor(Math.random() * arr.length);

    quote.textContent = arr[random].quote;
});

    </script>
  </body>
</html>
