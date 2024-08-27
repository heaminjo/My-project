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
    main{
        width: 1080px;
        height: 100%;
        display: flex;
        margin: 0 auto;
        padding-top: 50px;
        justify-content: space-between;
    }
    
.section01{
    width: 500px;
    height: 100%;
}
.title{
    height: 50px;
    border-bottom: 1px solid #000;
}
#user_Data_Table{
    width: 100%;
    height: 400px;
    margin-top: 50px;
}
#user_Data_Table tr{
    height: 60px;
}
#user_Data_Table th{
    text-align:left;
    width: 100px;
}
#user_Data_Table td:nth-child(2){
    border-bottom: 1px solid #000;
}
.edit_Img{
    width: 20px;
    border: none;
    cursor: pointer;
}
.section02{
    width: 200px;
    height: 300px;
}
.profile_Box{
        width: 200px;
        border: 1px solid #000;
        height: 300px;
    }
    #profile_Img{
        width: 100%;
        height: 180px;
        position: relative;
    }
    #image_Box{
        width: 150px;
        height: 150px;
        position: absolute;
        left: 25px;
        top: 25px;
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
        height: 60px;
        width: 100%;
        line-height: 60px;
        text-align: center;
    }
</style>
<body>
	<ul>
		<li>
			<jsp:include page="top.jsp"></jsp:include>
		</li>
		<li>
			<main>
				<jsp:include page="aside.jsp"></jsp:include>
	            <section class="section01">
	                <div class="title">
	                    <h2>개인정보</h2>
	                </div>
	                <table id="user_Data_Table">
	                    <tr>
	                        <th>
	                            <p>이름</p>
	                        </th>
	                        <td>
	                            <p>조해민</p>
	                        </td>
	                        <td>
	                            <img class="edit_Img" src="https://img.icons8.com/?size=100&id=YaKi83X4UXu5&format=png&color=000000" alt="">
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>
	                            <p>주소</p>
	                        </th>
	                        <td>
	                            <p>대한민국</p>
	                        </td>
	                        <td>
	                            <img class="edit_Img" src="https://img.icons8.com/?size=100&id=YaKi83X4UXu5&format=png&color=000000" alt="">
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>
	                            <p>생년월일</p>
	                        </th>
	                        <td>
	                            <p>20020101</p>
	                        </td>
	                        <td>
	                            <img class="edit_Img" src="https://img.icons8.com/?size=100&id=YaKi83X4UXu5&format=png&color=000000" alt="">
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>
	                            <p>휴대폰</p>
	                        </th>
	                        <td>
	                            <p>01012345678</p>
	                        </td>
	                        <td>
	                            <img class="edit_Img" src="https://img.icons8.com/?size=100&id=YaKi83X4UXu5&format=png&color=000000" alt="">
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>
	                            <p>이메일</p>
	                        </th>
	                        <td>
	                            <p>honggildong@email.com</p>
	                        </td>
	                        <td>
	                            <img class="edit_Img" src="https://img.icons8.com/?size=100&id=YaKi83X4UXu5&format=png&color=000000" alt="">
	                        </td>
	                    </tr>
	                </table>
	            </section>
	            <section class="section02">
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
	            </section>
        	</main>
		</li>
	</ul>
</body>
</html>