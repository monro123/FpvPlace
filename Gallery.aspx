<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AmitmaizusFPV.WebPages.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/Gallery.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="gallery">
    
    <div class="gallery-photos1"> 
    <img src="../Photos/Dead%20Sea,%20Israel.jpg" />
     </div>
      <div class="gallery-photos1"> 
      <img src="../Photos/St_%20George's%20Monastery,%20Israel.jpg" />
     </div>
    <div class="gallery-photos1"> 
        <img src="../Photos/13.jpg" />
     </div>
      <div class="gallery-photos1"> 
      <img src="../Photos/Tel%20Aviv,%20Israel.jpg" />
    </div>
     
     <div class="gallery-photos2">
     <img src="../Photos/The%20ancient%20city%20of%20Hippos-Sussita,%20Israel.jpg" />
       </div>
    <div id="gallery-video">
        <iframe width="100%" height="100%" src="../Photos/videos/Beast%20Rehovot.mp4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" ></iframe>
        </div>
    <div class="gallery-photos2">
        <img src="../Photos/The%20Bahai%20Gardens%20Haifa,%20Israel.jpg" />
        </div>
        <div class="gallery-photos">
           <img src="../Photos/Ashdod,%20Israel.jpg" />
          </div>
            <div class="gallery-photos">
                <img src="../Photos/shutterstock_1719864133.jpg" />
     
            </div>

    <div class="gallery-photos">
        <img src="../Photos/12.jpg" />
        </div>

            <div class="gallery-photos">
                <img src="../Photos/shutterstock_169.jpg" />
        </div>
    
    </div>

</asp:Content>
