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
    .join_Box{
        width: 1200px;
        margin: 0 auto;
    }
    .join_Title{
        width: 100%;
        height: 100px;
        text-align: center;
        line-height: 100px;
    }
    .basicData h4{
        width: 100%;
        height: 30px;
        border-bottom: 1px solid #000;
    }
    .join_Input_Box{
        width: 100%;
    }
    .join_Table{
        width: 100%;
    }
    .join_Table tr{
    	width:400px;
        height: 65px;
    }
    .join_Table tr th{
        width: 150px;
        text-align: start;
        border-bottom: 1px solid #ddd;  
    }
    .join_Table tr td{
        border-bottom: 1px solid #ddd; 
        width: 
    }
    .Input_Text{
        height: 30px;
        padding-left: 5px ;
    }
    .radioBox{
    width: 45px;
    }
    .form_Btn{
        width: 100%;
        height: 70px;
        display: flex;
        padding: 15px 0 15px 0;
        justify-content: center;
    }
    .form_Btn input{
        width: 200px;
        height: 40px;
    }
    .error_Text{
    	font-size: 13px;
    	color : red;
    }
</style>
<body>
<script type="text/javascript" src="scriptFile.js"></script>
<div class="join_Box">
        <div class="join_Title">
            <h3>JOIN US</h3>
        </div>
        <div class="basicData">
            <h4>기본정보</h4>
            <form class="join_Input_Box" name="userInfo" action="join" method="post">
                <table class="join_Table">
                    <tr>
                        <th>
                            	아이디
                        </th>
                        <td>
                            <input class="Input_Text" type="text" name="id" id="user_Id">
							<span class="error_Text" id="id_Error_Text"></span>
                        </td>
                        <td>
                        	<input type="button" onclick="checkID()" value="중복 확인">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            	패스워드
                        </th>
                        <td>
                            <input class="Input_Text" type="password" name="pw" id="user_Pw">
							<span class="error_Text" id="pw_Error_Text"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            	패스워드 재확인
                        </th>
                        <td>
                            <input class="Input_Text" type="password" name="pw2" id="user_Pw2">
                            <span class="error_Text" id="pw2_Error_Text"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                           	 이름
                        </th>
                        <td>
                            <input class="Input_Text" type="text" name="name" id="user_Name">
                            <span class="error_Text" id="name_Error_Text"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                           	 성별
                        </th>
                        <td>
                        	<input type="radio" class = "radioBox" name="gender" id="user_Gender_Men" value="men">
                        	<label for="user_Gender_Men">남자</label>
                        	<input type="radio" class="radioBox" name="gender" id="user_Gender_Girl" value ="girl">
                        	<label for= "user_Gender_Girl">여자</label>                        
                            <span class="error_Text" id="gender_Error_Text"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            주소
                        </th>
                        <td>
                            <input class="Input_Text" type="text" name="address" id="user_Address" style="width: 300px;">
                            <span class="error_Text" id="address_Error_Text"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            휴대전화
                        </th>
                        <td>
                            <input class="Input_Text" type="tel" name="phone" id="user_Phone">
                            <span class="error_Text" id="phone_Error_Text"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            이메일
                        </th>
                        <td>
                            <input class="Input_Text" onblur="check()" type="email" name="email" id="user_Email">
                            <span class="error_Text" id="email_Error_Text"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            생년월일
                        </th>
                        <td>
                            <input class="Input_Text" type="text" name="birth" id="user_Birth" placeholder="예) 20020702">
                            <span class="error_Text" id="birth_Error_Text"></span>
                        </td>
                    </tr>
                </table>
                <div class="form_Btn">
                    <input type="button" onclick="dataCheck()" value="회원가입">
                </div>    
            </form>
        </div>
    </div>
</body>
</html>