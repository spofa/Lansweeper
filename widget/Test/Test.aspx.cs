using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LS;

public partial class WidgetsCustom_Test : BaseControl
{
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        BindData(15);
    }

    protected void GridViewPersonal_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void tbCompany_TextChanged(object sender, EventArgs e)
    {

    }

    protected void BindData(int amount)
    {
        var df = DB.ExecuteDataset("select top " + amount + " * from htblhistorytypes");

        dt = df.Clone();
        dt = df;


        GridViewPersonal.DataSource = dt;
        GridViewPersonal.DataBind();
    }

    protected void GridViewPersonal_RowEditing(object sender, GridViewEditEventArgs e)
    {
        BindData(2);
    }

    protected void GridViewPersonal_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        BindData(10);
    }
}