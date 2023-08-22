<%@ Page Title="Admin" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="RealAdmin.aspx.cs" Inherits="AmitmaizusFPV.WebPages.RealAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/Admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="none">
   <%if ((bool)Session["Admin"])
       { %> <h1>User Table</h1><%} %>
    <table>
        <%= st %>
    </table>
    <h3><%= msg %></h3>
        </div>
    <script>
        if ("<%= msg %>" === "you are not belong here") {
            setTimeout(function () {
                window.location.href = "FPVhouse.aspx";
            }, 3000); // 3 seconds delay
        }
    </script>
</asp:Content>
