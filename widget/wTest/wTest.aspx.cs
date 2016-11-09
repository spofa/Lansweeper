using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;
using LS;

public partial class wTest : BaseControl //System.Web.UI.Page
{
    public DataTable charData = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        string error;
        txtTime.Text = DateTime.Now.ToLongTimeString();
    }

    /*private static void ShowWidget( ref XElement items)
    {
        var bc = (LS.BaseControl)(HttpContext.Current.Handler);
        if (bc.State != null) items = bc.State.Element("items");

        txtTime.Text = DateTime.Now.ToLongTimeString();
    }*/
}