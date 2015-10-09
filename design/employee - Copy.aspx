<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="employee - Copy.aspx.cs" Inherits="employee" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .panel {
            display: none;
        }
    </style>
   <%-- <script>
        function pageLoad() {
            $(function () {
                $("div1").click(function () {
                    $("header").toggle('slow');
                });
                //$("#btn").click(function (evt) {
                //    evt.preventDefault();
                //    alert('ererw');

                //    $('#Panel1').slideToggle('slow');
                //    if ($('#Panel1').hasClass('panel')) {
                //        $('#PanelState').attr('value', 'true');
                //    } else {
                //        $('#PanelState').attr('value', 'false');
                //    }
                //});
                //if ($('#PanelState').attr('value') == 'false') {
                //    $('#Panel1').addClass('panel');
                //}

            });
        }
       </script>--%>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="side_bar" runat="Server">





    <div style="height: 551px; width: 180px; background-color: #F2F2F2">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Employee_Listing_btn" runat="server" Text="Employee Listing" BorderStyle="None" Height="34px" Width="173px" CssClass="original" OnClick="Employee_Listing_btn_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Attendance_btn" runat="server" BorderStyle="None" Text="Attendance" Height="34px" Width="173px" CssClass="original" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Leave_Tracker_btn" runat="server" BorderStyle="None" Text="Leave Tracker" Height="34px" Width="173px" CssClass="original" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Request_Expense_btn" runat="server" BorderStyle="None" Text="Request Expense" Height="34px" Width="173px" CssClass="original" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Objectives_btn" runat="server" BorderStyle="None" Text="Objectives" Height="34px" Width="173px" CssClass="original" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="KPI_btn" runat="server" BorderStyle="None" Text="KPI" Height="34px" Width="173px" CssClass="original" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sub_head" runat="Server">
    <div style="height: 55px; background-color: #F2F2F2" id="header">
        this is employee listing header....
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="emp_content" runat="Server">
    <div style="height: 490px;">
        <br />
        <asp:HiddenField ID="PanelState" runat="server" Value="false" />
        <table class="auto-style6">
            <tr>
                <td>
                    <div style="height: 52px">
                        hbhbhhbb
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="height: 427px">
                        <div id="div1" style="background-color: forestgreen">
                            gvgvgvgv                            <asp:Button ID="Button2" runat="server" Text="Button" />

                        </div>
                        <asp:Panel ID="Panel1" runat="server" Height="427px" BackColor="Blue">
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="Panel1_CollapsiblePanelExtender" runat="server" BehaviorID="Panel1_CollapsiblePanelExtender" TargetControlID="Panel1" CollapseControlID="Button1" ExpandControlID="Button2">
                        </cc1:CollapsiblePanelExtender>
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
</asp:Content>

