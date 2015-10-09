using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if ( !IsPostBack )
        //{
        //    dashboard_btn.CssClass = "Clicked";
        //    Response.Redirect("dashboard.aspx");

        //}
      

    }

    protected void dashboard_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("dashboard.aspx");
        dashboard_btn.CssClass = "Clicked"; 
        employee_btn.CssClass = "Initial";
        organization_btn.CssClass = "Initial";
        reports_btn.CssClass = "Initial";
        preferences_btn.CssClass = "Initial";
        projects_btn.CssClass = "Initial";

    }
    protected void organization_btn_Click(object sender, EventArgs e)
    {
        //Response.Redirect("organization.aspx");

    }
    protected void employee_btn_Click(object sender, EventArgs e)
    {
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "location.href = 'employee.aspx'", true);
       
            Response.Redirect("employee.aspx");
        
        employee_btn.CssClass = "Clicked";
        dashboard_btn.CssClass = "Initial";
        organization_btn.CssClass = "Initial";
        reports_btn.CssClass = "Initial";
        preferences_btn.CssClass = "Initial";
        projects_btn.CssClass = "Initial";

    }
    protected void reports_btn_Click(object sender, EventArgs e)
    {
        //Response.Redirect("reports.aspx");

    }
    protected void preferences_btn_Click(object sender, EventArgs e)
    {
       // Response.Redirect("preferences.aspx");

    }
    protected void projects_btn_Click(object sender, EventArgs e)
    {
       // Response.Redirect("projects.aspx");

    }


    protected void Employee_Listing_btn_Click(object sender, EventArgs e)
    {

    }
     //Button dashboard_btn = this.Master.FindControl("dashboard_btn") as Button;
     //   Button organization_btn = this.Master.FindControl("organization_btn") as Button;
     //   Button employee_btn = this.Master.FindControl("employee_btn") as Button;
     //   Button reports_btn = this.Master.FindControl("reports_btn") as Button;
     //   Button preferences_btn = this.Master.FindControl("preferences_btn") as Button;
     //   Button projects_btn = this.Master.FindControl("projects_btn") as Button;

     //   employee_btn.CssClass = "Clicked";
     //   dashboard_btn.CssClass = "Initial";
     //   organization_btn.CssClass = "Initial";
     //   reports_btn.CssClass = "Initial";
     //   preferences_btn.CssClass = "Initial";
     //   projects_btn.CssClass = "Initial";
}
