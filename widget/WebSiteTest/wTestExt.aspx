﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wTestExt.aspx.cs" Inherits="wTestExt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridViewPersonal" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="True" Caption="Штатное расписание" OnSelectedIndexChanged="GridViewPersonal_SelectedIndexChanged" Width="342px" OnRowEditing="GridViewPersonal_RowEditing">
            <EditRowStyle BackColor="#0066FF" />
            <EmptyDataTemplate>
                <asp:TextBox ID="tbId" runat="server" EnableTheming="False"></asp:TextBox>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
