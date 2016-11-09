<%@ Page Language="C#" AutoEventWireup="true" Inherits="LS.BaseControl" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="LS.Enums" %>
<%@ Import Namespace="LS" %>
<% Response.CacheControl = "no-cache";%>
<% Response.AddHeader("Pragma", "no-cache"); %>
<% Response.Expires = -1; %>
<%  LS.User.Current().CheckUserWebsiteAccess(); %>




<% var dsAssets = DB.ExecuteDataset("select p.Company, p.Departament, p.Upravlenie, p.Otdel,p.Dolgnost,p.Familia,	p.Imya,	p.Otchestvo from dbo.rPersonal as p");
   if (dsAssets.Rows.Count != 0)
    { %>   
<table width="100%" border="0" cellpadding="0" cellspacing="0">
 
    <% foreach (DataRow myrow in dsAssets.Rows)
    { %>
        <tr>
            <td width="10" align="left" valign="top">
               <% 
                   myrow["Imya"].ToString();
                   %> 
            </td>
            <td align="left" ></td>
            <td align="right" valign="top">
            </td>
        </tr>
    <% } %>          
</table>
   

<% if (LS.User.Current().IsInRole(Permission.EditConfiguration)){ %>
    <div style="float:right"><a href="<%=ResolveUrl("~/")%>configuration/AssetGroups/" class="sml">config</a></div>
<% } %>
</div>
<% } %>
 
