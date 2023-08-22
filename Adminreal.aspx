<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Adminreal.aspx.cs" Inherits="AmitmaizusFPV.WebPages.Adminreal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טבלת משתמשים</h1>
    <h2><%=sqlSelect %></h2>
    <table style="border: 1 px solid black; margin:0px auto">
        <%=stt %>
    </table>
    <h3><%=msgg %></h3>
</asp:Content>
