using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class HomePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from products";
        SqlDataAdapter sda = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        ListView1.DataSource = ds;
        ListView1.DataBind();
    }
}