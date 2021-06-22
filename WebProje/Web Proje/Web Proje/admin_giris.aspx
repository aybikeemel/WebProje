<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_giris.aspx.cs" Inherits="Web_Proje.admin_giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
     *{
    margin:0;
    padding:0;
    border:0;
}




    </style>
</head>
<body style="background-color:#e1e1e1">
    <form id="form1" runat="server">
        <div style="height:50px; background-color:#2a595c; color:#fff;">
            <div style="float:left; width:300px; margin-top:20px;"> Kullanıcı adı:<asp:TextBox ID="txt_kullanici" runat="server" Height="25px" Width="142px"></asp:TextBox></div>
            <div style="float:left; width:250px;margin-top:20px;"> Şifre:<asp:TextBox ID="txt_sifre" runat="server" Height="27px" Width="166px" TextMode="Password"></asp:TextBox></div>
            <asp:Button ID="btn_giris" runat="server" Text="Giriş" Height="25px" Width="80px" BackColor="#fff" ForeColor="White" OnClick="btn_giris_Click"/></div>
            <div style="float:right; width:300px;  margin-top:20px; text-align:center">           
                <asp:Label ID="lbl_bilgi" runat="server" Text="Yönetici paneli" ForeColor="White"></asp:Label></div>
    </form>
</body>
</html>
