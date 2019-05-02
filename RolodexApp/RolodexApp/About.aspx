<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">
        <h2><%: Title %></h2>
        <hr />
        <h3>CSCI 2060 - Rolodex App</h3>
        <p>This is an app to store your personal contancts and meetings you have with them.</p>
      </div>
      <div class="col-md-3"></div>
    </div>
  </div>
</asp:Content>
