using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Diagnostics;
using System.Data.SqlClient;

public partial class wTestExt : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
  
        
        string query = "select id, Imya, Familia from rPersonal";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "User id=sa; Password=123; Initial Catalog=lansweeperdb; Data Source=TEST0\\SQLEXPRESS";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        dt.Load(cmd.ExecuteReader());

        //dt = 

        GridViewPersonal.DataSource = dt;
        GridViewPersonal.DataBind();
        con.Close();
        
    }

    protected void GridViewPersonal_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void tbCompany_TextChanged(object sender, EventArgs e)
    {

    }

    protected void BindData()
    {

    }

    protected void GridViewPersonal_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int i = 1; 
    }
}
