<%@ Page Title="FPV Home" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="FPVhouse.aspx.cs" Inherits="AmitmaizusFPV.WebPages.FPVhouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .text-box {
            width: 90%;
            color: #fff;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
}
        .text-box h1{
            font-size: 62px;
        }
        .text-box p{
           margin:10px 0 40px;/*10top o left right 40 botton*/
           font-size: 17px;
        }
        .btn{
            display:inline-block;
            text-decoration:none;
            color:white;
            border: 1px solid;
            padding: 12px 34px;
            position:relative;
            cursor:pointer;
        }
        .btn:hover{
            border: 1px solid #f24949;
            background: #f24949;
            transition: 1s;
         }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-box"> 
    <h2><%= msg%></h2>
        <h1>Your source for quick FPV info!</h1>
        <p>This site is my project to keep FPV info easily and more importantly quickly readable when needed.<br /> 
         wish you good luck while entering to the greatest hobby of all time!</p>
        
         <a href="FandQ.aspx" class="btn">Jump in to earn some knowledge</a>
   </div>

</asp:Content>
