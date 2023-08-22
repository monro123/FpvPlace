<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="AmitmaizusFPV.WebPages.Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% if (!string.IsNullOrEmpty(msg))
        { %>
    <div style="display: flex; justify-content: center; align-items: center; height: 400px; ">
        <h2 style="color: white;"><%= msg %></h2>
    </div>

    <% } %>
    <script>
        if ("<%= msg %>" === "you are not belong here") {
            setTimeout(function () {
                window.location.href = "FPVhouse.aspx";
            }, 3000); // 3 seconds delay
        }
    </script>
</asp:Content>
