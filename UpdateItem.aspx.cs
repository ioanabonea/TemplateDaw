using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        if (string.IsNullOrEmpty(id))
        {
            Response.Redirect("~/Update.aspx");
        }
        if (!IsPostBack)
        {
            PopulateControls(id);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        conn.Open();

        string insertTxt = "Update Meciuri " +
                            "SET = @param1, = @param2, = @param3, = @param4, = @param5" +
                            " WHERE IDMeci = @id";

        SqlCommand cmd = new SqlCommand(insertTxt, conn);

        //copy-paste din create

        //cmd.Parameters.Add(new SqlParameter("@param1", int.Parse(DropDownList1.SelectedValue)));
        //cmd.Parameters.Add(new SqlParameter("@param2", TextBox1.Text.ToString()));
        //cmd.Parameters.Add(new SqlParameter("@param3", int.Parse(TextBox2.Text)));
        //cmd.Parameters.Add(new SqlParameter("@param4", ));
        //cmd.Parameters.Add(new SqlParameter("@param5", ));

        cmd.ExecuteNonQuery();

        conn.Close();

        Response.Redirect("~/UpdateItem.aspx?id=" + id);
    }

    private void PopulateControls(string id)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string selectTxt = "SELECT  IDLocatie, Titlu, Descriere, Data, NrLocuri FROM Eveniment WHERE (IDEveniment = @id)";

        conn.Open();

        SqlCommand cmd = new SqlCommand(selectTxt, conn);

        cmd.Parameters.Add(new SqlParameter("@id", System.Data.SqlDbType.Int));
        cmd.Parameters["@id"].Value = id;

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {

            //DropDownList1.SelectedValue = reader["IDLocatie"].ToString();
            //TextBox1.Text = reader["Titlu"].ToString();
            //TextBox2.Text = reader["Descriere"].ToString();
            //TextBox3.Text = DateTime.Parse(reader["Data"].ToString()).ToShortDateString();
            //TextBox4.Text = reader["NrLocuri"].ToString();
        }

        reader.Close();
        conn.Close();
    }
 
}