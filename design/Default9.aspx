<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>

    <script src="Scripts/jquery-2.1.4.js"></script>
    <style>
        .panel {
            display: none;
        }

        .panel1 {
            display: block;
        }

        .auto-style1 {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
    <script>
        $(document).ready(function () {

            function testt() { alert('from client end')}
            function fad(pnl, valu, pnl2, valu2) {

                valu.attr('value', 'false');
                valu2.attr('value', 'true');

                if (pnl.hasClass('panel')) {
                    valu.attr('value', 'true');
                    //  valu2.attr('value', 'false');

                } else {
                    valu.attr('value', 'false');
                    valu2.attr('value', 'true');
                    //pnl2.slideDown('slow');
                    //if (pnl2.hasClass('panel')) {
                    //    valu2.attr('value', 'true');
                    //}

                }

                //pnl2.slideDown('slow');
                //if (pnl2.hasClass('panel')) {
                //    valu2.attr('value', 'true');
                //} else {
                //    valu2.attr('value', 'false');
                //}
                if ($('#HiddenField1').attr('value') == 'false') {

                    $('#Panel1').slideUp('swing');
                }
                else if ($('#HiddenField1').attr('value') == 'true') {

                    $('#Panel1').slideDown('swing');
                }

                if ($('#HiddenField2').attr('value') == 'false') {
                    $('#Panel2').slideUp('swing');
                }
                else if ($('#HiddenField2').attr('value') == 'true') {

                    $('#Panel2').slideDown('swing');
                }

                if ($('#HiddenField3').attr('value') == 'false') {
                    $('#Panel3').slideUp('swing');
                }
                else if ($('#HiddenField3').attr('value') == 'true') {

                    $('#Panel3').slideDown('swing');
                }
                if ($('#HiddenField4').attr('value') == 'false') {
                    $('#Panel4').slideUp('swing');
                }
                else if ($('#HiddenField4').attr('value') == 'true') {

                    $('#Panel4').slideDown('swing');
                }
                if ($('#HiddenField5').attr('value') == 'false') {
                    $('#Panel5').slideUp('swing');
                }
                else if ($('#HiddenField5').attr('value') == 'true') {

                    $('#Panel5').slideDown('swing');
                }

                if ($('#HiddenField6').attr('value') == 'false') {
                    $('#Panel6').slideUp('swing');
                }
                else if ($('#HiddenField6').attr('value') == 'true') {

                    $('#Panel6').slideDown('swing');
                }

            }

            if ($('#HiddenField1').attr('value') == 'false') {

                $('#Panel1').slideUp('swing');
            }
            else if ($('#HiddenField1').attr('value') == 'true') {

                $('#Panel1').slideDown('swing');
            }

            if ($('#HiddenField2').attr('value') == 'false') {
                $('#Panel2').slideUp('swing');
            }
            else if ($('#HiddenField2').attr('value') == 'true') {

                $('#Panel2').slideDown('swing');
            }

            if ($('#HiddenField3').attr('value') == 'false') {
                $('#Panel3').slideUp('swing');
            }
            else if ($('#HiddenField3').attr('value') == 'true') {

                $('#Panel3').slideDown('swing');
            }
            if ($('#HiddenField4').attr('value') == 'false') {
                $('#Panel4').slideUp('swing');
            }
            else if ($('#HiddenField4').attr('value') == 'true') {

                $('#Panel4').slideDown('swing');
            }
            if ($('#HiddenField5').attr('value') == 'false') {
                $('#Panel5').slideUp('swing');
            }
            else if ($('#HiddenField5').attr('value') == 'true') {

                $('#Panel5').slideDown('swing');
            }

            if ($('#HiddenField6').attr('value') == 'false') {
                $('#Panel6').slideUp('swing');
            }
            else if ($('#HiddenField6').attr('value') == 'true') {

                $('#Panel6').slideDown('swing');
            }


            $("#Button1").click(function (evt) {
                evt.preventDefault();
                fad($('#Panel1'), $('#HiddenField1'), $('#Panel2'), $('#HiddenField2'))

                //$('#Panel1').slideToggle('slow');
                //if ($('#Panel1').hasClass('panel')) {
                //    $('#HiddenField1').attr('value', 'true');
                //} else {
                //    $('#HiddenField1').attr('value', 'false');
                //}
            });




            $("#Button2").click(function (evt) {
                evt.preventDefault();
                fad($('#Panel2'), $('#HiddenField2'), $('#Panel3'), $('#HiddenField3'))

                //$('#Panel2').slideToggle('slow');
                //if ($('#Panel2').hasClass('panel')) {
                //    $('#HiddenField2').attr('value', 'true');
                //} else {
                //    $('#HiddenField2').attr('value', 'false');
                //}
            });



            $("#Button3").click(function (evt) {
                evt.preventDefault();
                fad($('#Panel3'), $('#HiddenField3'), $('#Panel4'), $('#HiddenField4'))

                //$('#Panel3').slideToggle('slow');
                //if ($('#Panel3').hasClass('panel')) {
                //    $('#HiddenField3').attr('value', 'true');
                //} else {
                //    $('#HiddenField3').attr('value', 'false');
                //}
            });



            $("#Button4").click(function (evt) {
                evt.preventDefault();
                fad($('#Panel4'), $('#HiddenField4'), $('#Panel5'), $('#HiddenField5'))

                //$('#Panel4').slideToggle('slow');
                //if ($('#Panel4').hasClass('panel')) {
                //    $('#HiddenField4').attr('value', 'true');
                //} else {
                //    $('#HiddenField4').attr('value', 'false');
                //}
            });



            $("#Button5").click(function (evt) {
                evt.preventDefault();
                fad($('#Panel5'), $('#HiddenField5'), $('#Panel6'), $('#HiddenField6'))

                //$('#Panel5').slideToggle('slow');
                //if ($('#Panel5').hasClass('panel')) {
                //    $('#HiddenField5').attr('value', 'true');
                //} else {
                //    $('#HiddenField5').attr('value', 'false');
                //}
            });


        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 502px">
            <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style1"><strong><em>Panel1</em></strong></div>
            <asp:Panel ID="Panel1" runat="server" Height="500px" BackColor="SkyBlue">
                <br />

                <asp:Button ID="Button1" runat="server" Text="Submit" />
                <br />
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Button" />
                <br />
                <br />
            </asp:Panel>
            <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style1"><strong><em>Panel2</em></strong></div>
            <asp:Panel ID="Panel2" runat="server" Height="500px" BackColor="LightGreen">
                <br />
                <asp:Button ID="Button2" runat="server" Text="Submit" />
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click1" Text="Button" />
                <asp:Button ID="Button8" runat="server" Text="Button" />
            </asp:Panel>
            <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style1"><strong><em>Panel3</em></strong></div>

            <asp:Panel ID="Panel3" runat="server" Height="500px" BackColor="Yellow">
                <br />
                <asp:Button ID="Button3" runat="server" Text="Submit" />
            </asp:Panel>
            <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style1"><strong><em>Panel4</em></strong></div>

            <asp:Panel ID="Panel4" runat="server" Height="500px" BackColor="#ff3300">
                <br />
                <asp:Button ID="Button4" runat="server" Text="Submit" />
            </asp:Panel>
            <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style1"><strong><em>Panel5</em></strong></div>

            <asp:Panel ID="Panel5" runat="server" Height="500px" BackColor="#009900">
                <br />
                <asp:Button ID="Button5" runat="server" Text="Submit" />
            </asp:Panel>
            <div style="background-color: black; border-bottom-style: solid; border-color: white; border-width: 2px; height: 20px; border-style: groove" class="auto-style1"><strong><em>Panel6</em></strong></div>

            <asp:Panel ID="Panel6" runat="server" Height="500px" BackColor="#ccff99">
                <br />
                thank you...............
            </asp:Panel>
        </div>
        <asp:HiddenField ID="HiddenField1" runat="server" Value="true" />
        <asp:HiddenField ID="HiddenField2" runat="server" Value="false" />
        <asp:HiddenField ID="HiddenField3" runat="server" Value="false" />
        <asp:HiddenField ID="HiddenField4" runat="server" Value="false" />
        <asp:HiddenField ID="HiddenField5" runat="server" Value="false" />
        <asp:HiddenField ID="HiddenField6" runat="server" Value="false" />
    </form>
</body>
</html>
