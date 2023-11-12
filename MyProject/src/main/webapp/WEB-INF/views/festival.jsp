<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="./include/header.jsp" %>

    <!DOCTYPE html>
    <html>

    <head>
      <!-- <script src="./jquery-3.4.1.min.js"></script>
    <link
      rel="stylesheet"
      href="./bootstrapt/css/bootstrap.min.css"
    />
    <script src="./bootstrapt/js/bootstrap.min.js"></script> -->
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <link href="../../resources/static/css/bootstrap.css" rel="stylesheet" />

      <meta charset="UTF-8" />
      <title>Insert title here</title>
    </head>
    <style>
      html,
      body {
        /* background-image: url(); */
        /* background: url(MyProject\src\main\webapp\resources\static\img\mountain.jpg);
      background-size: cover; */
        height: 900px;
        width: 100%;
        margin: 0;
        overflow: hidden;
        -ms-overflow-style: none;
      }

      ::-webkit-scrollbar {
        display: none;
      }

      body>#wrap {
        display: flex;
        flex-direction: column;
        justify-content: center;
        width: 100%;
        height: 100%;
        text-align: center;

        /* justify-content: space-around;*/
        margin-top: 5px;
        margin-bottom: 5px;
        /* vertical-align: middle; */
        /* align-content: space-around; */
      }

      body>#wrap>#wrap2 {
        position: absolute;
        top: 1px;
        left: 570px;
        display: flex;
        flex-direction: row;
        margin-top: 2px;
        margin-bottom: 3px;
        z-index: 10;
      }

      /* 지도 영역 */
      body>#wrap>.map-area {
        position: absolute;
        top: 50px;
        flex-direction: row;
        width: 2200px;
        height: 100%;
        margin-bottom: 10px;
      }

      body>#wrap #map {
        /* display: inline-block; */
        width: 100%;
        height: 100%;

        z-index: 1;
      }

      /*버튼 정렬 */
      .btn-area {
        text-align: center;
        justify-content: center;
        /* align-content: space-around;
      z-index: 10; */
      }

      .btn-area>.spring-select {
        position: relative;
        right: 100px;
        display: flex;
        width: 535px;
        justify-content: space-between;
      }


      .btn-area>.del-area {
        position: relative;
        right: 130px;
        display: flex;
        /* width: 535px; */
        justify-content: space-between;
      }

      /* 버튼 스타일 */
      .custom-btn {
        display: inline-block;
        width: 100px;
        border: none;
        height: 40px;
        color: #fff;
        border-radius: 10px;
        padding: 10px 25px;
        font-family: 'Lato', sans-serif;
        font-weight: 500;
        cursor: pointer;
        transition: all 0.3s ease;
        position: relative;
        display: inline-block;
        box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, 0.5),
          7px 7px 20px 0px rgba(0, 0, 0, 0.1), 4px 4px 5px 0px rgba(0, 0, 0, 0.1);
        outline: none;
        transition: 0.5s;
        background-size: 200% auto;
        color: white;
        box-shadow: 10 0 20px #f0ecec;
        background-image: linear-gradient(to right,
            #457acf 0%,
            #83bad1 51%,
            #a1c4fd 100%);
      }

      .custom-btn:hover {
        background-position: right center;
      }

      .del-btn {
        width: 100px;
        height: 40px;
        color: #fff;
        border-radius: 5px;
        padding: 10px 10px;
        font-family: 'Lato', sans-serif;
        font-weight: 500;
        background: transparent;
        cursor: pointer;
        transition: all 0.3s ease;
        position: relative;
        display: inline-block;
        box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, 0.5),
          7px 7px 20px 0px rgba(0, 0, 0, 0.1), 4px 4px 5px 0px rgba(0, 0, 0, 0.1);
        outline: none;
      }

      .btn-16 {
        border: none;
        color: #000;
      }

      .btn-16:after {
        position: absolute;
        content: '';
        width: 0;
        height: 100%;
        top: 0;
        left: 0;
        direction: rtl;
        z-index: -1;
        box-shadow: -7px -7px 20px 0px #fff9, -4px -4px 5px 0px #fff9,
          7px 7px 20px 0px #0002, 4px 4px 5px 0px #0001;
        transition: all 0.3s ease;
      }

      /* .btn-16:hover {
      color: #000;
    }
    .btn-16:hover:after {
      left: auto;
      right: 0;
      width: 100%;
    } */
      .btn-16:active {
        top: 2px;
      }

      /* 검색창 스타일 */
      .search {
        position: relative;
        left: -120px;
        width: 400px;
        justify-content: center;
        border: 1px solid #bbb;
        border-radius: 10px;
        padding: 8px 8px;
        font-size: 15px;
        margin-bottom: -3px;
      }

      /* 검색 버튼 스타일 */
      #search {
        position: absolute;
        width: 17px;
        top: 10px;
        right: 1px;
        margin: 0;
      }

      #search_btn {
        top: 6px;
        right: 10px;
        position: absolute;
        background-image: url(/resources/static/img/search.png);
        background-color: white;
        border: none;
        width: 24px;
        height: 24px;
        cursor: pointer;
        background-size: 24px;
      }

      input {
        width: 348px;
        position: relative;
        left: -13px;
        padding: 4px;
        border: none;
        font-size: 15px;
      }

      /* 마우스 오버레이 박스 */
      .area {
        position: relative;
        width: 30px;
        height: 20px;
        padding: 15px 10px;
        font-size: 16px;
        font-family: monospace;
        font-weight: bold;
        text-align: center;
        border-radius: 10px;
        margin-bottom: 30px;
        background-color: black;
        top: -50px;
      }

      /* 부트스트랩 모달 */
      .modal-open {
        overflow: hidden;
      }

      .modal {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        z-index: 1040;
        display: none;
        overflow: hidden;
        -webkit-overflow-scrolling: touch;
        outline: 0;
      }

      .modal.fade .modal-dialog {
        -webkit-transition: -webkit-transform 0.3s ease-out;
        -o-transition: -o-transform 0.3s ease-out;
        transition: transform 0.3s ease-out;
        -webkit-transform: translate(0, -25%);
        -ms-transform: translate(0, -25%);
        -o-transform: translate(0, -25%);
        transform: translate(0, -25%);
      }

      .modal.in .modal-dialog {
        -webkit-transform: translate(0, 0);
        -ms-transform: translate(0, 0);
        -o-transform: translate(0, 0);
        transform: translate(0, 0);
      }

      .modal-open .modal {
        overflow-x: hidden;
        overflow-y: auto;
      }

      .modal-dialog {
        position: relative;
        width: auto;
        margin: 10px;
      }

      .modal-content {
        position: relative;
        background-color: #fff;
        -webkit-background-clip: padding-box;
        background-clip: padding-box;
        border: 1px solid #999;
        border: 1px solid rgba(0, 0, 0, 0.2);
        border-radius: 6px;
        outline: 0;
        -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
        box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
      }

      .modal-backdrop {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        background-color: #000;
      }

      .modal-backdrop.fade {
        filter: alpha(opacity=0);
        opacity: 0;
      }

      .modal-backdrop.in {
        filter: alpha(opacity=50);
        opacity: 0.5;
      }

      .modal-header {
        min-height: 16.42857143px;
        padding: 15px;
        border-bottom: 1px solid #e5e5e5;
      }

      .modal-header .close {
        margin-top: -2px;
      }

      .modal-title {
        margin: 0;
        line-height: 1.42857143;
      }

      .modal-body {
        position: relative;
        padding: 15px;
      }

      .modal-footer {
        padding: 15px;
        text-align: right;
        border-top: 1px solid #e5e5e5;
      }

      .modal-footer .btn+.btn {
        margin-bottom: 0;
        margin-left: 5px;
      }

      .modal-footer .btn-group .btn+.btn {
        margin-left: -1px;
      }

      .modal-footer .btn-block+.btn-block {
        margin-left: 0;
      }

      .modal-scrollbar-measure {
        position: absolute;
        top: -9999px;
        width: 50px;
        height: 50px;
        overflow: scroll;
      }

      @media (min-width: 768px) {
        .modal-dialog {
          width: 600px;
          margin: 30px auto;
        }

        .modal-content {
          -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
          box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
        }

        .modal-sm {
          width: 300px;
        }
      }

      @media (min-width: 992px) {
        .modal-lg {
          width: 900px;
        }
      }


    /* 모달창 조절 */
    .modal-body {
      padding: 15px;
    }

      .modal-content>.row {
        margin: 0px;
      }

      .profile {
        position: absolute;
        top: 0px;
        left: 0px;
      }

      .title {
        padding-left: 50px;
      }

      p {
        margin: 0px;
      }

      /* area-reply - 상세페이지 댓글*/
      .area-reply {
        margin-bottom: 60px;
      }

      .area-reply a {
        text-decoration: none;
        font-size: 13px;
        line-height: 1.69;
        color: #909090;
      }

      .area-reply .item-reply {
        position: relative;
        display: flex;
        flex-wrap: wrap;
        width: 100%;
        padding: 25px 0 24px 0;
        border-bottom: 1px solid #eee;
      }

      .area-reply .box-content {
        width: calc(100% - 64px);
      }


    .form-group {
      display: flex;
      align-items: center;
      margin-bottom: 10px; /* 원하는 간격 설정 */
    }

    .col-form-label {
      flex: 0 0 100px; /* 레이블의 너비 조정 */
    }

      /*방문자 댓글창*/
      /* .area-reply .box-content .text {
        font-size: 14px;
        line-height: 1.43;
        color: #000000;
        word-break: break-all;
        border: 1px solid #e6e6e6;
        padding: 10px;
        box-shadow: 2px 5px 8px 0px #e7e7e794;
        margin: 0 0px 3px 0;
        position: relative;
        border-radius: 20px 20px 20px 20px;
        background-color: #f5f5f5;
        margin-right: 45px;
      }

      .area-reply .box-content .text:after {
        content: '';
        position: absolute;
        left: 0;
        top: 50%;
        width: 0;
        height: 0;
        border: 0.625em solid transparent;
        border-right-color: #e6e6e6;
        border-left: 0;
        border-top: 0;
        margin-top: -0.312em;
        margin-left: -0.625em;
        margin-right: 0;
        right: auto;
      }

      .area-reply .list-reply-comment .item-reply:last-child {
        margin-bottom: 0;
      } */

      /*관리자 댓글*/
      .area-reply .text {
        margin: 0 0px 3px 0;
        position: relative;
        border-radius: 20px 20px 20px 20px;
        background-color: #b0c4de;
        margin-left: 45px;
      }

      .area-reply .text:after {
        content: '';
        position: absolute;
        right: 0;
        top: 50%;
        width: 0;
        height: 0;
        border: 0.625em solid transparent;
        border-left-color: #e6e6e6;
        border-right: 0;
        border-top: 0;
        margin-top: -0.312em;
        margin-right: -0.625em;
        margin-left: 0;
        left: auto;
      }

      /* ----- media query - mobile ----- */
      @media screen and (max-width: 1060px) {
        .area-reply {
          margin-bottom: 30px;
        }

        .area-reply .item-reply {
          padding: 25px 0 19px 0;
        }

        .area-reply .box-content {
          margin-top: -3px;
        }

        /* .area-reply .box-content .box-meta {
          line-height: 1.59;
        } */

        .area-reply .box-content .text {
          width: 100%;
          margin-bottom: 8px;
          font-size: 12px;
        }

        /* .area-reply .list-reply-comment .box-meta {
          margin-top: 6px;
        } */
      }

      /* .comments {
        max-width: 100%;
        margin-top: 10px;
        border-top: 1px solid #e6e6e6;
        padding-left: 10px;
        padding-right: 10px;
        padding-bottom: 10px;
      } */

      ul li {
        padding: 30px 0 25px;
        border-top: 1px solid #e6e6e6;
        position: relative;
        min-height: 48px;
      }

      ul li:first-child {
        border: none;
      }

      ul li ul li {
        padding: 26px 0 0 60px;
        border-top: 0;
        border-bottom: 0;
      }

      /* ul li .author-meta {
        position: absolute;
        overflow: hidden;
        top: 30px;
        height: 48px;
        left: 0;
        right: 0;
        padding: 4px 0 0 60px;
      }

      ul li ul li .author-meta {
        top: 26px;
        left: 60px;
      } */

      ul li span {
        display: inline-block;
      }

      ul li a {
        text-decoration: none;
        color: #000;
      }

      ul li .control {
        position: absolute;
        top: 33px;
        right: 0;
      }

      ul li ul li .control {
        top: 29px;
      }

      ul li .control a {
        margin: 0 2px;
        text-decoration: none;
        font-size: 12px;
        color: #999;
      }

      ul li p {
        position: relative;
        margin: 29px 0 0 60px;
        font-size: 0.875em;
        line-height: 1.5714;
        color: #666;
      }


    .textarea {
      display: block;
      width: 100%;
      margin-top: 10px;
      margin-bottom: 10px;
      padding: 10px;
      resize: none;
      box-sizing: border-box;
      border-radius: 6px;

      background-color: #f5f5f5;
    }

      .textarea {
        display: block;
        width: 100%;
        margin-top: 10px;
        margin-bottom: 10px;
        padding: 10px;
        resize: none;
        box-sizing: border-box;
        background-color: #f5f5f5;
        border: none;
      }

      .submit {
        margin-bottom: 10px;
        text-align: right;
      }

      /*댓글 작성 버튼*/
      .btn {
        display: inline-block;
        position: relative;
        width: 80px;
        padding: 0 10px;
        border: 1px solid #00008b;
        text-decoration: none;
        text-align: left;
        background-color: #00008b;
        font-size: 12px;
        text-align: center;
        color: #ffffff;
        border-radius: 20px 20px 20px 20px;
        -webkit-transition: color .2s, background-color .2s;
        transition: color .2s, background-color .2s;
      }

      .btn:hover {
        background-color: #00008b;
        border-color: #00008b;
        color: #ffffff;
        font-weight: bold;
      }

      #replytext {
        width: 530px;
      }

      /* area-reply - 상세페이지 댓글****************************************/
      .area-reply {
        margin-bottom: 60px;
      }

      .area-reply a {
        text-decoration: none;
        font-size: 13px;
        line-height: 1.69;
        color: #909090;
      }

      .area-reply .item-reply {
        position: relative;
        display: flex;
        flex-wrap: wrap;
        width: 100%;
        padding: 25px 0 24px 0;
        border-bottom: 1px solid #eee;
      }

      .area-reply .box-content {
        width: calc(100% - 64px);
      }

      /*방문자 댓글창 사용자 댓글창*/
      .area-reply .box-content .text {
        font-size: 14px;
        line-height: 1.43;
        color: #000000;
        word-break: break-all;
        border: 1px solid #e6e6e6;
        padding: 10px;
        box-shadow: 2px 5px 8px 0px #e7e7e794;
        margin: 0 0px 3px 0;
        position: relative;
        border-radius: 20px 20px 20px 20px;
        background-color: #f5f5f5;
        margin-right: 45px;
      }

      .area-reply .box-content .text:after {
        content: '';
        position: absolute;
        left: 0;
        top: 50%;
        width: 0;
        height: 0;
        border: 0.625em solid transparent;
        border-right-color: #e6e6e6;
        border-left: 0;
        border-top: 0;
        margin-top: -0.312em;
        margin-left: -0.625em;
        margin-right: 0;
        right: auto;
      }

      .area-reply .list-reply-comment .item-reply:last-child {
        margin-bottom: 0;
      }

      /*관리자 댓글 본인댓글창*/
      .area-reply .rp_admin .text {
        margin: 0 0px 3px 0;
        position: relative;
        border-radius: 20px 20px 20px 20px;
        background-color: #b0c4de;
        margin-left: 45px;
      }

      .area-reply .rp_admin .text:after {
        content: '';
        position: absolute;
        right: 0;
        top: 50%;
        width: 0;
        height: 0;
        border: 0.625em solid transparent;
        border-left-color: #e6e6e6;
        border-right: 0;
        border-top: 0;
        margin-top: -0.312em;
        margin-right: -0.625em;
        margin-left: 0;
        left: auto;
      }

      /* ----- media query - mobile ----- */
      @media screen and (max-width: 1060px) {
        .area-reply {
          margin-bottom: 30px;
        }

        .area-reply .item-reply {
          padding: 25px 0 19px 0;
        }

        .area-reply .box-content {
          margin-top: -3px;
        }

        .area-reply .box-content .text {
          width: 100%;
          margin-bottom: 8px;
          font-size: 12px;
        }
      }

      .comments .comment-list ul li .control {
        position: absolute;
        top: 33px;
        right: 0;
      }

      .comments .comment-list ul li ul li .control {
        top: 29px;
      }

      .comments .comment-list ul li .control a {
        margin: 0 2px;
        text-decoration: none;
        font-size: 12px;
        color: #999;
      }

      .comments .comment-list ul li p {
        position: relative;
        margin: 29px 0 0 60px;
        font-size: 0.875em;
        line-height: 1.5714;
        color: #666;
      }

      .textarea {
        display: block;
        width: 100%;
        margin-top: 10px;
        margin-bottom: 10px;
        padding: 10px;
        resize: none;
        box-sizing: border-box;
        border-radius: 20px 20px 20px 20px;
        background-color: #f5f5f5;
      }

      .comments .comment-form input::-webkit-input-placeholder,
      .comments .comment-form textarea::-webkit-input-placeholder {
        color: #d6d6d6;
      }

      .comments .comment-form textarea {
        display: block;
        width: 100%;
        margin-top: 10px;
        margin-bottom: 10px;
        padding: 10px;
        resize: none;
        box-sizing: border-box;
        background-color: #f5f5f5;
        border: none;
      }

      .comments .comment-form .field .secret label:before {
        content: "";
        display: inline-block;
        width: 18px;
        height: 18px;
        margin-right: 9px;
        border: 1px solid #e1e1e1;
        vertical-align: middle;
        background-color: #fff;
      }

      .submit {
        margin-bottom: 10px;
        text-align: right;
      }

      /*댓글 작성 버튼*/
      .btn {
        display: inline-block;
        position: relative;
        width: 80px;
        padding: 0 10px;
        border: 1px solid #00008b;
        text-decoration: none;
        text-align: left;
        background-color: #00008b;
        font-size: 12px;
        text-align: center;
        color: #ffffff;
        border-radius: 20px 20px 20px 20px;
        -webkit-transition: color .2s, background-color .2s;
        transition: color .2s, background-color .2s;
      }

      .btn:hover {
        background-color: #00008b;
        border-color: #00008b;
        color: #ffffff;
        font-weight: bold;
      }

      /* // area-reply - 상세페이지 댓글*/
      
      .link-inner {
      text-align: center;
    }
    .modal-footer {
      height: 50px;
    }
    /* // area-reply - 상세페이지 댓글*/
  </style>

    <body>
      <div id="wrap">
        <div id="wrap2">
          <!-- 계절선택버튼 -->
          <div class="btn-area">
            <div class="btn-area spring-select">
              <button class="custom-btn find-btn1">봄</button>
              <button class="custom-btn find-btn2">여름</button>
              <button class="custom-btn find-btn3">가을</button>
              <button class="custom-btn find-btn4">겨울</button>
            </div>
            <!-- 마커 지우기 버튼 -->
            <div class="btn-area del-area">
              <button class="del-btn btn-16">마커 지우기</button>
            </div>
          </div>
          <!-- 검색창 -->
          <div class="search">
            <input class="search_box find" name="search_box" type="text" placeholder="축제명 입력" />
            <button id="search_btn" class="search_box" type="button"></button>
          </div>
        </div>
        <!-- 지도영역 -->
        <div class="map-area">
          <div id="map"></div>
        </div>
      </div>
    <!-- 모달 -->
    <div
      class="modal fade"
      id="testModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div
        class="modal-dialog"
        role="document"
      >
        <div class="modal-content">
          <div class="modal-header">
            <h5
              class="modal-title"
              id="exampleModalLabel"
            >
              축제명
            </h5>
            <small id="date">축제기간</small>
            <button
              class="close"
              type="button"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">X</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="form-group">
              <label
                for="place"
                class="col-form-label"
                >장소</label
              >
              <div
                class="mb-3"
                id="place"
              >
                축제장소
              </div>
            </div>
            <div class="form-group">
              <label
                for="roadAddr"
                class="col-form-label"
                >도로명 주소</label
              >
              <div
                class="mb-3"
                id="roadAddr"
              >
                주소
              </div>
            </div>
            <div class="form-group">
              <label
                for="phone"
                class="col-form-label"
                >전화번호</label
              >
              <div
                class="mb-3"
                id="phone"
              >
                전화번호
              </div>
            </div>
            <div class="form-group">
              <label
                for="content"
                class="col-form-label"
                >내용</label
              >
              <div
                class="mb-3"
                id="content"
              >
                축제내용
              </div>
              <!-- <label
        for="url"
        class="col-form-label"
        >홈페이지:</label
      >
      <div
        class="mb-3"
        id="urlBox"
      >
        <a
          id="url"
          href="##"
          target="_blank"
          ><span id="aContent"></span
        ></a>
      </div> -->
          </div>
          <div class="link-inner">
            <a
              href="##"
              class="glyphicon-thumbs-up"
              ><i class="glyphicon glyphicon-thumbs-up"></i>좋아요</a
            >
            <!-- src\main\webapp\resources\static\img\like.png -->

            <a href="##" id="ssk"><i class="glyphicon glyphicon-comment"></i>댓글달기</a>
            <a
              id="share"
              data-ftvNumForShare="1"
              href="javascript:shareMessage()"
              ><i class="glyphicon glyphicon-share-alt"></i>공유하기</a
            >
          </div>
          <div class="modal-footer">
            <a
              class="btn"
              id="modalY"
              href="#"
              target="_blank"
              >예</a
            >
            <button
              class="btn"
              type="button"
              data-dismiss="modal"
            >
              닫기
            </button>
          </div>
        </div>
          
        <!-- 댓글창 -->
        <div
          class="ressk"
          style="display: none"
        >
          <div
            class="textarea"
            style="display: flex; justify-content: space-between"
          >
            <textarea
              name="cols"
              id="replytext"
              cols="30"
              rows="4"
              placeholder="댓글을 남겨주세요."
            ></textarea>
            <div class="submit">
              <button
                type="submit"
                class="btn regist"
                onclick=""
              >
                <a> 등록 </a>
              </button>
            </div>
          </div>
          <!-- area-reply -->
          <div class="area-reply">
            <s_rp_container>
              <ul class="list-reply">
                <s_rp_rep>
                  <li
                    id=""
                    class="item-reply"
                  >
                    <div class="box-content">
                      <div class="control">
                        <p
                          class="text"
                          aria-placeholder="댓글 입력창 입니다."
                        ></p>
                      </div>

                    </div>
                  </li>
                </s_rp_rep>
              </ul>
            </s_rp_container>
          </div>
        </div>
      </div>

      <script>
        $('#ssk').click(function () {
          $('.ressk').toggle();
        });
      </script>
      <script src="script.js"></script>

      <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5c6f403205c2f67b836ea3a0e1fc26f5&libraries=services,clusterer,drawing"></script>
      <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <script src="../../resources/static/js/bootstrap.js"></script>
      <!-- 카카오 공유하기 api -->
    <script
      src="https://t1.kakaocdn.net/kakao_js_sdk/2.4.0/kakao.min.js"
      integrity="sha384-mXVrIX2T/Kszp6Z0aEWaA8Nm7J6/ZeWXbL8UpGRjKwWe56Srd/iyNmWMBhcItAjH"
      crossorigin="anonymous"
    ></script>
    <script>
      Kakao.init('a5c28d99bb31ae88bf5a825a4fd77ac6'); // 사용하려는 앱의 JavaScript 키 입력
    </script>
        
      <script>

        //댓글 등록 
        window.onload = function () {

          document.getElementById('replyregist').onclick = () => {
            console.log('댓글 등록 이벤트 발생!');

            let replytext = document.getElementById('replytext').value;

            //요청에 관련된 정보 객체
            const reqObj = {
              method: 'post',
              headers: {
                'Content-Type': 'application/json'
              },
              body: JSON.stringify({
                'content': replytext,
                'userId': userIdVal,
                'ftvNum': getFtvNum,
              })
            };

            fetch('${pageContext.request.contextPath}/reply/new', reqObj)
              .then(res => res.text())
              .then(data => {
                console.log('통신 성공!: ', data);
                //등록성공 -> 다음 등록을 위해 비워둬야함.
                document.getElementById('content').value = '';
                //등록 후 댓글 목록 함수를 비동기식으로 표현함
                getList(getFtvNum);
              });
          }// 댓글 등록 끝.

        }

        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
          mapOption = {
            center: new kakao.maps.LatLng(36.050701, 129.370667), // 지도의 중심좌표
            level: 13, // 지도의 확대 레벨
          };

        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        let map = new kakao.maps.Map(mapContainer, mapOption),
          customOverlay = new kakao.maps.CustomOverlay({});

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();

        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new kakao.maps.ZoomControl();
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

        //1. 시도 json 읽어오기
        var jsonLocation = '/resources/external_json/sido.json';

        let detailMode = false; // level에 따라 다른 json 파일 사용
        let level = '';
        let polygons = [];
        // var polygonPath = [];
        var points = [];
        // 지도 클릭시 색상 변경
        let colorflag = false;
        let moveflag = false;

        // init('json/sido.json');
        $.getJSON(jsonLocation, function (data) {
          var data = data.features;
          var coordinates = [];
          var name = '';
          $.each(data, function (i, val) {
            if (val.geometry.type == 'Polygon') {
              coordinates = val.geometry.coordinates;
              name = val.properties.SIG_KOR_NM;

              displayArea(coordinates, name); // 호출!!
            }
          });
        });              

        var listMarker = [];
        console.log('listMarker: ', listMarker);
        var marker;
        var content = '';
        const deleteMarker = () => {
          for (var i = 0; i < listMarker.length; i++) {
            console.log('delete marker!');
            listMarker[i].setMap(null);
          }
          listMarker = []; // 배열 비우기

          console.log('listMarker: ', listMarker);
        };

        //마커 지우기 버튼
        document.querySelector('.del-btn').addEventListener('click', () => {
          deleteMarker();
        });

        //줌 전역으로?
        //폴리곤 표시
        function displayArea(coordinates, name) {
          var polygonPath = [];
          $.each(coordinates[0], function (i, coordinate) {
            var point = new Object();
            point.x = coordinate[1];
            point.y = coordinate[0];
            points.push(point);
            polygonPath.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
          });

          var polygon = new kakao.maps.Polygon({
            path: polygonPath, // 그려질 다각형의 좌표 배열입니다
            strokeWeight: 3, // 선의 두께입니다
            strokeColor: '#39DE2A', // 선의 색깔입니다 초록
            //strokeColor: '#0356a9', // 선의 색깔입니다 파랑
            strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
            strokeStyle: 'longdash', // 선의 스타일입니다
            // fillColor: '#A2FF99', // 채우기 색깔입니다
            fillColor: '#EFFFED', // 채우기 색깔입니다
            fillOpacity: 0.7, // 채우기 불투명도 입니다
          });

          polygon.setMap(map); // 지도에 다각형 표시
          // polygons.push(polygon); // 폴리곤 제거하기 위한 배열(추가함)

          // 줌 이벤트
          kakao.maps.event.addListener(map, 'zoom_changed', function () {
            level = map.getLevel();

            // console.log('현재 지도 레벨은 ' + level + ' 입니다');

            if (!detailMode && level <= 10) {
              // level 에 따라 다른 json 파일을 사용한다.
              console.log('디테일 모드다!');
              detailMode = true;
              moveflag = true;
              // colorflag = true; // 색 없어야
              removePolygon();
              init('/resources/external_json/sig.json');
            } else if (detailMode && level > 10) {
              // level 에 따라 다른 json 파일을 사용한다.
              console.log('디테일 모드 아니다!');
              detailMode = false;
              // colorflag = false; // 색 있어야
              removePolygon();
              init('/resources/external_json/sido.json');
            }
          }); // 줌 이벤트 끝

          kakao.maps.event.addListener(
            polygon,
            'mouseover',
            function (mouseEvent) {
              // console.log('마우스 오버!');
              polygon.setOptions({
                fillColor: '#09f',
              });

              customOverlay.setPosition(mouseEvent.latLng);
              // customOverlay.setContent('<div class="area">' + name + '</div>');
              customOverlay.setMap(map);
            }
          );

          kakao.maps.event.addListener(
            polygon,
            'mousemove',
            function (mouseEvent) {
              // colorflag = false; // 색 있어야
              customOverlay.setPosition(mouseEvent.latLng);
            }
          );

          // 폴리곤 클릭 시 색깔 변경
          kakao.maps.event.addListener(polygon, 'click', function (mouseEvent) {
            console.log('polygon color change!');
            // for (let i = 0; i < 5; i++) {
            // console.log('반복문 실행?');
            map.setLevel(11); // level에 따라 이벤트 변경
            var latlng = mouseEvent.latLng;
            // 지도의 중심을 부드럽게 클릭한 위치로 이동시킵니다.
            map.panTo(latlng);
            polygon.setOptions({ fillColor: '#00ff0000' });
            // }
          });

          kakao.maps.event.addListener(
            polygon,
            'mouseout',
            function (mouseEvent) {
              // console.log('마우스아웃!');
              //customOverlay.setPosition(mouseEvent.latLng); // 추가
              polygon.setOptions({ fillColor: '#EFFFED' });
              // 00ff0000
              // setTimeout(customOverlay.setMap(null), 10);
              customOverlay.setMap(null);
            }
          );

          // 폴리곤 클릭 시 해당 구역의 축제 마커 찍기
          kakao.maps.event.addListener(polygon, 'click', function (mouseEvent) {
            console.log('other region click!');
            deleteMarker();
            fetch('${pageContext.request.contextPath}/festival/ftvList', {
              method: 'post',
              headers: {
                'Content-Type': 'text/plain',
              },
              body: name,
            })
              .then((res) => res.json())
              .then((data) => {
                console.log('응답받은 데이터: ', data);
                //요청한 행정구역명에 맞는 축제 마커 찍기
                for (let i = 0; i < data.length; i++) {
                  // 주소로 좌표를 검색합니다
                  geocoder.addressSearch(
                    data[i].roadAddr,
                    function (result, status) {
                      // 정상적으로 검색이 완료됐으면
                      if (status === kakao.maps.services.Status.OK) {
                        var coords = new kakao.maps.LatLng(
                          result[0].y,
                          result[0].x
                        );

                        // 결과값으로 받은 위치를 마커로 표시합니다
                        marker = new kakao.maps.Marker({
                          map: map,
                          position: coords,
                        });
                        // 생성된 마커를 배열에 추가합니다
                        listMarker.push(marker);

                        // 마커에 표시할 인포윈도우를 생성합니다
                        var infowindow = new kakao.maps.InfoWindow({
                          // content: data[i].ftvName, // 인포윈도우에 표시할 내용
                          content:
                            '<div style="width:200px; padding:5px;">' +
                            data[i].ftvName +
                            '</div>',
                        });

                        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                        // 이벤트 리스너로는 클로저를 만들어 등록합니다
                        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                        kakao.maps.event.addListener(
                          marker,
                          'mouseover',
                          makeOverListener(map, marker, infowindow)
                        );
                        kakao.maps.event.addListener(
                          marker,
                          'mouseout',
                          makeOutListener(infowindow)
                        );

                        // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                        kakao.maps.event.addListener(
                          marker,
                          'click',
                          function () {
                            console.log('클릭한 마커의 번호: ', data[i].ftvNum);

                            document.getElementById(
                              'exampleModalLabel'
                            ).textContent = data[i].ftvName;
                            document.getElementById('date').textContent =
                              data[i].startDate + ' ~ ' + data[i].endDate;
                            document.getElementById('place').textContent =
                              data[i].place;
                            document.getElementById('roadAddr').textContent =
                              data[i].roadAddr;
                            document.getElementById('phone').textContent =
                              data[i].phone;
                            document.getElementById('content').textContent =
                              data[i].ftvContent;
                            // document
                            //   .getElementById('url')
                            //   .setAttribute('href', data[i].url);
                            // document.getElementById('aContent').textContent =
                            //   data[i].url;

                            //data 묻히기
                            document
                              .getElementById('share')
                              .setAttribute(
                                'data-ftvNumForShare',
                                data[i].ftvNum
                              );

                            document
                              .getElementById('modalY')
                              .setAttribute('href', data[i].url);
                            document.getElementById('modalY').textContent =
                              '축제 상세보기';

                            $('#testModal').modal('show');

                            document
                              .getElementById('share')
                              .addEventListener('click', (e) => {
                                //모달 안의 공유하기 버튼 눌렀을 때 이벤트
                                const bno =
                                  document.getElementById('share').dataset
                                    .ftvNumForShare;
                                console.log('bno: ', bno);
                                shareMessage();
                              });

                            // overlay.setMap(map);
                            getFtvNum = data[i].ftvNum;

                            /* 카카오 공유하기 */
                            function shareMessage() {
                              Kakao.Share.sendDefault({
                                objectType: 'location',
                                address: data[i].roadAddr,
                                addressTitle: data[i].roadAddr,
                                content: {
                                  title: data[i].ftvName,
                                  description: data[i].roadAddr,
                                  imageUrl: '/resources/static/img/shareImg.png',
                                  link: {
                                    // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
                                    mobileWebUrl: 'http://localhost',
                                    webUrl: 'http://localhost',
                                  },
                                },
                                social: {
                                  likeCount: 286,
                                  commentCount: 45,
                                  sharedCount: 845,
                                },
                                buttons: [
                                  {
                                    title: '전국 축제 확인하기',
                                    link: {
                                      mobileWebUrl: 'http://localhost',
                                      webUrl: 'http://localhost',
                                    },
                                  },
                                ],
                              });
                            }
                          }
                        );

                        // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
                        function closeOverlay() {
                          overlay.setMap(null);
                        }
                        //

                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                        // map.setCenter(coords);
                        //
                      } // 좌표 검색 정상인 경우
                    }
                  ); // 좌표 검색
                } // for문 끝
              }); //.then(data)끝
          }); // 폴리곤 클릭 이벤트 끝
        } // displayArea() end

        // 폴리곤 생성!!!!!!!!!
        function init(path) {
          //path 경로의 json 파일 파싱
          $.getJSON(path, function (geojson) {
            var units = geojson.features; // json key값이 "features"인 것의 value를 통으로 가져온다.

            $.each(units, function (index, unit) {
              // 1개 지역씩 꺼내서 사용. val은 그 1개 지역에 대한 정보를 담는다
              var coordinates = []; //좌표 저장할 배열
              var name = ''; // 지역 이름
              var cd_location = '';
              coordinates = unit.geometry.coordinates; // 1개 지역의 영역을 구성하는 다각형의 모든 좌표 배열
              name = unit.properties.SIG_KOR_NM; // 1개 지역의 이름
              cd_location = unit.properties.SIG_CD;

              var ob = new Object();
              ob.name = name;
              ob.path = [];
              ob.location = cd_location;
              $.each(coordinates[0], function (index, coordinate) {
                ob.path.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
              });

              areas[index] = ob;
            }); //each
          }); //getJSON

          // 지도에 영역데이터를 폴리곤으로 표시
          for (var i = 0, len = areas.length; i < len; i++) {
            displayArea(areas[i]);
          }
          // init 안
        } // init() end

        // 모든 폴리곤을 지우는 함수
        function removePolygon() {
          for (let i = 0; i < polygons.length; i++) {
            polygons[i].setMap(null);
          }
          areas = [];
          polygons = [];
        }

        ///////////////////////////////////////////////////
        // 다각형에 마우스오버 이벤트가 발생했을 때 변경할 채우기 옵션입니다
        var mouseoverOption = {
          fillColor: '#A2FF99', // 채우기 색깔입니다
          fillOpacity: 0.7, // 채우기 불투명도 입니다
        };

        // 다각형에 마우스아웃 이벤트가 발생했을 때 변경할 채우기 옵션입니다
        var mouseoutOption = {
          fillColor: '#EFFFED', // 채우기 색깔입니다
          fillOpacity: 0.8, // 채우기 불투명도 입니다
        };

         /*************************************** 축제명 검색 이벤트 ****************************************/
      // 장소 검색 객체를 생성합니다
      var ps = new kakao.maps.services.Places();

      // 검색창 구현
      let filterValue;
      document.addEventListener('DOMContentLoaded', () => {
        const searchVal = document.querySelector('.find');
        // console.log(searchVal);
        const searchBtn = document.querySelector('#search_btn');

        searchVal.addEventListener('keydown', function (e) {
          console.log('사용자가 ', e.target.value, '라는 값을 입력하였다!');

          if (e.keyCode == 13) {
            //엔터키 누른 경우
            if (e.target.value === '') {
              alert('내용을 입력해 주세요.');
              return;
            }
            hideMarkers();
            filterValue = searchVal.value; // 사용자가 입력한 값 얻기
            searchMarker(filterValue);
            searchVal.value = '';
          }
        });

        searchBtn.addEventListener('click', function () {
          filterValue = searchVal.value; // 사용자가 입력한 값 얻기
          if (filterValue === '') {
            alert('내용을 입력해 주세요.');
            return;
          }
          hideMarkers();
          console.log('사용자가 입력한 값: ', filterValue);
          searchMarker(filterValue);
          searchVal.value = '';
        });
      });

      // var markers = [];
      var marker;
      // 키워드명 출력 함수
      function searchMarker(filterValue) {
        let keywordSearchVal = "'" + filterValue + "'"; //작은 따옴표를 붙인 입력값
        console.log('keywordSearchVal: ', keywordSearchVal);
        // 키워드로 장소를 검색합니다
        ps.keywordSearch(keywordSearchVal, placesSearchCB);

        // 키워드 검색 완료 시 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
          if (status === kakao.maps.services.Status.OK) {
            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            var bounds = new kakao.maps.LatLngBounds();

            fetch('${pageContext.request.contextPath}/festival/search/', {
              method: 'post',
              headers: {
                'Content-Type': 'text/plain',
              },
              body: filterValue,
            })
              .then((res) => res.json())
              .then((data) => {
                console.log(data); // Array

                for (let i = 0; i < data.length; i++) {
                  geocoder.addressSearch(
                    data[i].roadAddr,
                    function (result, status) {
                      // 정상적으로 검색이 완료됐으면
                      if (status === kakao.maps.services.Status.OK) {
                        var coords = new kakao.maps.LatLng(
                          result[0].y,
                          result[0].x
                        );

                        // 마커를 생성하고 지도에 표시합니다
                        var marker = new kakao.maps.Marker({
                          map: map,
                          position: new kakao.maps.LatLng(
                            data[i].latitude,
                            data[i].longitude
                          ),
                          // title: data[i].ftvNum,
                        });
                        listMarker.push(marker);
                        console.log(data[i]); // Object

                        bounds.extend(
                          new kakao.maps.LatLng(data[i].y, data[i].x)
                        );
                        //
                        // 마커에 표시할 인포윈도우를 생성합니다
                        var infowindow = new kakao.maps.InfoWindow({
                          // content: data[i].ftvName, // 인포윈도우에 표시할 내용
                          content:
                            '<div style="width:200px; padding:5px;">' +
                            data[i].ftvName +
                            '</div>',
                        });

                        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                        // 이벤트 리스너로는 클로저를 만들어 등록합니다
                        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                        kakao.maps.event.addListener(
                          marker,
                          'mouseover',
                          makeOverListener(map, marker, infowindow)
                        );
                        kakao.maps.event.addListener(
                          marker,
                          'mouseout',
                          makeOutListener(infowindow)
                        );

                        // 마커를 클릭했을 때 모달을 표시합니다
                        kakao.maps.event.addListener(
                          marker,
                          'click',
                          function () {
                            console.log('클릭한 마커의 번호: ', data[i].ftvNum);

                            document.getElementById(
                              'exampleModalLabel'
                            ).textContent = data[i].ftvName;
                            document.getElementById('date').textContent =
                              data[i].startDate + ' ~ ' + data[i].endDate;
                            document.getElementById('place').textContent =
                              data[i].place;
                            document.getElementById('roadAddr').textContent =
                              data[i].roadAddr;
                            document.getElementById('phone').textContent =
                              data[i].phone;
                            document.getElementById('content').textContent =
                              data[i].ftvContent;
                            // document
                            //   .getElementById('url')
                            //   .setAttribute('href', data[i].url);
                            // document.getElementById('aContent').textContent =
                            //   data[i].url;

                            document
                              .getElementById('modalY')
                              .setAttribute('href', data[i].url);
                            document.getElementById('modalY').textContent =
                              '축제 상세보기';

                            $('#testModal').modal('show');
                          }
                        ); // 마커 클릭 이벤트 끝
                      }
                    }
                  );

                  //
                } // for문 끝
                // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
              }); // .then(data) 끝
          } // if OK 끝
        } // placesSearchCB함수 끝

        // 지도에 마커를 표시하는 함수입니다
        function displayMarker(place) {
          // // 마커를 생성하고 지도에 표시합니다
          // var marker = new kakao.maps.Marker({
          //   map: map,
          //   position: new kakao.maps.LatLng(place.latitude, place.longitude),
          // });
          // // 마커에 클릭이벤트를 등록합니다
          // kakao.maps.event.addListener(marker, 'click', function () {
          //   // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
          //   console.log('검색하고 마커 클릭!!');
          //   // overlay.setMap(map);
          //   // infowindow.open(map, marker);
          // }); // 마커 클릭 이벤트 끝
          //
        } // displayMarker함수 끝
      } // searchMarker함수 끝

      /*****************************************계절 버튼 클릭 이벤트***********************************/
      // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
      // var markers = [];
      var marker;
      let getFtvNum; // 축제번호

      var content = '';
      //계절버튼 클릭 이벤트
      document.querySelector('.find-btn1').addEventListener('click', (e) => {
        if (listMarker.length > 0) {
          hideMarkers();
        }

        //봄 클릭
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'spring')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            var positions = [];
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });
                    positions.push({ latlng: coords });

                    // 마커에 표시할 인포윈도우를 생성합니다
                    var infowindow = new kakao.maps.InfoWindow({
                      // content: data[i].ftvName, // 인포윈도우에 표시할 내용
                      content:
                        '<div style="width:200px; padding:5px;">' +
                        data[i].ftvName +
                        '</div>',
                    });

                    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                    // 이벤트 리스너로는 클로저를 만들어 등록합니다
                    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                    kakao.maps.event.addListener(
                      marker,
                      'mouseover',
                      makeOverListener(map, marker, infowindow)
                    );
                    kakao.maps.event.addListener(
                      marker,
                      'mouseout',
                      makeOutListener(infowindow)
                    );

                    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                    kakao.maps.event.addListener(marker, 'click', function () {
                      console.log('클릭한 마커의 번호: ', data[i].ftvNum);

                      document.getElementById('exampleModalLabel').textContent =
                        data[i].ftvName;
                      document.getElementById('date').textContent =
                        data[i].startDate + ' ~ ' + data[i].endDate;
                      document.getElementById('place').textContent =
                        data[i].place;
                      document.getElementById('roadAddr').textContent =
                        data[i].roadAddr;
                      document.getElementById('phone').textContent =
                        data[i].phone;
                      document.getElementById('content').textContent =
                        data[i].ftvContent;
                      // document
                      //   .getElementById('url')
                      //   .setAttribute('href', data[i].url);
                      // document.getElementById('aContent').textContent =
                      //   data[i].url;

                      document
                        .getElementById('modalY')
                        .setAttribute('href', data[i].url);
                      document.getElementById('modalY').textContent =
                        '축제 상세보기';

                      $('#testModal').modal('show');

                      // overlay.setMap(map);
                      getFtvNum = data[i].ftvNum;
                    });

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);
                    // 생성된 마커를 배열에 추가합니다
                    listMarker.push(marker);
                  } // 좌표 검색 정상인 경우
                }
              ); // 좌표 검색
            } // for문 끝

            //오버레이 여기에 두면 안뜸
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      document.querySelector('.find-btn2').addEventListener('click', (e) => {
        //여름 클릭
        if (listMarker.length > 0) {
          hideMarkers();
        }
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'summer')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });

                    // 마커에 표시할 인포윈도우를 생성합니다
                    var infowindow = new kakao.maps.InfoWindow({
                      content:
                        '<div style="width:200px; padding:5px;">' +
                        data[i].ftvName +
                        '</div>', // 인포윈도우에 표시할 내용
                    });

                    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                    // 이벤트 리스너로는 클로저를 만들어 등록합니다
                    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                    kakao.maps.event.addListener(
                      marker,
                      'mouseover',
                      makeOverListener(map, marker, infowindow)
                    );
                    kakao.maps.event.addListener(
                      marker,
                      'mouseout',
                      makeOutListener(infowindow)
                    );

                    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                    kakao.maps.event.addListener(marker, 'click', function () {
                      console.log('클릭한 마커의 번호: ', data[i].ftvNum);

                      document.getElementById('exampleModalLabel').textContent =
                        data[i].ftvName;
                      document.getElementById('date').textContent =
                        data[i].startDate + ' ~ ' + data[i].endDate;
                      document.getElementById('place').textContent =
                        data[i].place;
                      document.getElementById('roadAddr').textContent =
                        data[i].roadAddr;
                      document.getElementById('phone').textContent =
                        data[i].phone;
                      document.getElementById('content').textContent =
                        data[i].ftvContent;
                      // document
                      //   .getElementById('url')
                      //   .setAttribute('href', data[i].url);
                      // document.getElementById('aContent').textContent =
                      //   data[i].url;

                      document
                        .getElementById('modalY')
                        .setAttribute('href', data[i].url);
                      document.getElementById('modalY').textContent =
                        '축제 상세보기';

                      $('#testModal').modal('show');
                    });

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);
                    // 생성된 마커를 배열에 추가합니다
                    listMarker.push(marker);
                  }
                }
              );
            } // for문 끝
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      document.querySelector('.find-btn3').addEventListener('click', (e) => {
        //가을 클릭
        if (listMarker.length > 0) {
          hideMarkers();
        }
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'fall')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });

                    // 마커에 표시할 인포윈도우를 생성합니다
                    var infowindow = new kakao.maps.InfoWindow({
                      content:
                        '<div style="width:200px; padding:5px;">' +
                        data[i].ftvName +
                        '</div>', // 인포윈도우에 표시할 내용
                    });

                    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                    // 이벤트 리스너로는 클로저를 만들어 등록합니다
                    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                    kakao.maps.event.addListener(
                      marker,
                      'mouseover',
                      makeOverListener(map, marker, infowindow)
                    );
                    kakao.maps.event.addListener(
                      marker,
                      'mouseout',
                      makeOutListener(infowindow)
                    );

                    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                    kakao.maps.event.addListener(marker, 'click', function () {
                      console.log('클릭한 마커의 번호: ', data[i].ftvNum);

                      document.getElementById('exampleModalLabel').textContent =
                        data[i].ftvName;
                      document.getElementById('date').textContent =
                        data[i].startDate + ' ~ ' + data[i].endDate;
                      document.getElementById('place').textContent =
                        data[i].place;
                      document.getElementById('roadAddr').textContent =
                        data[i].roadAddr;
                      document.getElementById('phone').textContent =
                        data[i].phone;
                      document.getElementById('content').textContent =
                        data[i].ftvContent;
                      // document
                      //   .getElementById('url')
                      //   .setAttribute('href', data[i].url);
                      // document.getElementById('aContent').textContent =
                      //   data[i].url;

                      document
                        .getElementById('modalY')
                        .setAttribute('href', data[i].url);
                      document.getElementById('modalY').textContent =
                        '축제 상세보기';

                      $('#testModal').modal('show');
                    });

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);
                    // 생성된 마커를 배열에 추가합니다
                    listMarker.push(marker);
                  }
                }
              );
            } // for문 끝
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      document.querySelector('.find-btn4').addEventListener('click', (e) => {
        //겨울 클릭
        if (listMarker.length > 0) {
          hideMarkers();
        }
        fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'winter')
          .then((res) => res.json())
          .then((data) => {
            console.log(data);
            for (let i = 0; i < data.length; i++) {
              // 주소로 좌표를 검색합니다
              geocoder.addressSearch(
                data[i].roadAddr,
                function (result, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                      result[0].y,
                      result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                      map: map,
                      position: coords,
                    });

                    // 마커에 표시할 인포윈도우를 생성합니다
                    var infowindow = new kakao.maps.InfoWindow({
                      content:
                        '<div style="width:200px; padding:5px;">' +
                        data[i].ftvName +
                        '</div>', // 인포윈도우에 표시할 내용
                    });

                    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                    // 이벤트 리스너로는 클로저를 만들어 등록합니다
                    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                    kakao.maps.event.addListener(
                      marker,
                      'mouseover',
                      makeOverListener(map, marker, infowindow)
                    );
                    kakao.maps.event.addListener(
                      marker,
                      'mouseout',
                      makeOutListener(infowindow)
                    );

                    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                    kakao.maps.event.addListener(marker, 'click', function () {
                      console.log('클릭한 마커의 번호: ', data[i].ftvNum);

                      document.getElementById('exampleModalLabel').textContent =
                        data[i].ftvName;
                      document.getElementById('date').textContent =
                        data[i].startDate + ' ~ ' + data[i].endDate;
                      document.getElementById('place').textContent =
                        data[i].place;
                      document.getElementById('roadAddr').textContent =
                        data[i].roadAddr;
                      document.getElementById('phone').textContent =
                        data[i].phone;
                      document.getElementById('content').textContent =
                        data[i].ftvContent;
                      // document
                      //   .getElementById('url')
                      //   .setAttribute('href', data[i].url);
                      // document.getElementById('aContent').textContent =
                      //   data[i].url;

                      document
                        .getElementById('modalY')
                        .setAttribute('href', data[i].url);
                      document.getElementById('modalY').textContent =
                        '축제 상세보기';

                      $('#testModal').modal('show');
                    });

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    // map.setCenter(coords);

                    // 생성된 마커를 배열에 추가합니다
                    listMarker.push(marker);
                  }
                }
              );
            } // for문 끝
          }); // .then(data => ) 끝
      }); // 클릭 이벤트 끝

      // 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
      function setMarkers(map) {
        for (var i = 0; i < listMarker.length; i++) {
          listMarker[i].setMap(map);
        }
      }

      // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
      function hideMarkers() {
        setMarkers(null);
        console.log('hideMarkers() 동작했다!');
      }

      // 인포윈도우를 표시하는 클로저를 만드는 함수입니다
      function makeOverListener(map, marker, infowindow) {
        return function () {
          infowindow.open(map, marker);
        };
      }

      // 인포윈도우를 닫는 클로저를 만드는 함수입니다
      function makeOutListener(infowindow) {
        return function () {
          infowindow.close();
        };
      }

      let userIdVal = '${login}';
      document.querySelector('.link-inner').addEventListener('click', (e) => {
        e.preventDefault();
        // console.log(userIdVal);
        if (e.target.matches('.glyphicon-thumbs-up')) {
          if (userIdVal === null) {
            console.log('login: ', userIdVal);
            alert('로그인이 필요합니다.');
            return;
          }

          console.log('getFtvNum: ', getFtvNum);
          fetch('${pageContext.request.contextPath}/user/likeList', {
            method: 'post',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
              userId: userIdVal,
              ftvNum: getFtvNum,
            }),
          })
            .then((res) => res.text())
            .then((data) => {
              if (data) {
                alert('좋아요를 눌렀습니다!');
              }
              console.log('data: ', data);
            });
        }
      });
    </script>
  </body>
</html>

<%@ include file="./include/footer.jsp" %>