<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forum.aspx.cs" Inherits="Web_Proje.forum" %>

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
                   
                    <div class="govdesag">
                        <style type="text/css">
        .auto-style1 {
            height: 36px;
            width: 100%;
        }
        .auto-style2 {
            width: 715px;
            height: 745px;
        }
        .auto-style3 {
            height: 233px;
            width: 344px;
            float: left;
        }
        .auto-style4 {
            float: right;
            width: 172px;
            height: 217px;
        }
        .auto-style5 {
            width: 89%;
             height: 235px;
         }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            border: 1px dotted #2a595c;
        }
        .auto-style8 {
            background-color: #2a595c;
            color: #fff;
        }
        .auto-style9 {
            height: 30px;
        }
         .auto-style10 {
             width: 690px;
             height: 265px;
             margin-left: 0;
             margin-top: 93;
         }
         .auto-style11 {
             width: 100%;
         }
         .auto-style13 {
             width: 157px;
         }
         .auto-style15 {
             width: 173px;
         }
         .auto-style16 {
             width: 173px;
             height: 24px;
         }
    </style>

  
    
    <div style="background-color:#2a595c; color:#fff; text-align:center; font-size:24px; font-weight:bolder;" class="auto-style1">  Yorum yap </div>
    <div style="height:10px; width:100%;"> </div>
    <div class="auto-style2">        
        <div class="auto-style3" style="border: 1px dotted #2a595c; width: 340px; height: 200px;"> 
            <asp:TextBox ID="txt_yorumicerik" placeholder="Buraya Yorumunuzu Giriniz." runat="server" Height="196px" TextMode="MultiLine" Width="336px"></asp:TextBox>
        </div>

            <div class="auto-style4" style="border: 1px dotted #2a595c; width: 340px; height: 200px;">
           
                <table class="auto-style5" style="text-align: center">
                    <tr>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_adSoyad" placeholder="Adınızı Soyadınızı Giriniz."  runat="server" CssClass="auto-style7" Height="24px" Width="308px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_email" placeholder="Email Adresinizi Giriniz."  runat="server" CssClass="textboxGorsel" Height="25px" Width="309px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Button ID="btn_yorumEkle" runat="server" CssClass="auto-style8" Height="30px" Text="Gönder" Width="111px" />
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Yorum yazınız!" ForeColor="Red" ControlToValidate="txt_yorumicerik"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_adSoyad" ErrorMessage="Adınızı Soyadınızı giriniz!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="Mailinizi Giriniz!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                    </tr>
                </table>
           

        </div>          
        <div class="auto-style10" style="margin-top:50px;">  
              <br>
            <asp:DataList ID="DataList1" runat="server" Height="315px" Width="690px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <HeaderTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style13">AD</td>
                            <td>YORUM</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style11">
                        <tr>
                            <td class="auto-style16">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Literal>
                            </td>
                            <td class="auto-style6">
                                <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </div>
</asp:Content>

                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
