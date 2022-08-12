using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class addProducts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string sel = "select top 1 pid from products order by pid desc";
        SqlDataAdapter sda = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        int prdid = 0;
        int count = ds.Tables[0].Rows.Count;
        if (count > 0)
        {
            int ppid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
            prdid = ppid + 1;
        }
        else
        {
            prdid = 101;
        }

        pid.Text = prdid.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string ins = "insert into products values('"+pid.Text+"','"+Image1.ImageUrl+"','"+pname.Text+"','"+features.Text+"','"+warranty.Text+"','"+delivery.Text+"','"+discount.Text+"','"+price.Text+"','"+finalpr.Text+"')";
        SqlCommand cmd = new SqlCommand(ins, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Product Added!')</script>");
        Response.Redirect("addProducts.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Image1.Visible = true;
        string image, path;
        image = FileUpload1.FileName;
        path = Server.MapPath("~//images//");
        FileUpload1.SaveAs(path + image);
        Image1.ImageUrl = "images/" + image;
    }
}