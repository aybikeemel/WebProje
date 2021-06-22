<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yazigüncelle.aspx.cs" Inherits="Web_Proje.yazigüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 242px;
        }
        .auto-style3 {
            border: 1px dotted #2a595c;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #669999">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Başlık</td>
            <td>
                <asp:TextBox ID="txt_yazibaslik" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Özet</td>
            <td>
                <asp:TextBox ID="txt_yaziozet" runat="server" BorderStyle="Dashed" CssClass="auto-style3" Height="46px" TextMode="MultiLine" Width="448px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">İçerik</td>
            <td>
                <asp:TextBox ID="txt_yaziicerik" runat="server" Height="139px" TextMode="MultiLine" Width="449px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Slider</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum Sayısı</td>
            <td>
                <asp:TextBox ID="txt_yorumsayisi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="btn_yaziguncelle" runat="server" CssClass="textboxGorsel" Height="25px" Text="Güncelle" Width="100px" OnClick="btn_yaziguncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
