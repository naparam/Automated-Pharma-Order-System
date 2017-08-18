using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Order_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
            
        }
        BindData();
    }

    //Sale Date Calendra Setting Start
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;
    }


    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if(e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;

        }
    }//Sale Date Calendra Setting END
    //DataGridView Function Start
    public void BindData()
    {
        try
        {
            MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=pharma_db;Convert Zero Datetime=True");
            con.Open();

            MySqlCommand cmd = new MySqlCommand("select * from order_table", con);
            MySqlDataAdapter ada = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ada.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cmd.Dispose();
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }//DataGridView Function End

    //Save Button Code Start
    protected void Button1_Click1(object sender, EventArgs e)
    {

        MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=pharma_db;Convert Zero Datetime=True");
        con.Open();

        MySqlCommand cmd = new MySqlCommand("insert into order_table values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        clear();
        BindData();

    }
    //Save Button Code End
    //Clear Button Code Start
    protected void Button2_Click1(object sender, EventArgs e)
    {
        clear();
    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";

    }
    //Clear Button Code End
}