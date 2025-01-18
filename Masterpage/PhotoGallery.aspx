<%@ Page Title="Photo Gallery" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="PhotoGallery.aspx.cs" Inherits="Masterpage.PhotoGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Photo Gallery</h2>
    <div class="photo-gallery">
        <img src="images/photo1.jpg" alt="Photo 1" />
        <img src="images/photo2.jpg" alt="Photo 2" />
        <img src="images/photo3.jpg" alt="Photo 3" />
    </div>
</asp:Content>
