
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="TechHouseBTL.addProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div >
            <span>ten san pham</span><input type="text" name="name" />
        </div>
        <div>
            <span>anh san pham</span><input type="file" name="file" />
        </div>
        <div>
            <span>gia</span><input type="text" name="payment" />

        </div>
        <div><span>giam gia</span><input type="text" name="payment_sale" /></div>
        <div>
            <input type="submit" value="gui" />
        </div>
    </form>
</body>
</html>
