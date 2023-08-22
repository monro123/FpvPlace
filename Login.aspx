<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AmitmaizusFPV.WebPages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
                <link rel="stylesheet" href="../Style/Login.css">
    <style>      
   
        
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <section class="content">
    
       
        <div class="content-form">
            <h1>Login</h1>
            <p><%= msg %></p>
            <p>Got a question, suggestion, or just want to chat? <br />Don't hesitate to reach out!</p>
            <form action="login.aspx" method="post">
                
                <div class="short">
                    <input class="first" type="password" id="password" name="password" placeholder="Password" required="required" >
                    <input class="second" placeholder="Phone number" type="tel" id="phone-number" name="phone-number" value="<%= Session["num"] ?? "" %>" required="required">
                </div>
            
                <input type="submit" name="submit" value="Submit" class="btn" />
            </form>
            <div>
                <p>Not signed in already? - <a href="contact.aspx" id="link">Register here</a></p>
            </div>
        </div>
      
        <div class="me"><img src="../Photos/mebest.jpg" /></div>
       

    </section>
    
</asp:Content>