<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{
        padding: 0;
        margin: 0;
    }
    a{
        text-decoration: none;
    }
    list{
        list-style: none;
    }

    body{
        width: 100%;
        height: 100%;
    }

    .UserID_View_Box{
        width: 700px;
        height: 500px;
        margin: 0 auto;
    }
    .FindID_Text{
        width: 100%;
        height: 50px;
        font-size: 20px;
        text-align: center;
    }
    .ID_Box{
        width: 500px;
        height: 30px;
        margin: 0 auto;
        border: 1px solid #000;
    }
    .ID_View{
        text-align: center;
    }
    .member_Service{
        width: 500px;
        margin: 0 auto;
    }
    .member_Menu{
        text-align: end;
        
        margin-top: 5px;
    }
    .member_Menu a{
        font-size: 12px;
        color: #000;
    }
</style>  
    <body>
    	<ul>
    		<li>
    			<jsp:include page="top.jsp"></jsp:include>
    		</li>
    		<li style="margin-top: 150px">
		        <div class="UserID_View_Box">
		            <div class = "FindID_Text">
		                <p>회원님의 아이디를 찾았습니다!</p>
		            </div>
		            <div class= "ID_Box">
		                <p class="ID_View"></p>
		            </div>
		            <div class="member_Service">
		                <div class="member_Menu">
		                    <a href="Page03_FindPW_Input.jsp">비밀번호 찾기 </a>|
		                    <a href="Page01_UserLogin_Input.jsp">로그인</a>
		                </div>
		            </div>
		        </div>
        	</li>
    	</ul>
    </body>
</html>