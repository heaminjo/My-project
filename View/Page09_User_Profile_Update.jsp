<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="scriptFile.js"></script>
<style>
    *{
        padding: 0;
        margin: 0;
    }
    a{
        text-decoration: none;
        color: #000;
    }
    li{
        list-style: none;
    }
    .main_Box{
        width: 1080px;
        height: 100%;
        display: flex;
        margin: 0 auto;
        padding-top: 50px;
        gap: 30px;
    }
    aside{
        width: 250px;
        height: 269px;
        border: 1px solid #000;
    }
    .aside_Block{
        display: flex;
        flex-direction: column;
    }
    #block01_Title{
        width: 100%;
        height: 50px;
        text-align: center;
        line-height: 50px;
        background-color: #bbb;
    }
    #block02_User_Data ul,
    #block03_User_Service ul{
        display: flex;
        flex-direction: column;
        gap: 8px;
        font-size: 13px;
        border-bottom: 1px solid #000;
        padding: 20px 0 20px 0;
    }
    #block02_User_Data ul li,
    #block03_User_Service ul li
    {
        padding-left: 10px;
    }
    
    <%--메인 --%>
    
    main{
        width: 700px;
        height: 500px;
    }
    .profile_Box{
        width: 350px;
        border: 1px solid #000;
        height: 450px;
        margin-left: 100px;
    }
    #profile_Img{
        width: 100%;
        height: 300px;
        position: relative;
    }
    
    #image_Box{
        width: 250px;
        height: 250px;
        position: absolute;
        left: 50px;
        top: 30px;
    }
    #image_Box img{
        width: 100%;
        height: 100%;
        border-radius: 150px;
    }
    
    #user_NickName{
        width: 100%;
        height: 40px;
        line-height: 40px;
        text-align: center;
    }
    #user_Follow{
        width: 100%;
        height: 20px;
        font-size: 11px;
        display: flex;
        justify-content: center;
        gap: 15px;
    }
    #user_Introduction{
        height: 90px;
        width: 100%;
        line-height: 80px;
        text-align: center;
    }

    <%-- form 태그 input--%>
    input[type="file"]{
    	display: none;
    }
    #image_Btn{
    	position: absolute;
    	height:35px;
    	width:80px;
    	border-radius:5px;
    	background-color:#ccc;
    	border:none;
    	bottom: 25px;
		right: 40px;
		cursor: pointer;
		font-weight: bold;
    }
    #input_NickName{
    	height: 30px;
    	text-align: center;
    	
    }
    #input_Introduction{
    	width:250px;
		text-align: center;
    	height: 30px;
    }
    input[type="submit"]{
    	width:350px;
    	height:40px;
    	margin-top:20px;
    	margin-left: 100px;
    	cursor: pointer;
    	background-color: #bbb; 
    	border:none;
    }
</style>
    
    <body>
        <ul>
        	<li>
        		<jsp:include page="top.jsp"></jsp:include>
        	</li>
        	<li>
        	<div class="main_Box">
	        	<aside>
	            <ul class="aside_Block">
	                <li id="block01_Title">
	                    <h3>마이페이지</h3>
	                </li>
	                <li id="block02_User_Data">
	                    <ul>
	                        <li>
	                            <a href="">프로필 수정</a>
	                        </li>
	                        <li>
	                            <a href="">개인정보 수정</a>
	                        </li>
	                        <li>
	                            <a href="">내 게시물 목록</a>
	                        </li>
	                        <li>
	                            <a href="">북마크</a>
	                        </li>
	                    </ul>
	                </li>
	                <li id="block03_User_Service">
	                    <ul>
	                        <li>
	                            <a href="">비밀번호 변경</a>
	                        </li>
	                        <li>
	                            <a href="">로그아웃</a>
	                        </li>
	                    </ul>
	                </li>
	            </ul>
	        </aside>
	        <main>
	        	<form method="get">
		            <ul class="profile_Box">
		                <li id="profile_Img">
		                    <div id="image_Box">
		                        <img src="https://m.skyaqua7.shop/web/product/medium/202203/4f3b9057a3317c43381bb9da7a1b8cc2.png" alt="프로필 사진">
		                    </div>
		                    <input type="file" accept="image/*" id="input_Image" >
		                    <button id="image_Btn" onclick="upload()">이미지 변경</button>
		                </li>
		                <li id="user_NickName">
		                    <input type="text" id="input_NickName" autofocus="autofocus">
		                </li>
		                <li id="user_Follow">
		                    <p id="followers">팔로워 </p>
		                    <p id="following">팔로윙</p>
		                </li>
		                <li id ="user_Introduction">
		                    <input type="text" id="input_Introduction">
		                </li>
		            </ul>
		            <input type= "submit" value="수정하기">
	            </form>
	        </main>
        </li>
        </ul>
    </body>
</html>