<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
<!--
    *{
        margin: 0;
        padding: 0;
    }
    li{
    	list-style: none;
    }
    a{
    	text-decoration: none;
    }
    body{
    	
    }
    header{
    	width: 1080px;
        height: 100px;
        margin: 0 auto;
        display: flex;
        justify-content: space-between;
    }
    <!-- 탑 스타일 -->
    #title{
    height: 100%;
    }
    #title h1{
    	   line-height: 80px;
    	   font-size: 40px;
    }
    #surviceMenu{
        line-height: 50px;
    }
    .memberMenu{
        display: flex;
        gap: 10px;
        font-size: 13px;
    }
    
    <!-- 메뉴 스타일 -->
    nav{
        width: 100%;
        height: 50px;
    }
    .navMenu{
        width: 1080px;
        height: 100%;
        margin: 0 auto;
        display: flex;
        justify-content: space-between;
        gap: 5px;
        line-height: 50px;
    }
    .navList{
        width: 100%;
        text-align: center;
        background-color: #000;
    }
    .navList a{
    	color:#fff;
    }
</style>

<body>
	<header>
            <div id="title">
                <h1>Raptility</h1>
            </div>
            <div id="surviceMenu">
            	<%if(session.getAttribute("log")==null){%>
                <ul class="memberMenu" id="login_on_menu">
                    <li>
                        <a href="">로그인</a>
                    </li>
                    <li>
                        <a href="">회원가입</a>
                    </li>
                </ul>
                <%}else{%>
                <ul class="memberMenu" id="login_off_menu">
				<li>
					<a href="">님</a>
				</li>
				<li>
					<a href="">마이페이지</a>
				</li>
				<li>
					<a href="">로그아웃</a>
				</li>
			</ul>
			<%}%>
            </div>
        </header>
        <nav>
            <ul class="navMenu">
                <li class="navList">
                    <a href="">글 작성</a>
                </li>
                <li class="navList">
                    <a href="">커뮤니티</a>
                </li>
                <li class="navList">
                    <a href="">menu3</a>
                </li>
                <li class="navList">
                    <a href="">menu4</a>
                </li>
                <li class="navList">
                    <a href="">menu5</a>
                </li>
                <li class="navList">
                    <a href="">menu6</a>
                </li>
            </ul>
        </nav>
</body>
</html>