<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="kategoriguncelle.aspx.cs" Inherits="Web_Proje.kategoriguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>