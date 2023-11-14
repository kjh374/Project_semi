<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file="../include/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>myPage</title>
  <style>
  /* myPage css  */

html body{
    margin: 0px;
    padding: 0px;
      
        height: 80vh;
}
.header {
    padding-top: 0px;
    border: solid 1px black;
    height: 100px;
    margin: 0%;
    padding: 0px;
}

.foter {
    width: 100%;
    padding: 0 25px;
    line-height: 60px;
    color: #8a8c8f;
    border-top: 1px solid #dee5e7;
    background-color: #f2f2f2;
    border: solid 1px;
    position: absolute;
    bottom: 0px;
}

#nav{
    list-style-type: none;
    margin: 0px;
    overflow: auto;
    margin-top: 0px;
}
ul#menu {
    position: relative;
    list-style: none;
    padding-left: 0px;
    margin: 0px;
    margin-top: 30px;
}
li.border {
    width: 200px;
    border-right: solid 2px rgb(186, 199, 216);
    border-bottom: #cbdef1 dotted 2px;
    font-size: 13px;
    border-top: 1px solid #ddd;
    border-left: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    height: 107px;
}
.aButton{
    display: block;
    padding: 12px;
    text-decoration-line: none;
    color: #0356A9;
    height: 85px;

}
.aButton:hover{
    display: block;
    padding: 12px;
    text-decoration-line: none;
    color: #fff;
    background-color: #0356A9;
}
.hTable{
    position: relative;
    left: 5px;
}
a:hover{
    color: #158aff;
}
#page5 {
    text-align: center;
    line-height: 100px;
    margin-left: 100px;
    margin-top: 50px;
    
}
#no:hover {
    color: #000;
}
        
#contents {
  width: 900px;
  height: auto;
  margin: auto;
  
}
.button {
  --background: #0356A9;
  --text: #fff;
  --font-size: 15px;
  --duration: 0.44s;
  --move-hover: -4px;
  --shadow: 0 2px 8px -1px rgba(39, 94, 254, 0.32);
  --shadow-hover: 0 4px 20px -2px rgba(39, 94, 254, 0.5);
  --font-shadow: var(--font-size);
  margin-left: 300px;
  margin-top: 10px;
  padding: 16px 32px;
  font-family: 'Roboto';
  font-weight: 500;
  line-height: var(--font-size);
  border-radius: 10px;
  display: block;
  outline: none;
  text-decoration: none;
  font-size: var(--font-size);
  letter-spacing: 0.5px;
  background: var(--background);
  color: var(--text);
  box-shadow: var(--shadow);
  transform: translateY(var(--y)) translateZ(0);
  transition: transform var(--duration) ease, box-shadow var(--duration) ease;
  width: 100px;
  height: 50px;
}
.tab1 {
  --background: #fff;
  --text: #0a0000;
  --font-size: 15px;
  --duration: 0.44s;
  --move-hover: -4px;
  --shadow: 0 2px 8px -1px rgba(39, 94, 254, 0.32);
  --shadow-hover: 0 4px 20px -2px rgba(39, 94, 254, 0.5);
  --font-shadow: var(--font-size);
  margin-left: -15px;
  margin-top: -10px;
  width: 60px;
  height: 15px;
  padding: 16px 32px;
  font-family: 'Roboto';
  font-weight: 500;
  line-height: var(--font-size);
  border-radius: 10px;
  display: block;
  outline: none;
  text-decoration: none;
  font-size: var(--font-size);
  letter-spacing: 0.5px;
  background: var(--background);
  color: var(--text);
  box-shadow: var(--shadow);
  transform: translateY(var(--y)) translateZ(0);
  transition: transform var(--duration) ease, box-shadow var(--duration) ease;
}
.guide_txt {
  /* border: 1px solid black; */
  position: relative;
  font-size: 10px;
  color: #777;
  padding-bottom: 7px;
}
.txt_r {
  font-size: 12px;
  color: #777;
  /* padding-bottom: 7px; */
  display: inline-block;
  /* border: 1px solid black; */
  /* width: 88px; */
  position: absolute;
  right: 0;
  /* padding-left: 15px; */
}
.req {
  display: inline-block;
  width: 0px;
  height: 8px;
  text-indent: -9999px;
  background-position: 0 2px;
}

/************* 테이블 작업 ************/
table.table_type {
  position: relative;
  top: -326px;
  left: 215px;
  width: 800px;
  border-collapse: collapse;
  /* border: 1px solid #ddd;
    border-left: none;
    border-right: none; */
  border: none;
  border-right: 1px solid #ddd;
}

table.table_type th {
  border: 1px solid #ddd;
  font-weight: bold;
  padding: 10px 0 10px 10px;
  background-color: #0356A9;
  text-align: left;
  border-left: none;
  color:#fff;
}
table.table_type td {
  border: 1px solid #ddd;
  padding: 10px;
  border-right: none;
  height: 31px;
}
.join {
  padding: 3px 6px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

.join.pn_td {
  padding: 3px 6px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

.b_bdcheck {
  width: 58px;
  height: 25px;
  background-position: 0 -150px;
  /* border: 1px solid black; */
  position: absolute;
  margin: 0 10px;
}

.fr {
  text-align: right;
}
div.btn_area {
  text-align: center;
  margin: -280px;
  margin-left: 180px;
}

</style>

</head>
<body>
        <div id="wrap">
        <!--  상단영역  -->
        
            
        </header>
        <!-- 상단영역 끝 -->
        
        <!--  콘텐츠영역  -->
        <div id="contents"">
          <table id="nav">
            <ul id="menu">
                    <h1 id="page5">마이 페이지</h1>
                </li>
                <div id="menu2">
                <li class="border">
                    <a href="${pageContext.request.contextPath}/user/myPage" class="aButton"><h2 class="hTable">내 정보 수정</h2></a>
                    <!--<a href="${pageContext.request.contextPath}/user/myInfo" class="aButton"><h2 class="hTable">내 정보 수정</h2></a>-->
                </li>
                
                <li class="border">
                    <a href="${pageContext.request.contextPath}/user/likeList" class="aButton"><h2 class="hTable">좋아요 목록</h2></a>
                </li>
                <li class="border">
                  <a href="#" id="deleteBtn" class="aButton" ><h2 class="hTable">회원 탈퇴</h2></a>
              </li>
            </div>
            </ul>
    </table>
            <div id="contents">
            <form action="${pageContext.request.contextPath}/user/update" method="post">
                <table class="table_type">
                    <colgroup>
                        <col width="150px" />
                        <col width="*">
                    </colgroup>
                    <tbody>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="userId">아이디</label>
                            </th>
                            <td>
                                    <input class="join" type="text" id="userId" name="userId" value="${login}" readonly/>
                            </td>
                        </tr>
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="name" >이름</label>
                            </th>
                            <td>
                                <input class="join" type="text" id="name" name="name" value="${userInfo.name}" disabled="disabled" />
                            </td>
                        </tr>

                        <tr>
                          <th>
                              <span class="req"></span>
                              <label for="uesrPw">비밀번호</label>
                          </th>
                          <td>
                              <p class="guide_txt">
                                  <input type="password" id="userPw" name="userPw" class="join"><br/>
                                  <span id="msgPw">8개 이상의 문자조합(영문 대소문자 + 숫자 또는 기호(!~#@))을 입력해 주세요.</span>
                                </p>
                          </td>
                      </tr>
                      <tr>
                          <th>
                              <span class="req"></span>
                              <label for="userPwC">비밀번호 확인</label>
                          </th>
                          <td>
                              <p class="guide_txt">
                                  <input type="password" id="userPwC" name="userPwC" class="join"><br/>
                                  <span id="msgPwC">입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요</span>
                              </p>
                          </td>
                      </tr>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="email">이메일</label>
                            </th>
                            <td class="pn_td">
                                <input type="text" id="email" name="email" class="join" value="${userInfo.useremail}" disabled="disabled">
                                @
                                <input class="join" type="text" class="box" id="email1" name="email1" value="${userInfo.emailDomain}" disabled="disabled" >&nbsp;
                                 
                          

                                    <div class="mail_check_box">
                                    	
                                    </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
              </div>
                <div class="btn_area">
                    <span class="btn b_ok">
                        <button type="submit" href="$" class="button" id="update" style="border: none;"><a>수정</a></button>
                    </span>
                </div>
        </form>
        </div>
        <!-- 콘텐츠영역 끝 -->

        <!--  하단영역  -->
        
        <!-- 하단영역 끝 -->
    </div>
    <%@ include file="../include/footer.jsp" %>
</body>
</html>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  let code = '';
  let idFlag, pwFlag;
  const $msgId = document.getElementById('msgId');
  // 비밀번호 유효성 검사 스크립트
  const $userPw = document.getElementById('userPw');
  const $msgPw = document.getElementById('msgPw');
        $userPw.onkeyup = () => {

            var regex = /^[A-Za-z0-9~!@#$%^&*()_+|<>?:{}+]{8,16}$/;
            var pattern_spc = /[~!@#$%^&*()_+|<>?:]/
            if (regex.test($userPw.value) && pattern_spc.test($userPw.value)) {
                $userPw.style.borderColor = 'green';
                $msgPw.innerHTML = '사용가능합니다.';
                pwFlag = true;
            } else {
                $userPw.style.borderColor = 'red';
                $msgPw.innerHTML = '비밀번호를 제대로 입력하세요.';
                pwFlag = false;
            }

            // let pw = document.getElementById('userPw').value;
            // fetch('${pageContext.request.contextPath}/user/pwCheck/' + pw)
            // .then(res => res.text())
            // .then(text => {
            //   if(text === 'pwDuplicated'){
            //     $msgPw.innerHTML = '다른 비밀번호를 입력해주세요.';
            //   } else if(text === 'possible'){
            //     $msgPw.innerHTML = '사용 가능한 비밀번호 입니다.';
            //   }
            // })
        }

    const $userPwC = document.getElementById('userPwC');
    const $msgPwC = document.getElementById('msgPwC');
    $userPwC.onkeyup = () => {
        if($userPwC.value === $userPw.value){
            $userPwC.style.borderColor = 'green';
            $msgPwC.innerHTML = '비밀번호가 일치합니다.';
        } else {
            $userPwC.style.borderColor = 'red';
            $msgPwC.innerHTML = '비밀번호가 일치하지 않습니다.';
        }
    }

      // 회원탈퇴
      document.getElementById('deleteBtn').onclick = e => {
      if (confirm("정말로 삭제하시겠습니까?")) {
        alert("삭제되었습니다.");
        location.href = "${pageContext.request.contextPath}/user/delete?userId=${sessionScope.login}";
      } else {
        return;
      }
    }

      // update로 보내기
      //회원정보 수정 요청 검사 스크립트
      document.getElementById('update').onclick = () => {
          alert('정상 수정되었습니다.');
      }
    
      
    </script>

