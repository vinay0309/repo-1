<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="employee" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Scripts/jquery-2.1.4.min.js"></script>
  
    <script src="Scripts/jquery-2.1.4.js"></script>
    
      <style type="text/css">
          .auto-style6 {
            width: 100%;
              height: 207px;
          }

        .panel {
            display: none;
        }
          .auto-style7 {
              color: #FFFFFF;
          }
          .auto-style8 {
              height: 347px;
          }
          .auto-style9 {
              height: 347px;
              width: 955px;
          }
          .auto-style10 {
              width: 955px;
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
                    
                </td>
            </tr>
            <tr>
                <td>
                    <div style="height: 427px" collapsed="True">
                        <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style7" ><strong><em>Panel1</em></strong></div>
                        <asp:Panel ID="Panel1" runat="server" Height="427px" BackColor="Blue">
                            <table class="auto-style6">
                                <tr>
                                    <td class="auto-style9"></td>
                                    <td class="auto-style8"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                                    </td>
                                </tr>
                            </table>

                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="Panel1_CollapsiblePanelExtender" runat="server" BehaviorID="Panel1_CollapsiblePanelExtender" CollapseControlID="Button1" TargetControlID="Panel1" Collapsed="False" />
                        <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style7" ><strong><em>Panel2</em></strong></div>
                        <asp:Panel ID="Panel2" runat="server" Height="427px" BackColor="#ff6600">
                         <table class="auto-style6">
                                <tr>
                                    <td class="auto-style9"></td>
                                    <td class="auto-style8"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Submit" />
                                    </td>
                                </tr>
                            </table>

                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="Panel2_CollapsiblePanelExtender" runat="server" BehaviorID="Panel2_CollapsiblePanelExtender" CollapseControlID="Button2" ExpandControlID="Button1" TargetControlID="Panel2" Collapsed="True" />
                        <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style7" ><strong><em>Panel3</em></strong></div>
                        <asp:Panel ID="Panel3" runat="server" Height="427px" BackColor="OrangeRed">
                         <table class="auto-style6">
                                <tr>
                                    <td class="auto-style9"></td>
                                    <td class="auto-style8"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button3" runat="server" Text="Submit" />
                                    </td>
                                </tr>
                            </table>

                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="Panel3_CollapsiblePanelExtender" runat="server" BehaviorID="Panel3_CollapsiblePanelExtender" CollapseControlID="Button3" ExpandControlID="Button2" TargetControlID="Panel3" Collapsed="True" />
                        <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style7" ><strong><em>Panel4</em></strong></div>
                        <asp:Panel ID="Panel4" runat="server" Height="427px" BackColor="YellowGreen">
                        <table class="auto-style6">
                                <tr>
                                    <td class="auto-style9"></td>
                                    <td class="auto-style8"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button4" runat="server" Text="Submit" />
                                    </td>
                                </tr>
                            </table>

                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="Panel4_CollapsiblePanelExtender" runat="server" BehaviorID="Panel4_CollapsiblePanelExtender" TargetControlID="Panel4" ExpandControlID="Button3" Collapsed="True" CollapseControlID="Button4" />
                        <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style7" ><strong><em>Panel5</em></strong></div>
                          <asp:Panel ID="Panel5" runat="server" Height="427px" BackColor="#66ffcc">
                        <table class="auto-style6">
                                <tr>
                                    <td class="auto-style9"> Submitted</td>
                                    <td class="auto-style8"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>
                                        
                                    </td>
                                </tr>
                            </table>

                        </asp:Panel>
                    
                        <cc1:CollapsiblePanelExtender ID="Panel5_CollapsiblePanelExtender" runat="server" BehaviorID="Panel5_CollapsiblePanelExtender" TargetControlID="Panel5" Collapsed="True" ExpandControlID="Button4" />
                    
                    </div>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

