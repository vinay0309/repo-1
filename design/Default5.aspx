<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
  
    <script src="Scripts/jquery-2.1.4.js"></script>
    <style>
        .auto-style6 {
            width: 100%;
        }
         .panel {
            display: none;
        }
    </style>
    <script>    
        $(document).ready(function () {
            $("#Button1").click(function (evt) {
                evt.preventDefault();

                $('#Panel1').slideToggle('slow');
                if ($('#Panel1').hasClass('panel')) {
                    $('#PanelState').attr('value', 'true');
                } else {
                    $('#PanelState').attr('value', 'false');
                }
            });

            if ($('#PanelState').attr('value') == 'false') {
                $('#Panel1').addClass('panel');
            }
        });
    </script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <asp:HiddenField ID="PanelState" runat="server" Value="false" />

     <table class="auto-style6">
             <tr>
                 <td>
                     <div style="height: 52px">
                         hbhbhhbb</div>
                 </td>
             </tr>
             <tr>
                 <td>
                     <div style="height: 427px">
                         <div id="div1" style="background-color:forestgreen">gvgvgvgv<asp:Button ID="Button1" runat="server" Height="19px" Text="Button" Width="73px" />
                         </div>
                         <asp:Panel ID="Panel1" runat="server" Height="427px"  BackColor="Blue">
                             <asp:Button ID="Button2" runat="server" Text="Button" />
                         </asp:Panel>
                         <asp:Panel ID="Panel2" runat="server" Height="427px" BackColor="Black">
                         </asp:Panel>
                         <asp:Panel ID="Panel3" runat="server" Height="427px" BackColor="OrangeRed">
                         </asp:Panel>
                         <asp:Panel ID="Panel4" runat="server" Height="427px" BackColor="YellowGreen">
                         </asp:Panel>
                     </div>
                 </td>
             </tr>
         </table>
    </div>
    </form>
</body>
</html>
