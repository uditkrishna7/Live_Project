using System;
using System.Web.UI;

public partial class Home : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Page load logic, if any
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Logic for Pastry Boxes button click
        Response.Redirect("Categories.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Logic for Sweet Boxes button click
        Response.Redirect("Categories.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // Logic for Cake Boxes button click
        Response.Redirect("Categories.aspx");
    }
}
