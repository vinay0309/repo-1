<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 496px;
        }
        .auto-style2 {
            width: 926px;
        }
    </style>
    <script type="text/javascript">

        function pageLoad(sender, args) {
            smoothAnimation();
        }


        function smoothAnimation() {
            var collPanel = $find("Panel1_CollapsiblePanelExtender");
            collPanel._animation._fps = 45;
            collPanel._animation._duration = 0.60;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div style="background-color:black">1</div>
                <asp:Panel ID="Panel1" runat="server" Height="500px" BackColor="LightBlue">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Panel ID="Panel6" runat="server">
                                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <cc1:CollapsiblePanelExtender ID="Panel1_CollapsiblePanelExtender" runat="server" BehaviorID="Panel1_CollapsiblePanelExtender"  SuppressPostBack="True" TargetControlID="Panel1" />
                <div style="background-color:black">2</div>
                <asp:Panel ID="Panel2" runat="server" Height="500px" BackColor="LightGray">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </asp:Panel>
                <div style="background-color:black">3</div>
                <asp:Panel ID="Panel3" runat="server" Height="500px" BackColor="LightGreen"></asp:Panel>
                <div style="background-color:black">4</div>
                <asp:Panel ID="Panel4" runat="server" Height="500px" BackColor="Silver"></asp:Panel>
                <div style="background-color:black">5</div>
                <asp:Panel ID="Panel5" runat="server" Height="500px" BackColor="Gold"></asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
