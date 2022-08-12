using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class single : System.Web.UI.Page
{
    //String flag = "0";
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\prade\Desktop\FY project\Price Negotiating with Chat Bot (Pradeep Ramesh)\Price Negotiating with Chat Bot using Artificial Intelligence On E-Commerce Website\Project\ProjectN\App_Data\priceNegotiate.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string pid = Request.QueryString["pid"];
        string sel1 = "select * from products where pid='" + pid + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sel1, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        ListView1.DataSource = ds;
        ListView1.DataBind();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid = (string)Session["uid"];
        if (uid == null)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Login First!')</script>");

            Response.Redirect("mainPage.aspx#login");
        }
        else
        {
            string pid = Request.QueryString["pid"];
            string sel1 = "select * from products where pid='" + pid + "'";
            SqlDataAdapter sda = new SqlDataAdapter(sel1, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            string pname = ds.Tables[0].Rows[0][2].ToString();
            string price = ds.Tables[0].Rows[0][7].ToString();

            string ins = "insert into cart values('" + uid + "','" + pid + "','" + pname + "','" + price + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("single.aspx?pid=" + pid);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string uid = (string)Session["uid"];
        if (uid == null)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "<script>alert('Login First!')</script>");

            Response.Redirect("mainPage.aspx#login");
        }
        else
        {
            Label1.Text += "<label style='background:#eee'>" + chat.Text + "</label><br/><br/>";
            string query = chat.Text.ToLower();
            string sel1 = "";

            string[] words = query.Split(' ');
            string prodId = "";

            string sel0 = "select pid,name from products";
            SqlDataAdapter sda0 = new SqlDataAdapter(sel0, con);
            DataSet ds0 = new DataSet();
            sda0.Fill(ds0);

            int count = ds0.Tables[0].Rows.Count;

            for (int i = 0; i < count; i++)
            {
                foreach (string word in words)
                {
                    string pname = ds0.Tables[0].Rows[i][1].ToString().ToLower();
                    string srchWord = word.ToLower();
                    if (pname.Contains(srchWord))
                    {
                        prodId = ds0.Tables[0].Rows[i][0].ToString();
                        hiddenflag.Value = "1";
                        hiddenpid.Value = prodId;
                        break;
                    }

                }

            }


            if (hiddenflag.Value == "1")
            {
                if (query.Contains("hello") || query.Contains("hi") || query.Contains("hey") || query.Contains("hii") || query.Contains("hiii"))
                {
                    Label1.Text += "Hello ! What would u like to Know?";
                }
                if (query.Contains("feature") || query.Contains("features") || query.Contains("detail")||query.Contains("details") || query.Contains("description"))
                {
                    sel1 = "select features from products  where pid='" + hiddenpid.Value + "'";
                    SqlDataAdapter sda1 = new SqlDataAdapter(sel1, con);
                    DataSet ds1 = new DataSet();
                    sda1.Fill(ds1);

                    if (ds1.Tables[0].Rows.Count > 0)
                    {

                        Label1.Text += "<b>BOT :</b>" + ds1.Tables[0].Rows[0][0].ToString() + "<br/><br/>";
                    }

                }
                else
             if (query.Contains("warranty") || query.Contains("waranty"))
                {
                    sel1 = "select warranty from products  where pid='" + hiddenpid.Value + "'";
                    SqlDataAdapter sda1 = new SqlDataAdapter(sel1, con);
                    DataSet ds1 = new DataSet();
                    sda1.Fill(ds1);

                    if (ds1.Tables[0].Rows.Count > 0)
                    {

                        Label1.Text += "<b>BOT :</b>" + ds1.Tables[0].Rows[0][0].ToString() + "<br/><br/>";
                    }

                }

                else
             if (query.Contains("discount") || query.Contains("discounts") || query.Contains("free"))
                {
                    sel1 = "select discount from products  where pid='" + hiddenpid.Value + "'";
                    SqlDataAdapter sda1 = new SqlDataAdapter(sel1, con);
                    DataSet ds1 = new DataSet();
                    sda1.Fill(ds1);

                    if (ds1.Tables[0].Rows.Count > 0)
                    {

                        Label1.Text += "<b>BOT :</b>" + ds1.Tables[0].Rows[0][0].ToString() + "<br/><br/>";
                    }

                }

                else
             if (query.Contains("delivery") || query.Contains("deliver") || query.Contains("delivered"))
                {
                    sel1 = "select delivery from products  where pid='" + hiddenpid.Value + "'";
                    SqlDataAdapter sda1 = new SqlDataAdapter(sel1, con);
                    DataSet ds1 = new DataSet();
                    sda1.Fill(ds1);

                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                        Label1.Text += "<b>BOT :</b>" + ds1.Tables[0].Rows[0][0].ToString() + "<br/><br/>";
                    }

                }

                else
             if (query.Contains("price") || query.Contains("cost") || query.Contains("costs") || query.Contains("rate") || query.Contains("costing"))
                {
                    if (query.Contains("reduce") || query.Contains("lower") || query.Contains("lowered") || query.Contains("decrease") || query.Contains("less") || query.Contains("lesser"))
                    {
                        sel1 = "select price,lastPrice from products  where pid='" + hiddenpid.Value + "'";
                        SqlDataAdapter sda1 = new SqlDataAdapter(sel1, con);
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);
                        if (Session["counter"] == null)
                        {
                            Session["counter"] = 1;
                        }
                        else
                        {
                            Session["counter"] = (int)Session["counter"] + 1;
                        }
                        int counter = (int)Session["counter"];
                        int dif = 0; double div = 0.0; double pr = 0.0;
                        int price = Convert.ToInt16(ds1.Tables[0].Rows[0][0]);
                        int finalprice = Convert.ToInt16(ds1.Tables[0].Rows[0][1]);
                        if (counter == 1)
                        {
                            dif = price - finalprice;
                            div = dif / 3;
                            pr = price - Math.Ceiling(div);
                        }
                        if (counter == 2)
                        {
                            dif = price - finalprice;
                            div = dif / 2;
                            pr = price - Math.Ceiling(div);
                        }
                        if (counter == 3)
                        {
                            dif = price - finalprice;
                            div = dif / 1;
                            pr = price - Math.Ceiling(div);
                        }
                        if (counter > 3)
                        {
                            pr = finalprice;
                            Label1.Text += "<b>BOT : This is our final price:</b>" + pr + "<br/>";
                            Label1.Text += "<label style='color:red;font-weight:bold'>Deal or no Deal : <a href='payment.aspx?pid=" + hiddenpid.Value + "&price=" + pr + "'>Deal</label><br/><br/>";
                            Session["counter"] = null;
                        }
                        else
                        {
                            Label1.Text += "<b>BOT :</b>" + pr + "<br/>";
                            Label1.Text += "<label style='color:red;font-weight:bold'>Deal or no Deal : <a href='payment.aspx?pid=" + hiddenpid.Value + "&price=" + pr + "'>Deal</label><br/><br/>";

                        }


                    }
                    else
                    {
                        sel1 = "select price from products where pid='" + hiddenpid.Value + "'";
                        SqlDataAdapter sda1 = new SqlDataAdapter(sel1, con);
                        DataSet ds1 = new DataSet();
                        sda1.Fill(ds1);

                        if (ds1.Tables[0].Rows.Count > 0)
                        {
                            Label1.Text += "<b>BOT :</b>" + ds1.Tables[0].Rows[0][0].ToString() + "<br/><br/>";
                        }
                    }

                }


                else
                {
                    Label1.Text += "Kindly Contact our Customer Support Service Team at :<label style='color:blue'>7777777777</label><br/>";

                }
            }
            if (hiddenflag.Value == "0")
            {
                Label1.Text += "Kindly Contact our Customer Support Service Team at :<label style='color:blue'>7777777777</label><br/>";
            }


            chat.Text = "";
        }
    }
}