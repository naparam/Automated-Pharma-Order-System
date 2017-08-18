using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;


public partial class Manufacturer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }
    //DataGridView Function Start
    public void BindData()
    {
        try
        {
            MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=pharma_db;Convert Zero Datetime=True");
            con.Open();

            MySqlCommand cmd = new MySqlCommand("select * from mfg_table", con);
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=pharma_db;Convert Zero Datetime=True");
        con.Open();

        MySqlCommand cmd = new MySqlCommand("insert into mfg_table values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        clear();
        BindData();
    }
    //Save Button Code End

    //Clear Button Code Start
    protected void Button2_Click(object sender, EventArgs e)
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
        
    }
    //Clear Button Code End


}