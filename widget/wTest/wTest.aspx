<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wTest.aspx.cs" Inherits="wTest" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="LS.Enums" %>
<%@ Import Namespace="LS" %>

<% Response.CacheControl = "no-cache";%>
<% Response.AddHeader("Pragma", "no-cache"); %>
<% Response.Expires = -1; %>
<% LS.User.Current().CheckUserWebsiteAccess(); %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="txtTime" runat="server" Text="TimeNow"></asp:Label>
    </form>
</body>
</html>
