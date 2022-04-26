<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="TechHouseBTL.signup" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="btl/Image/smart-house.png" />
	<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link  rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"/>
    <link rel="stylesheet" href="btl/css/SignUp.css"/>
	<script defer src="/btl/js/validateSignUp.js"></script>

    <title>Đăng Ký</title>
</head>
<body>
   
        <div class="container__form">
		<form id="form" onsubmit="return validateInputs()"  method="post" runat="server">
  
		    <h1>Đăng Ký</h1>
		    <div class="input-control">
			   <label for="username">Tên Người Dùng</label>
			   <input id="username" name="username" type="text">
			   <div class="error"></div>
		    </div>
  
		    <div class="input-control">
			   <label for="email">Email</label>
			   <input id="email" name="email" type="email">
			   <div class="error"></div>
		    </div>
  
		    <div class="input-control">
			   <label for="password">Mật Khẩu</label>
			   <input id="password"name="password" type="password">
			   <div class="error"></div>
		    </div>
  
		    <div class="input-control">
			   <label for="retype__password">Nhập lại mật khẩu</label>
			   <input id="retype__password"name="retype__password" type="password">
			   <div class="error"></div>
		    </div>
			<p id="signun_err" runat="server"></p>
		    
		    <button type="submit">Sign Up</button>
		</form>

		<p class="p__small"> <span style="font-size: 11px;">Đã có tài khoản?</span>  <a style="font-size: 13px;" href="signIn.aspx"> Đăng nhập tại đây!</a></p>

	 </div>

</body>
</html>
