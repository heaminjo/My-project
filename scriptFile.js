function idCheck(){
	var id = document.userInfo.user_Id;
	var errorId = document.getElementById("id_Error_Text");
	
	userInfo.method = "Post";
	userInfo.action = "idCheck";
	
	var request = new Request();
	
	var result = request.getParameter("result");
	
	if(result == "1"){
		errorId.textContent = "중복되는 아이디 입니다."
	}
	else{
		errorId.textContent = "사용가능한 아이디 입니다."
	}
}
function dataCheck() {

	var id = document.userInfo.user_Id;
	var pw = document.userInfo.user_Pw;
	var pw2 = document.userInfo.user_Pw2;
	var name = document.userInfo.user_Name;
	var gender = document.userInfo.gender;
	var address = document.userInfo.user_Address;
	var phone =	document.userInfo.user_Phone;
	var email  = document.userInfo.user_Email;
	var birth= document.userInfo.user_Birth;
	
	var textId = document.getElementById("id_Error_Text")
	var textPw = document.getElementById("pw_Error_Text")
	var textPw2 = document.getElementById("pw2_Error_Text")
	var textName = document.getElementById("name_Error_Text")
	var textGender = document.getElementById("gender_Error_Text")
	var textAddress = document.getElementById("address_Error_Text")
	var textPhone = document.getElementById("phone_Error_Text")
	var textEmail = document.getElementById("email_Error_Text")
	var textBirth = document.getElementById("birth_Error_Text")
	
var result = new Boolean(true);
    
	//아이디
	if(id.value == ""){
		textId.textContent = "아이디를 입력해주세요."
		result = false;
	}
	else if(id.value.length < 8 ||
			id.value.length > 16){
		textId.textContent = "아이디는 8~16글자로 입력해주세요."
	}
	else{
		textId.textContent = "";
	}
	//비밀번호
	if(pw.value == ""){
		textPw.textContent = "비밀번호를 입력해주세요."
		result = false;
	}
	else if(pw.value.length < 9 ||
			pw.value.length > 16){
			textPw.textContent = "비밀번호는 8~20자이내로 입력해주세요."
			result = false;
	}
	else{
		textPw.textContent = "";
	}
	//비밀번호 확인
	if(pw2.value == ""){
		textPw2.textContent = "비밀번호를 다시 입력해주세요."
		result = false;
	}
	else if(pw.value != pw2.value){
		textPw2.textContent = "새 비밀번호가 일치하지 않습니다."
		result = false;
	}
	else{
		textPw2.textContent = "";
	}
	//이름
	if(name.value == ""){
		textName.textContent = "이름을 입력해주세요."
		result = false;
	}
	else{
		textName.textContent = "";
	}
	//성별
	if(gender.value == ""){
		textGender.textContent = "성별을 선택해주세요."
		result = false;
	}
	else{
		textGender.textContent = "";
	}
	//주소
	if(address.value == ""){
		textAddress.textContent = "주소를 입력해주세요."
		result = false;
	}
	else{
		textAddress.textContent = "";
	}
    
	//휴대번호
	if(phone.value == ""){
		textPhone.textContent = "휴대번호를 입력해주세요."
		result = false;
	}
	else if(phone.value.length != 11){
		textPhone.textContent = "휴대번호 형식에 맞게 입력해주세요."
	}
	else{
		textPhone.textContent = "";
	}
	//이메일
	if(email.value == ""){
		textEmail.textContent = "이메일을 입력해주세요."
		result = false;
	}
	else{
		textEmail.textContent = "";
	}
	//생년월일
	if(birth.value == ""){
		textBirth.textContent = "생년월일을 입력해주세요."
		result = false;
	}
	else if(birth.value.length != 8){
		textBirth.textContent = "형식에 맞게 입력해주세요.";
	}
	else{
		textBirth.textContent = "";
	}
    //만약 전부 올바르게 입력됐다면 form을 submit하라
	if(result){
		userInfo.method = "Post";
		userInfo.action = "join";
		userInfo.submit();
	}
}