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
</style>
<body>
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
</body>
</html>