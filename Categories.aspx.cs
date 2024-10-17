using System;

public partial class Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Any page initialization logic can go here if needed.
    }

    // Event handler for Pastry Box order button click
    protected void btnPastryOrder_Click(object sender, EventArgs e)
    {
        // Redirect to Order.aspx and pass the selected box type in the query string
        Response.Redirect("Order.aspx?boxType=Pastry Box");
    }

    // Event handler for Sweet Box order button click
    protected void btnSweetOrder_Click(object sender, EventArgs e)
    {
        // Redirect to Order.aspx and pass the selected box type in the query string
        Response.Redirect("Order.aspx?boxType=Sweet Box");
    }

    // Event handler for Cake Box order button click
    protected void btnCakeOrder_Click(object sender, EventArgs e)
    {
        // Redirect to Order.aspx and pass the selected box type in the query string
        Response.Redirect("Order.aspx?boxType=Cake Box");
    }
}
