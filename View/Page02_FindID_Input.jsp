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
    .FindID_Box{
        width: 500px;
        height: 500px;
        margin: 0 auto;
    }
    .FindID_Form{
        width: 300px;
        margin: 0 auto;
    }
    .text_Title{
        width: 100%;
        height: 130px;
        text-align: center;
        line-height: 130px;
    }
    .FindID_Input{
        width: 100%;
        height: 250px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .FindID_Input_Block{
        width: 100%;
        height: 60px;
    }
    .FindID_Input_Block input{
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
    .FindID_Btn{
        width: 100%;
        height: 50px;
    }
    
    .FindID_Btn input{
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
		<div class="FindID_Box">
	        <form class="FindID_Form" action="login" method="post">
	            <div class="text_Title">
	                <h3>아이디 찾기</h3>
	            </div>
	            <div class="FindID_Input">
	                <div class="FindID_Input_Block" id="id_Input">
	                    <input type="text" name="name" id="user_name" placeholder="이름">
	                    <p class="error_Text" id="name_Error_Text"></p>
	                </div>
	                <div class="FindID_Input_Block" id="phone_Input">
	                    <input type="tel" name="phone" id="user_Phone" placeholder="휴대번호(- 없이 입력)">
	                    <p class="error_Text" id="phone_Error_Text"></p>
	                </div>
	            </div>
	            <div class="FindID_Btn">
	                <input type="button" value="아이디 찾기">
	            </div>
	        </form>
	    </div>
    	</li>
    </ul>
</body>
</html>