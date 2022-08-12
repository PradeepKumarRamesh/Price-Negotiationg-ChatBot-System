using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Check;

public partial class mainPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.checkLoad("S414", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion
        string sell = "select top 4 * from products";
        SqlDataAdapter sda1 = new SqlDataAdapter(sell, con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);

        ListView1.DataSource = ds1;
        ListView1.DataBind();

        string selll = "select top 4 * from products order by newid()";
        SqlDataAdapter sda1l = new SqlDataAdapter(selll, con);
        DataSet ds1l = new DataSet();
        sda1l.Fill(ds1l);

        ListView2.DataSource = ds1l;
        ListView2.DataBind();

        string sel = "select top 1 uid from reg order by uid desc";
        SqlDataAdapter sda = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        int urdid = 0;
        int count = ds.Tables[0].Rows.Count;
        if (count > 0)
        {
            int usid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
            urdid = usid + 1;
        }
        else
        {
            urdid = 101;
        }
        userid.Text = urdid.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(aid.Text=="admin" && apwd.Text=="admin")
        {
            Response.Redirect("addProducts.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Invalid Login!')</script>");

        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string ins = "insert into reg values('"+userid.Text+"','"+name.Text+"','"+email.Text+"','"+cont.Text+"','"+addr.Text+"','"+pwd.Text+"')";
        SqlCommand cmd = new SqlCommand(ins, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Registered!')</script>");
        Response.Redirect("mainPage.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string sel = "select * from reg where uid='" + uid.Text + "' and pwd='" + upwd.Text + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        int count = ds.Tables[0].Rows.Count;
        if (count > 0)
        {
            Session["uid"] = ds.Tables[0].Rows[0][0].ToString();
            Session["uname"] = ds.Tables[0].Rows[0][1].ToString();
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Invalid Login!')</script>");

        }

    }
}