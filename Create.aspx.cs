using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        conn.Open();

        string insertTxt = "INSERT INTO VALUES(@param1,@param2,@param3,@param4,@param5)";

        SqlCommand cmd = new SqlCommand(insertTxt, conn);

        //cmd.Parameters.Add(new SqlParameter("@param1", int.Parse(DropDownList1.SelectedValue)));
        //cmd.Parameters.Add(new SqlParameter("@param2", TextBox1.Text.ToString()));
        //cmd.Parameters.Add(new SqlParameter("@param3", int.Parse(TextBox2.Text)));
        //cmd.Parameters.Add(new SqlParameter("@param4", ));
        //cmd.Parameters.Add(new SqlParameter("@param5", ));

        cmd.ExecuteNonQuery();

        conn.Close();
    }
}