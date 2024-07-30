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
    .FindPW_Box{
        width: 500px;
        height: 500px;
        margin: 0 auto;
    }
    .FindPW_Form{
        width: 300px;
        margin: 0 auto;
    }
    .text_Title{
        width: 100%;
        height: 130px;
        text-align: center;
        line-height: 130px;
    }
    .FindPW_Input{
        width: 100%;
        height: 250px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .FindPW_Input_Block{
        width: 100%;
        height: 60px;
    }
    .FindPW_Input_Block input{
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
    .FindPW_Btn{
        width: 100%;
        height: 50px;
    }
    
    .FindPW_Btn input{
        width: 100%;
        height: 40px;
        background-color: #000;
        font-weight: bold;
        border:  none;
        color:#fff;
    }
    a{
        color: #000;
        text-decoration: none;
    }
</style>
<body>
<ul>
	<li>
    	<jsp:include page="top.jsp"></jsp:include>
   	</li>
   	<li>
		<div class="FindPW_Box">
	        <form class="FindPW_Form" action="" method="post">
	            <div class="text_Title">
	                <h3>비밀번호 찾기</h3>
	            </div>
	            <div class="FindPW_Input">
	                <div class="FindPW_Input_Block" id="id_Input">
	                    <input type="text" name="id" id="user_Id" placeholder="아이디">
	                    <p class="error_Text" id="id_Error_Text"></p>
	                </div>
	                <div class="FindPW_Input_Block" id="phone_Input">
	                    <input type="tel" name="phone" id="user_phone" placeholder="휴대번호(- 없이 입력)">
	                    <p class="error_Text" id="phone_Error_Text"></p>
	                </div>
	            </div>
	            <div class="FindPW_Btn">
	                <input type="button" value="비밀번호 찾기">
	            </div>
	        </form>
	    </div>
    	</li>
    </ul>
</body>
</html>