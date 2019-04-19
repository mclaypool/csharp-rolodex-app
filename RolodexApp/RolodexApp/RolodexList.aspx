<%@ Page Title="RolodexList" Language="C#" MasterPageFile="~/Site.Master"
  AutoEventWireup="true" CodeFile="RolodexList.aspx.cs" Inherits="RolodexList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-1"></div>
      <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333"
        GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
          <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
          <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
          <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
          <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
          <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
          <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
          <asp:BoundField DataField="StateAbbr" HeaderText="StateAbbr" SortExpression="StateAbbr" />
          <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [FirstName], [LastName], [JobTitle], [Company], [Phone],
          [Email], [Street], [City], [StateAbbr], [Zip] FROM [RolodexContacts]">
      </asp:SqlDataSource>
    </div>
  </div>
</asp:Content>
