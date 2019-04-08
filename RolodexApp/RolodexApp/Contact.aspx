<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4">
        <h2><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
          One Microsoft Way<br />
          Redmond, WA 98052-6399<br />
          <abbr title="Phone">P:</abbr>
          425.555.0100
        </address>
        <address>
          <strong>Support:</strong>
          <a href="mailto:Support@example.com">Support@example.com</a>
          <br />
          <strong>Marketing:</strong>
          <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
      </div>
      <div class="col-md-4"></div>
    </div>
  </div>
</asp:Content>
