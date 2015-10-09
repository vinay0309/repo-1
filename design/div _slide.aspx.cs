using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class div__slide : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ( !IsPostBack )
        {
           
        }
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = "block";
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        HiddenField1.Value = "none";
    }

    protected void button2_Click(object sender, EventArgs e)
    {
        HiddenField2.Value = "block";
        HiddenField1.Value = "block";
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if ( CheckBox1.Checked )
        {
            
            HiddenField3.Value = "none";
        }
        else
        {
            //
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}