<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
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
        line-height: 90px;
        text-align: center;
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
	            <ul class="profile_Box">
	                <li id="profile_Img">
	                    <div id="image_Box">
	                        <img src="https://m.skyaqua7.shop/web/product/medium/202203/4f3b9057a3317c43381bb9da7a1b8cc2.png" alt="프로필 사진">
	                    </div>
	                </li>
	                <li id="user_NickName">
	                    <p>안시</p>
	                </li>
	                <li id="user_Follow">
	                    <p id="followers">팔로워 </p>
	                    <p id="following">팔로윙</p>
	                </li>
	                <li id ="user_Introduction">
	                    <p>--------한줄 소개---------</p>
	                </li>
	            </ul>
	        </main>
        </li>
        </ul>
    </body>
</html>
