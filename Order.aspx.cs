using System;
using System.Web.UI;

namespace Ecommerce_Website
{
    public partial class Order : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitOrder(object sender, EventArgs e)
        {
            //string name = txtName.Text;
            //string contact = txtContact.Text;
            //string address = txtAddress.Text;
            //string boxType = ddlBoxType.SelectedValue;
            //string boxColor = Request.Form["boxColor"]; // Get the color value
            //int quantity = int.Parse(txtQuantity.Text);
            //DateTime deliveryDate = DateTime.Parse(txtDeliveryDate.Text);
            //string customerNotes = txtCustomerNotes.Text;

            //// Create order summary
            //string orderSummary = $"Order Summary:<br>" +
            //                      $"Name: {name}<br>" +
            //                      $"Contact: {contact}<br>" +
            //                      $"Address: {address}<br>" +
            //                      $"Box Type: {boxType}<br>" +
            //                      $"Box Color: {boxColor}<br>" +
            //                      $"Quantity: {quantity}<br>" +
            //                      $"Delivery Date: {deliveryDate.ToShortDateString()}<br>" +
            //                      $"Customer Notes: {customerNotes}<br>" +
            //                      $"Please deposit 30% of the total order cost before delivery. " +
            //                      $"You will see the prototype of your order after three days.";

            //// Register a startup script to show the flash message
            //string script = $"<script type='text/javascript'>showFlashMessage('{orderSummary}');</script>";
            //ClientScript.RegisterStartupScript(this.GetType(), "ShowFlashMessage", script);
        }
    }
}
