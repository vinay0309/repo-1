using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = "false";
        HiddenField2.Value = "true";
        HiddenField3.Value = "false";
        HiddenField4.Value = "false";
        HiddenField5.Value = "false";
        string jScript;
       // jScript = "<script>alert ('Javascript block of code executed')</script>";
        string jScriptValidator;

     //   jScript = "<script>function JavScriptFn(){alert ('Client Function in javascript is call')}</script>";

        jScriptValidator = "<script> function ReqFieldValidator() { if ($('#HiddenField1').attr('value') == 'false')  \n";
        jScriptValidator += "{ $('#Panel1').slideUp('swing');} \n ";
        jScriptValidator += "else if ($('#HiddenField1').attr('value') == 'true') \n";
        jScriptValidator += "{ $('#Panel1').slideDown('swing');} \n";
        //jScriptValidator += " return true \n";
        jScriptValidator += " } </script>";
         
             

            //if ($('#HiddenField2').attr('value') == 'false') {
            //    $('#Panel2').slideUp('swing');
            //}
            //else if ($('#HiddenField2').attr('value') == 'true') {

            //    $('#Panel2').slideDown('swing');
            //}

            //if ($('#HiddenField3').attr('value') == 'false') {
            //    $('#Panel3').slideUp('swing');
            //}
            //else if ($('#HiddenField3').attr('value') == 'true') {

            //    $('#Panel3').slideDown('swing');
            //}
            //if ($('#HiddenField4').attr('value') == 'false') {
            //    $('#Panel4').slideUp('swing');
            //}
            //else if ($('#HiddenField4').attr('value') == 'true') {

            //    $('#Panel4').slideDown('swing');
            //}
            //if ($('#HiddenField5').attr('value') == 'false') {
            //    $('#Panel5').slideUp('swing');
            //}
            //else if ($('#HiddenField5').attr('value') == 'true') {

            //    $('#Panel5').slideDown('swing');
            //}

            //if ($('#HiddenField6').attr('value') == 'false') {
            //    $('#Panel6').slideUp('swing');
            //}
            //else if ($('#HiddenField6').attr('value') == 'true') {

            //    $('#Panel6').slideDown('swing');
            //}


    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button7_Click1(object sender, EventArgs e)
    {
HiddenField1.Value = "false";
        HiddenField2.Value = "false";
        HiddenField3.Value = "true";
        HiddenField4.Value = "false";
        HiddenField5.Value = "false";
    }
}