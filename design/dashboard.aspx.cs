using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Button dashboard_btn = this.Master.FindControl("dashboard_btn") as Button;
        Button organization_btn = this.Master.FindControl("organization_btn") as Button;
        Button employee_btn = this.Master.FindControl("employee_btn") as Button;
        Button reports_btn = this.Master.FindControl("reports_btn") as Button;
        Button preferences_btn = this.Master.FindControl("preferences_btn") as Button;
        Button projects_btn = this.Master.FindControl("projects_btn") as Button;

        dashboard_btn.CssClass = "Clicked";
        employee_btn.CssClass = "Initial";
        organization_btn.CssClass = "Initial";
        reports_btn.CssClass = "Initial";
        preferences_btn.CssClass = "Initial";
        projects_btn.CssClass = "Initial";
    }
}