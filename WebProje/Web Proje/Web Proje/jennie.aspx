<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jennie.aspx.cs" Inherits="Web_Proje.jennie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Jennie Wiki</title>
    <link href="kullanici.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="kutu">
            <div class="slider" >&nbsp;&nbsp; <a href=\default.aspx>Jennie Wiki</a></div>
            <div class="menu">
                <div style="float:left; width:200px; line-height:40px; margin-left:20px; text-align:center; font-family:'Century Gothic'; text-decoration:none">
                    
                     <a href="kategori.aspx">Kategoriler</a></div>
                <div style="float:left; width:200px; line-height:40px; margin-left:20px; text-align:center; font-family:'Century Gothic'; text-decoration:none">
                    
                     <a href="galeri.aspx">Galeri</a></div>

                <div style="float:left; width:200px; line-height:40px; margin-left:20px; text-align:center; font-family:'Century Gothic'; text-decoration:none">
                    
                     <a href="forum.aspx">Forum</a></div>
                <div style="float:right; width:200px; line-height:40px; margin-right:5px; text-align:center; font-family:'Century Gothic'; text-decoration:none">
                    
                     <a href="admin_giris.aspx">Yönetici Girişi</a></div>
            </div>
            <div class="govde">
                <div class="govdebaslik">
                    
                     

                        <div style="float:left; width:400px; margin-left:60px; color:white; font-size:30px;">
                    <asp:Label ID="lbl_baslik" runat="server" Text="Jennie"></asp:Label>

                    </div>

                    


                </div>

                <div class="govdeicerik">

                    

                    <div style="float:left; width:657px; margin-left:20px; color:white;margin-top:15px; height: 464px;text-align:justify;">
                    <asp:Label ID="lbl_icerik" runat="server"></asp:Label>

                    </div>

                    

                </div>
                <div class="govderesim">
                    

                    <div style="margin-left:20px; margin-right:20px; margin-top:20px;opacity:100%;">

                        <asp:Image ID="Image1" runat="server" Height="307px" Width="250px" />
                    </div>

                    


                </div>
            </div>
            <div class="alt"></div>
        </div>
    </form>
</body>
</html>

