<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kategoriler2.aspx.cs" Inherits="Web_Proje.kategoriler2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

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
                            <div style="height: 26px; width: 270px; color: #2a595c; font-weight: bolder; margin-top: 3px;"><a href="kategoriler2.aspx">-Kategoriler</a></div>
                            <div style="height: 26px; width: 270px; color: #2a595c; font-weight: bolder; margin-top: 3px;"><a href="makaleler.aspx">-</a>Yazılar</div>
                            <div style="height: 26px; width: 270px; color: #2a595c; font-weight: bolder; margin-top: 3px;"><a href="yorumlar.aspx">-Yorumlar</a></div>

                        </div>
                    </div>
                    <div class="govdesag">

                        <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 213px;
        }
        .auto-style3 {
            width: 213px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            width: 376px;
        }
        .auto-style7 {
            height: 24px;
            width: 349px;
        }
    </style>

    <div>
        <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder;"> &nbsp;&nbsp;
            <asp:Button ID="btn_keArtı" runat="server" Height="25px" OnClick="btn_keArtı_Click" Text="+" Width="25px" />
&nbsp;
            <asp:Button ID="btn_keeksi" runat="server" Height="25px" OnClick="btn_keeksi_Click" Text="-" Width="25px" />
&nbsp;&nbsp; Kategori Ekleme Paneli </div>
        <asp:Panel ID="pnl_kategoriEkle" runat="server" BackColor="#669999" ForeColor="White">



        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="text-align: right"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Kategori Adı</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_KategoriAdi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Sıra</td>
                <td>
                    <asp:TextBox ID="txtSira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Resim</td>
                <td>
                    <asp:FileUpload ID="fu_kategoriResim" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_kategoriEkle" runat="server" CssClass="butonGorsel" Text="Button" OnClick="btn_kategoriEkle_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
        <div style="height:30px;"> </div>
           <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder;"> &nbsp;&nbsp;
            <asp:Button ID="btn_kdArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_kdArti_Click" />
&nbsp;
            <asp:Button ID="btn_kdEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_kdEksi_Click" />
               &nbsp;&nbsp; Kategori Düzenleme Paneli </div>
        <asp:Panel ID="pnl_kategoriDuzenle" runat="server" BackColor="#669999" ForeColor="White">
            <asp:DataList ID="dl_kategoriGetir" runat="server" Width="699px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style6">&nbsp;KATEGORİ ADI</td>
                            <td>DÜZENLE</td>
                            <td>SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style7">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                            </td>
                           <td class="auto-style4"><a href="kategoriguncelle2.aspx?kategoriID=<%#Eval("kategoriID")%>"> DÜZENLE</a> </td>
                            <td class="auto-style4"> 
                           <a href="kategoriler.aspx?kategoriID=<%#Eval("kategoriID") %>&islem=sil">  SİL </a>
                            </td> 
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
</asp:Panel>
                <div style="height:30px;"> </div>
    </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
