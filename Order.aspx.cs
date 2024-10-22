using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.CodeDom;

public partial class Order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HUMAYUN\SQLEXPRESS;Initial Catalog=srk;Integrated Security=True;");

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string querry = "INSERT INTO BoxOrders (BoxType, BoxSize, BoxColor, BoxQuantity, CustomerName, CustomerAddress, CustomerContact, DeliverDate, ModeOfPayment, TransactionId, CustomerNote) " +
               "VALUES (@BoxType, @BoxSize, @BoxColor, @BoxQuantity, @CustomerName, @CustomerAddress, @CustomerContact, @DeliverDate, @ModeOfPayment, @TransactionId, @CustomerNote)";
        using (SqlCommand cmd = new SqlCommand(querry, con))
        {
            try
            {
                con.Open();
                cmd.Parameters.AddWithValue("@BoxType", ddlBoxType.SelectedValue);
                cmd.Parameters.AddWithValue("@BoxSize", txtSize.Text);
                cmd.Parameters.AddWithValue("@BoxColor", boxColour.Text);
                cmd.Parameters.AddWithValue("@BoxQuantity", int.Parse(txtQuantity.Text));
                cmd.Parameters.AddWithValue("@CustomerName", txtCustomerName.Text);
                cmd.Parameters.AddWithValue("@CustomerAddress", txtCustomerAddress.Text);
                cmd.Parameters.AddWithValue("@CustomerContact", txtCustomerContact.Text);
                cmd.Parameters.AddWithValue("@DeliverDate", DateTime.Parse(txtDeliveryDate.Text));
                cmd.Parameters.AddWithValue("@ModeOfPayment", ddlPaymentMode.SelectedValue);
                cmd.Parameters.AddWithValue("@TransactionId", txtTransactionId.Text);
                cmd.Parameters.AddWithValue("@CustomerNote", txtCustomerNotes.Text);
                int i = cmd.ExecuteNonQuery();
                if (i >= 1)
                {
                    Response.Write("<script>alert('Order submitted successfully!');</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Database error occurred.');</script>");
            }

        }
    }
}

