using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Expand
        this.CollapsiblePanelExtender1.Collapsed = false;
        this.CollapsiblePanelExtender1.ClientState = "false";
        // Collapse
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // Expand
        this.CollapsiblePanelExtender1.Collapsed = true;
        this.CollapsiblePanelExtender1.ClientState = "true";
    }
}