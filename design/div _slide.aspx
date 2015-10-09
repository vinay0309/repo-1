<%@ Page Language="C#" AutoEventWireup="true" CodeFile="div _slide.aspx.cs" Inherits="div__slide" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat="server">
    <title></title>
    <
    <script src="Scripts/jquery-2.1.4.js"></script>
    <script src="Scripts/jquery-2.1.4.intellisense.js"></script>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script src="Scripts/toggle.js"></script>
   <script type="text/javascript" language="javascript">
       function warningMessage(FirstCanvas, FirstGrid, FirstHiddenField, SecondCanvas, SecondGrid, SceondHiddenField) {
           warningMessage1(FirstCanvas, FirstGrid, FirstHiddenField);
           warningMessage2(SecondCanvas, SecondGrid, SceondHiddenField);
       }
       function warningMessage1(FirstCanvas, FirstGrid, FirstHiddenField) {
           var canvas1 = document.getElementById(FirstCanvas);
           html2canvas(document.getElementById(FirstGrid), {
               onrendered: function (canvas1) {
                   document.body.appendChild(canvas1);
                   var image = canvas1.toDataURL("image/png");
                   image = image.replace('data:image/png;base64,', '');
                   document.getElementById(FirstHiddenField).value = image;
               }
           });
       }
       function warningMessage2(SecondCanvas, SecondGrid, SceondHiddenField) {
           var canvas2 = document.getElementById(SecondCanvas);
           html2canvas(document.getElementById(SecondGrid), {
               onrendered: function (canvas2) {
                   document.body.appendChild(canvas2);
                   var image1 = canvas2.toDataURL("image/png");
                   image1 = image1.replace('data:image/png;base64,', '');
                   document.getElementById(SceondHiddenField).value = image1;
               }
           });
       }
       $("document").ready(function () {
           if ($("#HiddenField1").val() == "block") {
               $("#sliderDiv").css("display", "none");
           }
           if ($("#HiddenField1").val() == "none") {
               $("#sliderDiv").css("display", "block");
           }
           $("#flip").click(function () {
               $("#sliderDiv2").slideUp("slow");
               $("#sliderDiv").slideToggle("slow");
               $("#sliderDiv1").slideUp("slow");
           });
       });
 
       $("document").ready(function () {
           if ($("#HiddenField2").val() == "block") {
               $("#sliderDiv1").css("display", "none");
           }
           if ($("#HiddenField2").val() == "none") {
               $("#sliderDiv1").css("display", "block");
           }
           $("#flip1").click(function () {
               $("#sliderDiv").slideUp("slow");
               $("#sliderDiv2").slideUp("slow");
               $("#sliderDiv1").slideToggle("slow");
           });
       });
       $("document").ready(function () {
           if ($("#HiddenField3").val() == "block") {
               $("#sliderDiv2").css("display", "none");
           }
           if ($("#HiddenField3").val() == "none") {
               $("#sliderDiv2").css("display", "block");
           }
           $("#flip2").click(function () {
               $("#sliderDiv").slideUp("slow");
               $("#sliderDiv1").slideUp("slow");
               $("#sliderDiv2").slideToggle("slow");
           });
       });
 
       $(function () {
           var currentPosition = 0;
           var slideWidth = 1200;
           var slides = $('.slide');
           var numberOfSlides = slides.length;
 
           slides.wrapAll('<div id="slidesHolder"></div>')
           slides.css({ 'float': 'left'
           });
           $('#slideshow').prepend('<span class="nav" id="leftNav">Move Left</span>')
.append('<span class="nav" id="rightNav">Move Right</span>');
           $('.nav').bind('click', function () {
               if (($(this).attr('id') == 'rightNav')) {
                   if (currentPosition == 0) {
                       currentPosition = currentPosition + 1
                   }
                   else if (currentPosition == 1) {
                       currentPosition = currentPosition + 1
                   }
                   else if (currentPosition == 2) {
                       currentPosition = 0
                   }
               }
               if (($(this).attr('id') == 'leftNav')) {
                   if (currentPosition == 0) {
                       currentPosition = currentPosition + 2
                   }
                   else if (currentPosition == 1) {
                       currentPosition = currentPosition - 1
                   }
                   else if (currentPosition == 2) {
                       currentPosition = currentPosition - 1
                   }
               }
               moveSlide();
           });
           function moveSlide() {
               $('#slidesHolder').animate({ 'marginLeft': slideWidth * (-currentPosition) });
           };
       });
   </script>
   <style type="text/css">
   #flip
{
padding:5px;
text-align:center;
border:solid 1px #c3c3c3;
}
#flip1
{
padding:5px;
text-align:center;
border:solid 1px #c3c3c3;
}
#flip2
{
padding:5px;
text-align:center;
border:solid 1px #c3c3c3;
}
#slideshow {
position: relative;
}
#slideshow #slideshowWindow {
height: 540px;
margin: 0;
overflow: hidden;
padding: 0;
position: relative;
width: 1200px;
left:30px;
}
#slideshow #slideshowWindow .slide {
height: 540px;
margin: 0;
padding: 0;
position: relative;
width: 1200px;
}
#slideshow #slideshowWindow .slide .slideText a:link, #slideshow #slideshowWindow .slide .slideText a:visited {
color: #FFFFFF;
text-decoration: none;
}
#slideshow #slideshowWindow .slide .slideText h2, #slideshow #slideshowWindow .slide .slideText p {
color: #FFFFFF;
margin: 10px 0 0 10px;
padding: 0;
}
.nav
{
display:block;
text-indent:-10000px;
position:absolute;
cursor:pointer;
}
#leftNav
{
    background-position: left;
    top: 290px;
    left:-4px;
    width: 50px;
    height: 120px;
    background-image: url('../Images/icon-slide-arrow-right.png');
    background-repeat: no-repeat;
    z-index: 999;
}
#rightNav
{
    background-position: right;
top:290px;
left:1215px;
width:50px;
height:120px;
background-image: url('../Images/icon-slide-arrow-leftt.png');
background-repeat:no-repeat;
}
       </style>
</head>
<body>
    
    <form id="form1"  runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

    <div>
        
    <div style="height: auto; width: auto; background-color: White;"> 
        <div id="flip" style="background-color: #0082AA; color: #FFFFFF;">
                    Filters</div>
                    <div id="sliderDiv" style="width: 100%; height: 700px;"> 
            This is Control sliding Panel. 
            <asp:Button ID="button1" runat="server" Text="Postback" onclick="button1_Click"/>
            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                oncheckedchanged="RadioButton1_CheckedChanged" />
        </div> 
       <div id="flip1" style="background-color: #0082AA; color: #FFFFFF;">
                    Map and Chart</div>
                    <div id="sliderDiv1" style="width: 100%; height: 700px;"> 
            This is Control sliding Panel. 
            <asp:Button ID="button2" runat="server" Text="SecondButton" 
                onclick="button2_Click"/>
        </div>
       <div id="flip2" style="background-color: #0082AA; color: #FFFFFF;">
                    Report</div>
                    
                    <div id="sliderDiv2" style="width: 100%; height: 700px;"> 
                    
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                            oncheckedchanged="CheckBox1_CheckedChanged" />
                            
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" 
                            Visible="False" />
            <div id="slideshow">
<div id="slideshowWindow">
<div class="slide">
<asp:GridView ID="grvMergeHeader" runat="server" 
                                ForeColor="White" Font-Names="Arial" Font-Size="10pt" GridLines="None">
                        </asp:GridView>
</div>
<div class="slide">
<asp:GridView ID="gridreport2" runat="server" ForeColor="White" Font-Names="Arial" Font-Size="10pt" GridLines="none">
                                    </asp:GridView>
</div>
<div class="slide">
<img src="slideshow/slide3.jpg" />
</div>
</div>
</div>
</div>
    </div> 
    <canvas id="myCanvas"  runat="server" width="200" height="200" hidden="hidden"></canvas>
    <asp:HiddenField ID="hdnResultValue" Value="Hie." runat="server"/>
    <canvas id="myCanvas1"  runat="server" width="200" height="200" hidden="hidden"></canvas>
    <asp:HiddenField ID="hdnResultValue1" Value="Hie." runat="server"/>
    <asp:HiddenField ID="HiddenField1" runat="server" Value="block"/>
    <asp:HiddenField ID="HiddenField2" runat="server" Value="block"/>
    <asp:HiddenField ID="HiddenField3" runat="server" Value="block"/>
    
    </div>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>