<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    .loginBox{
        width: 500px;
        height: 500px;
        margin: 0 auto;
    }
    .login_Form{
        width: 300px;
        margin: 0 auto;
    }
    .text_Title{
        width: 100%;
        height: 130px;
        text-align: center;
        line-height: 130px;
    }
    .login_Input{
        width: 100%;
        height: 250px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .login_Input_Block{
        width: 100%;
        height: 60px;
    }
    .login_Input_Block input{
        width: 100%;
        height: 30px;
        padding-left: 5px;
        border-style: none;
        border-bottom: 1px solid #000;
    }
    .error_Text{
        color: red;
        font-size: 13px;
    }
    .login_Btn{
        width: 100%;
        height: 50px;
    }
    
    .login_Btn input{
        width: 100%;
        height: 40px;
        background-color: #000;
        font-weight: bold;
        border:  none;
        color:#fff;
    }
    .login_Service{
        display: flex;
        width:100%;
        height:120px;
        font-size: 12px;
        justify-content: space-between;
    }
    a{
        color: #000;
        text-decoration: none;
    }
</style>
<body>
	<div class="loginBox">
        <form class="login_Form" action="login" method="post">
            <div class="text_Title">
                <h3>로그인</h3>
            </div>
            <div class="login_Input">
                <div class="login_Input_Block" id="id_Input">
                    <input type="text" name="id" id="user_Id" placeholder="아이디">
                    <p class="error_Text" id="id_Error_Text"></p>
                </div>
                <div class="login_Input_Block" id="pw_Input">
                    <input type="password" name="pw" id="user_Pw" placeholder="비밀번호">
                    <p class="error_Text" id="pw_Error_Text"></p>
                </div>
            </div>
            <div class="login_Btn">
                <input type="button" value="로그인">
            </div>
            <div class="login_Service">
           		<div class="findData">
                    <a href="">아이디 찾기 </a>|
                    <a href="">비밀번호 찾기</a>
                </div>
                <div class="join">
                    <a href="">회원가입</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>