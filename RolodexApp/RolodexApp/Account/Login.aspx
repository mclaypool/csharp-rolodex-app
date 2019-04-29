<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-9">
        <h2><%: Title %>.</h2>

        <div class="row">
          <div class="col-md-7">
            <section id="loginForm">
              <div class="form-horizontal">
                <h4>Use a local account to log in.</h4>
                <hr />
                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                  <p class="text-danger">
                    <asp:Literal runat="server" ID="FailureText" />
                  </p>
                </asp:PlaceHolder>
                <div class="form-group col-10 mb-0">
                  <asp:Label runat="server" AssociatedControlID="UserName">Username</asp:Label>
                  <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                  <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                      CssClass="text-danger" ErrorMessage="The user name field is required." />
                </div>
                <div class="form-group col-10 mb-0">
                  <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                  <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
                <div class="form-group col-10 mb-2">
                  <div class="checkbox">
                    <asp:CheckBox runat="server" ID="RememberMe" />
                    <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                  </div>
                </div>
                <div class="form-group col-10">
                  <asp:Button runat="server" OnClick="LogIn" Text="Log in" class="btn btn-primary" />
                </div>
              </div>
              <p>
                <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
                if you don't have a local account.
              </p>
            </section>
          </div>
          <div class="col-md-5">
            <section id="socialLoginForm">
              <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
          </div>
        </div>
      </div>
      <div class="col-md-1"></div>
    </div>
  </div>
</asp:Content>

