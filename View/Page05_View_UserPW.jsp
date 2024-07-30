<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    *{
        margin: 0;
        padding: 0;
    }
    .changePW_Box{
        width: 500px;
        height: 500px;
        margin: 0 auto;
    }
    .changePW_Form{
        width: 300px;
        margin: 0 auto;
    }
    .text_Title{
        width: 100%;
        height: 130px;
        text-align: center;
        line-height: 130px;
    }
    .changePW_Input{
        width: 100%;
        height: 250px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .changePW_Input_Block{
        width: 100%;
        height: 60px;
    }
    .changePW_Input_Block input{
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
    .changePW_Btn{
        width: 100%;
        height: 50px;
    }
    
    .changePW_Btn input{
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
</head>

<body>
		<ul>
    		<li>
    			<jsp:include page="top.jsp"></jsp:include>
    		</li>
    		<li>
		        <div class="changePW_Box">
	        <form class="changePW_Form" action="login" method="post">
	            <div class="text_Title">
	                <h3>패스워드를 변경합니다.</h3>
	            </div>
	            <div class="changePW_Input">
	                <div class="changePW_Input_Block" id="pw_Input">
	                    <input type="text" name="pw" id="user_Pw" placeholder="패스워드">
	                    <p class="error_Text" id="pw_Error_Text"></p>
	                </div>
	                <div class="changePW_Input_Block" id="pw2_Input">
	                    <input type="tel" name="pw2" id="user_pw2" placeholder="패스워드 재확인">
	                    <p class="error_Text" id="pw2_Error_Text"></p>
	                </div>
	            </div>
	            <div class="changePW_Btn">
	                <input type="button" value="변경하기">
	            </div>
	        </form>
	    </div>
        	</li>
    	</ul>
</body>
</html>