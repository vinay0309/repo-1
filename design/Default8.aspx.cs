﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "uniquekey", "<script type='text/javascript'>ShowPanelTwo();</script>");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      //ScriptManager.RegisterClientScriptBlock(this, GetType(this), "fader", "$('#AuthenticateUser').fadeOut(); $('#ForceToChangePassword').fadeIn();");
    }
}