<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="TechHouseBTL.signIn" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/x-icon" href="btl/Image/smart-house.png" />
	<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
	<link  rel="stylesheet href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"/>
    <link rel="stylesheet" href="btl/css/SignIn.css">
    
	<%--//<script defer src="/btl/js/validateSignIn.js"></script>--%>
    <title>Đăng Nhập</title>
</head>
<body>
   <div class="container__form">
		
  
		  
		 <form id="form" runat="server">
			 <h1>Đăng Nhập</h1>
			 <div class="input-control">
			   <label for="email">Email</label>
			   <input id="email" name="email" type="email">
			   <div class="error"></div>
		    </div>
  
		    <div class="input-control">
			   <label for="password">Mật Khẩu</label>
			   <input id="password"name="password" type="password">
			   <div class="error" id="error"></div>
		    </div>


		    <input id="dn" name="dn" runat="server" type="submit" value="Sign In" 
				style="padding: 10px 179px;font-size: 15px;border: none;background-color: #4a96fa;color: white;border-radius: 15px; cursor:pointer;"></input>

		    <div class="error" id="loginerr" style="color:red;" runat="server"></div>
		 </form>
		    
		

		<p> <span style="font-size: 11px;">Chưa có tài khoản?</span>  <a style="font-size: 13px;" href="signup.aspx"> Đăng Ký tại đây!</a></p>

	 </div>
</body>
</html>
