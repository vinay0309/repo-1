<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CollapsiblePanelExtender Tips </title>
    <style type="text/css">
        .cpHeader {
            color: white;
            background-color: #719DDB;
            font: bold 11px auto "Trebuchet MS", Verdana;
            font-size: 12px;
            cursor: pointer;
            width: 450px;
            height: 18px;
            padding: 4px;
        }

        /*.cpBody {
            background-color: #DCE4F9;
            font: normal 11px auto Verdana, Arial;
            border: 1px gray;
            width: 450px;
            padding: 4px;
            padding-top: 7px;
        }*/
         .cpBody
        {
            background-color: #DCE4F9;
            font: normal 11px auto Verdana, Arial;
            border: 1px gray;               
            width:450px;           
            padding: 4px;
            padding-top: 2px;
            height:0px;
          overflow: hidden;
        }
    </style>
    <script type="text/javascript">

        function pageLoad(sender, args) {
            smoothAnimation();
        }


        function smoothAnimation() {
            var collPanel = $find("CollapsiblePanelExtender1");
            collPanel._animation._fps = 45;
            collPanel._animation._duration = 0.30;
        }

    </script>
    <script type="text/javascript">

        function ExpandCollapse() {
            var collPanel = $find("CollapsiblePanelExtender1");
            if (collPanel.get_Collapsed())
                collPanel.set_Collapsed(false);
            else
                collPanel.set_Collapsed(true);
        }

    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:Button ID="jquery_btn" OnClientClick="ExpandCollapse()"
                        runat="server" Text="Expand/Collapse" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

                   <asp:Panel ID="pHeader" runat="server" CssClass="cpHeader">
                <asp:Label ID="lblText" runat="server" />
            </asp:Panel>
            <asp:Panel ID="pBody" runat="server" CssClass="cpBody" >
            Lorem ipsum dolor sit amet, consectetur adipisicing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna
aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
            </asp:Panel>
<cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="pBody" CollapseControlID="pHeader" ExpandControlID="pHeader"
Collapsed="false" TextLabelID="lblText" CollapsedText="Click to Show Content.." ExpandedText="Click to Hide Content.." CollapsedSize="0" SuppressPostBack="True">
            </cc1:CollapsiblePanelExtender>           
          
            <asp:Panel ID="pHeaderTwo" runat="server" CssClass="cpHeader">
                <asp:Label ID="lblTextTwo" runat="server" />
            </asp:Panel>
            <asp:Panel ID="pBodyTwo" runat="server" CssClass="cpBody" >
            This is my second panel
            </asp:Panel>
           
<cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" TargetControlID="pBodyTwo" CollapseControlID="pHeaderTwo" ExpandControlID="pHeaderTwo"
Collapsed="true" TextLabelID="lblTextTwo" CollapsedText="Click to Show Content.." ExpandedText="Click to Hide Content.." CollapsedSize="0">
            </cc1:CollapsiblePanelExtender>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
