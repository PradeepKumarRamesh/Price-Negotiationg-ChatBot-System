using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uid = (string)Session["uid"];
            if (uid == null)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Login First!')</script>");

                Response.Redirect("HomePage.aspx");
            }
            else
            {
                string sel = "select top 1 oid from orders order by oid desc";
                SqlDataAdapter sda = new SqlDataAdapter(sel, con);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                int ordid = 0;
                int count = ds.Tables[0].Rows.Count;
                if (count > 0)
                {
                    int oid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                    ordid = oid + 1;
                }
                else
                {
                    ordid = 101;
                }
                Label1.Text = ordid.ToString();

                string pid = Request.QueryString["pid"];
                string price = Request.QueryString["price"];

                if (price != null)
                {
                    total.Text = price;
                    Panel1.Visible = true;
                }
                else
                {
                    Panel1.Visible = false;
                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string urlpid = Request.QueryString["pid"];
       

        string urlprice = Request.QueryString["price"];
        string uid = (string)Session["uid"];
        string uname = (string)Session["uname"];
        if (urlpid != null)
        {
            string sell="select name from products where pid='"+urlpid+"'";
            SqlDataAdapter sda = new SqlDataAdapter(sell, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            string pname = ds.Tables[0].Rows[0][0].ToString();

            string orders1 = "insert into orders values('" + Label1.Text + "','" + uid + "','" + uname + "','" + pname + "','" + urlprice + "')";
            SqlCommand cmd1 = new SqlCommand(orders1, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            string sel = "select p.name,p.price from cart c,products p where c.uid='" + uid + "' and c.pid=p.pid";
            SqlDataAdapter sda = new SqlDataAdapter(sel, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            int count = ds.Tables[0].Rows.Count;
            string pnames = "", name = ""; int sum = 0, price = 0;
            for (int i = 0; i < count; i++)
            {
                price = Convert.ToInt16(ds.Tables[0].Rows[i][1]);
                name = ds.Tables[0].Rows[i][0].ToString();
                pnames = pnames + name + ",";
                sum = sum + price;
            }

            string orders = "insert into orders values('" + Label1.Text + "','" + uid + "','" + uname + "','" + pnames + "','" + sum + "')";
            SqlCommand cmd = new SqlCommand(orders, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            string del = "delete from cart where uid='" + uid + "'";
            SqlCommand cdel = new SqlCommand(del,con);
            con.Open();
            cdel.ExecuteNonQuery();
            con.Close();
        }
    }
}