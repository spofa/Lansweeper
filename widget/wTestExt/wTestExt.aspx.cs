using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LS;
using System.Diagnostics;

public partial class wTestExt : BaseControl
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        var df = DB.ExecuteDataset("select id as Id, Imya, Familia from rPersonal");

        if (!IsPostBack)
        {

            dt = df.Clone();
            dt = df;



            GridViewPersonal.DataSource = dt;
            GridViewPersonal.DataBind();

        }
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
