<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="wrap">
        <!--  상단영역  -->
        
            
        </header>
        <!-- 상단영역 끝 -->
        
        <!--  콘텐츠영역  -->
        <div id="contents">
            <h1 class="sub_title title01">
                회원가입
            </h1>
            <p class="title_src">
                
            </p>
            <p class="guide_txt">
                기본회원정보를 입력해 주세요
                <span class="txt_r">
                    <span class="req"></span>
                    필수입력사항
                </span>
            </p>
            <br>
            <form action="" method="post">
                <table class="table_type">
                    <colgroup>
                        <col width="130px"/>
                        <col width="*">
                    </colgroup>
                    <tbody>
                        <!-- <tr>
                            <th>이름</th>
                            <td>마루치</td>
                        </tr> -->
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_id">아이디</label>
                                
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="text" id="s_id" name="u_id" class="join">
                                <!-- <button type="button">중복확인</button> -->
                                <span class="btn b_bdcheck">
                                    <input type="button" value="중복확인">
                                </span>&nbsp;&nbsp;&nbsp;&nbsp;
                                    6~12자리의 영문, 숫자(혼용가능)를 입력해 주세요.                                    
                                </p>
                                
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_pw">비밀번호</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="s_pw" name="u_pw" class="join">&nbsp;&nbsp;&nbsp;&nbsp;
                                    10개 이상의 문자조합(영문 대소문자 + 숫자 또는 기호(!~#@))을 입력해 주세요.
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_pw2">비밀번호 확인</label>
                            </th>
                            <td>
                                <p class="guide_txt">
                                    <input type="password" id="s_pw2" name="u_pw2" class="join">&nbsp;&nbsp;&nbsp;&nbsp;
                                    입력하신 비밀번호 확인을 위해 다시 한번 입력해 주세요
                                </p>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_name">이름</label>
                            </th>
                            <td>
                                <input type="text" id="s_name" name="u_name" class="join">
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_adr">생년월일</label>
                            </th>
                            <td class="adr_td">
                                <p class="guide_txt">
                                    <select id="s_adr" name="s_adr">
                                        <option value="양력">양력</option>
                                        <option value="음력">음력</option>
                                    <input type="text" id="s_adr" name="s_adr" class="join">
                                    &nbsp;&nbsp;&nbsp;&nbsp;양력/음력 선택 후, YYYYMMDD 형식으로 입력해주세요. 예 ) 19820930
                                </p>
                                <p class="adr_txt">
                                </p>
                               
                            </td>
                        </tr>
                        
                       
                        
                        
                        
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_adr">휴대전화번호</label>
                            </th>
                            <td class="pn_td">
                                <p class="pn_txt">
                                    <select id="s_pn" name="u_pn">
                                        <option value="010">010</option>
                                        <option value=""></option>
                                    </select>
                                    -
                                    <input type="text" id="s_pn" name="u_pn">
                                    -
                                    <input type="text" id="s_pn" name="u_pn">
                                </p>
                                
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="req"></span>
                                <label for="s_adr">이메일</label>
                            </th>
                            <td class="pn_td">
                                <p class="pn_txt">
                                    <input type="text" id="s_mail" name="u_mail">
                                    @
                                    <input type="text" id="s_mail" name="u_mail">&nbsp;
                                    <select type="select" id="s_mail" name="u_mail">
                                        <option value="gmail.common">gmail.com</option>
                                        <option value=""></option>
                                    </select>&nbsp;&nbsp;
                                    <span class="btn b_bdcheck">
                                        <input type="button" value="이메일 인증">
                                    </span>
                                    
                                </p>
                                
                                
                                
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="btn_area">
                    <span class="btn b_ok">
                        <input type="button" value="확인">
                    </span>
                    <span class="btn b_cancel">
                        <input type="button" value="취소">
                    </span>
                </div>
        </form>
        </div>
        <!-- 콘텐츠영역 끝 -->

        <!--  하단영역  -->
        
        <!-- 하단영역 끝 -->
    </div>
</body>
</html>