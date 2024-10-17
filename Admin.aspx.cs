using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadOrders();
        }
    }

    private void LoadOrders()
    {
        // Fetch the orders from the session
        List<Dictionary<string, string>> orders = Session["Orders"] as List<Dictionary<string, string>>;
        if (orders != null && orders.Count > 0)
        {
            // Convert the order list to a data table and bind to GridView
            List<OrderDetail> orderDetailsList = new List<OrderDetail>();

            foreach (var order in orders)
            {
                OrderDetail detail = new OrderDetail
                {
                    BoxType = order["BoxType"],
                    BoxColor = order["BoxColor"],
                    Quantity = order["Quantity"],
                    DeliveryDate = order["DeliveryDate"],
                    CustomerNotes = order["CustomerNotes"]
                };
                orderDetailsList.Add(detail);
            }

            gridViewOrders.DataSource = orderDetailsList;
            gridViewOrders.DataBind();
        }
    }
    protected void gridViewOrders_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Handle the event here
        // Example: You can retrieve the selected row's data
        int selectedIndex = gridViewOrders.SelectedIndex;
        GridViewRow selectedRow = gridViewOrders.SelectedRow;

        string boxType = selectedRow.Cells[0].Text;
        string boxColor = selectedRow.Cells[1].Text;

        // You can now use this data for further processing
        // (e.g., display it somewhere or log it)
    }

    public class OrderDetail
    {
        public string BoxType { get; set; }
        public string BoxColor { get; set; }
        public string Quantity { get; set; }
        public string DeliveryDate { get; set; }
        public string CustomerNotes { get; set; }
    }
}
