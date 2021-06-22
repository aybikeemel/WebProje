<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kategoriguncelle2.aspx.cs" Inherits="Web_Proje.kategoriguncelle2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="admin.css" rel="stylesheet" />
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <div class="kutu">
                <div class="slider"></div>
                <div class="govde">
                <div class="govdesol">
                <div class="govdesolbaslik">MENÜLER</div>
                <div class="govdesolicerik">             
                   <div style="height: 26px; width: 270px; color:#2a595c; font-weight:bolder; margin-top:3px; "> <a href="kategoriler2.aspx">  -Kategoriler</a></div>
                    <div style="height: 26px; width: 270px; color:#2a595c; font-weight:bolder; margin-top:3px; "><a href="makaleler.aspx"> -</a>Yazılar</div>
                    <div style="height: 26px; width: 270px; color:#2a595c; font-weight:bolder; margin-top:3px; "> <a href="yorumlar.aspx"> -Yorumlar</a></div>

                </div>
               </div>
                <div class="govdesag"> 
                    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 209px;
        }
        .auto-style3 {
            border: 1px dotted #2a595c;
        }
        .auto-style4 {
            width: 209px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
    </style>
    <table class="auto-style1" style="background-color: #669999">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: right">Kategori Adı:&nbsp; </td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_kAdi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Sırası</td>
            <td>
                <asp:TextBox ID="txt_kSira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Adet:</td>
            <td>
                <asp:TextBox ID="txt_kAdet" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resmi:</td>
            <td>
                <asp:FileUpload ID="ju_kResim" runat="server" CssClass="auto-style3" Height="27px" Width="301px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
               <asp:Button ID="btn_kguncelle" runat="server" Height="20px" OnClick="btn_kguncelle_Click" Text="Guncelle" Width="89px" />
            </td>
        </tr>
    </table>
                </div>
            </div>  
            </div>
         
        </div>
    </form>
</body>
</html>
