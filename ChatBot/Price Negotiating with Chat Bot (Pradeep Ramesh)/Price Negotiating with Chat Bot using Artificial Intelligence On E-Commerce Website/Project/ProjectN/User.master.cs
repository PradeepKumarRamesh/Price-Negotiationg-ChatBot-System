
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid =(string) Session["uid"];
        string sel1 = "select count(pid) from cart where  uid='"+uid+"'";
        SqlDataAdapter sda = new SqlDataAdapter(sel1, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        Label1.Text = ds.Tables[0].Rows[0][0].ToString();
             
    }
}
