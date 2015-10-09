<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.js"></script>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
function ShowPanelTwo()
{

    $(document).ready(function () {
        function ShowPanelTwo() {
            $('#<%=pnlStepOne.ClientID%>').css("display", "none");
            //$('#<%=pnlStepTwo.ClientID%>').css("display","block");
            $('#<%=pnlStepTwo.ClientID%>').fadeIn(3000);

        }

    });

    
    

}

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Panel ID="pnlStepOne" runat="server">
            hbhb<br /> hbhb<br /> njbjb<br /> bhbh<br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
            
            <br />
        </asp:Panel>
        <asp:Panel ID="pnlStepTwo" runat="server"></asp:Panel>
    </div>
        <div id="AuthenticateUser" runat="server" style="display:block" >
   //login control
             <asp:Button ID="Button2" runat="server" Text="Button"  />
            vghvgv
</div>

<div id="ForceToChangePassword" runat="server" style="display:none" >
  //reset password control
    jhnhjhjhjhjhjhhjh
</div>
     
    </form>
</body>
</html>
