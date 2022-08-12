using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class editProducts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGridData();
        }
    }

  

    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        //NewEditIndex property used to determine the index of the row being edited.  
        GridView1.EditIndex = e.NewEditIndex;
        LoadGridData();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        LoadGridData();
    }

    protected void GridView1_Del(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        Label id1 = GridView1.Rows[e.RowIndex].FindControl("l1") as Label;
        string sql1 = "delete from products where pid='" + id1.Text + "'";
        SqlCommand cmd = new SqlCommand(sql1, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        LoadGridData();
    }

    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        //Finding the controls from Gridview for the row which is going to update  
        Label id = GridView1.Rows[e.RowIndex].FindControl("l1") as Label;
        TextBox c1 = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox c2 = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        TextBox c3 = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
        TextBox c4 = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
        TextBox c5 = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
        TextBox c6 = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
        TextBox c7 = GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;

        //con = new SqlConnection(cs);
        con.Open();
        string str = "Update products set name='" + c1.Text + "',features='" + c2.Text + "',warranty='" + c3.Text + "',delivery='" + c4.Text + "',discount='" + c5.Text + "',price='" + c6.Text + "',lastPrice='" + c7.Text + "' where pid='" + id.Text + "'";
        //updating the record  
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        //Call ShowData method for displaying updated data  
        LoadGridData();
    }

    private void LoadGridData()
    {
        try
        {
            SqlDataAdapter da2 = new SqlDataAdapter("Select * from products", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            GridView1.DataSource = ds2;
            GridView1.DataBind();

        }
        catch (InvalidCastException exx)
        {
            String alertmsg = "No items";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);

        }
    }

    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        LoadGridData();
    }

}