
var loginResult = document.getElementById('loginInfo').value;

if(loginResult == 'empty'){
	alert('로그인 실패');
	location.href='/member/login';
}
else{
	alert('로그인 성공');
	location.href='/member/memberList';
}