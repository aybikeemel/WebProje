<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yazılar.aspx.cs" Inherits="Web_Proje.yazılar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 224px;
            height: 24px;
        }
        .auto-style6 {
            width: 224px;
        }
        .auto-style7 {
            height: 24px;
            width: 469px;
        }
        .auto-style8 {
            width: 469px;
        }
        .auto-style9 {
            border: 1px dotted #2a595c;
        }
        .auto-style10 {
            border: 1px dotted #2a595c;
            margin-left: 0;
        }
        .auto-style11 {
            width: 126px;
        }
        .auto-style13 {
            width: 398px;
            height: 24px;
        }
        .auto-style15 {
            width: 445px;
            height: 24px;
        }
        .auto-style16 {
            height: 24px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
          <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder;"> &nbsp;&nbsp;
            <asp:Button ID="btn_yeArtı" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_meArtı_Click" />
&nbsp;
            <asp:Button ID="btn_yeeksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_yeeksi_Click" />
&nbsp;&nbsp; Yazı Ekleme Paneli </div>
        <asp:Panel ID="pnl_yaziEkle" runat="server" BackColor="#669999" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" style="text-align: right"></td>
                    <td class="auto-style7" style="text-align: right"></td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">Kategori</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="dropdownlistGorsel" Height="18px" Width="90px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: right">Başlık</td>
                    <td class="auto-style7" style="text-align: right">
                        <asp:TextBox ID="txt_yazibaslik" runat="server" CssClass="auto-style10" Height="37px" Width="468px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="text-align: right">Özet</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tb_yaziozet" runat="server" CssClass="auto-style9" Height="59px" TextMode="MultiLine" Width="463px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="text-align: right">İçerik</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tb_yaziicerik" runat="server" CssClass="auto-style9" Height="257px" TextMode="MultiLine" Width="467px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="text-align: right">Slider</td>
                    <td class="auto-style8">
                        <asp:FileUpload ID="fu_slider" runat="server" CssClass="dropdownlistGorsel" Height="19px" Width="467px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btn_yaziekle" runat="server" CssClass="butonGorsel" Height="24px" Text="Ekle" Width="100px" OnClick="btn_yaziekle_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="text-align: right">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>

</asp:Panel>
        <div style="height:30px;"> </div>
           <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder;"> &nbsp;&nbsp;
            <asp:Button ID="btn_mdArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_mdArti_Click" />
&nbsp;
            <asp:Button ID="btn_mdEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_mdEksi_Click" />
               &nbsp;&nbsp; Yazı Düzenleme Paneli </div>
        <asp:Panel ID="pnl_yaziduzenle" runat="server" BackColor="#669999" ForeColor="White">
            <asp:DataList ID="dl_yazigetir" runat="server">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style15">MAKALE ADI</td>
                            <td class="auto-style13">DÜZENLE</td>
                            <td class="auto-style16">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style15">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style11"> <a href="yazigüncelle.aspx?makaleID=<%#Eval("makaleID")%>">GÜNCELLE</a></td>
                            <td> <a href="yazılar.aspx?makaleID=<%#Eval("makaleID")%>&islem=sil"> SİL</a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
    </div>
</asp:Content>
