using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class checkout : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = (string)Session["uid"];
        if (uid == null)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Login First!')</script>");

            Response.Redirect("mainPage.aspx#login");
        }
        else
        {
            string sel1 = "select p.pid,p.image,p.name,p.price from cart c,products p where c.uid='" + uid + "' and c.pid=p.pid";
            SqlDataAdapter sda = new SqlDataAdapter(sel1, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                ListView1.DataSource = ds;
                ListView1.DataBind();
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
            }

            string del = Request.QueryString["pid"];
            if (del != null)
            {
                string delete = "delete from cart where pid='" + del + "'";
                con.Open();
                SqlCommand cmd = new SqlCommand(delete, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("checkout.aspx");
            }
        }
    }
}