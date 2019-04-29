<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Account_Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-2"></div>
      <div class="col-md-8">
        <h2><%: Title %>.</h2>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
          <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>

        <section id="passwordForm">
          <asp:PlaceHolder runat="server" ID="changePasswordHolder" Visible="false">
            <p>You're logged in as <strong class="text-success"><%: User.Identity.GetUserName() %></strong>.</p>
            <hr />
            <div class="form-horizontal">
              <h4>Change Password Form</h4>
              <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
              <div class="form-group col-10 mt-3 mb-0">
                <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword">Current password</asp:Label>
                <asp:TextBox runat="server" ID="CurrentPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword"
                    CssClass="text-danger" ErrorMessage="The current password field is required."
                    ValidationGroup="ChangePassword" />
              </div>
              <div class="form-group col-md-10 mb-0">
                <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword">New password</asp:Label>
                <asp:TextBox runat="server" ID="NewPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                    CssClass="text-danger" ErrorMessage="The new password is required."
                    ValidationGroup="ChangePassword" />
              </div>
              <div class="form-group col-md-10">
                <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword">Confirm new password</asp:Label>
                <asp:TextBox runat="server" ID="ConfirmNewPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Confirm new password is required."
                    ValidationGroup="ChangePassword" />
                <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The new password and confirmation password do not match."
                    ValidationGroup="ChangePassword" />
              </div>
              <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                  <asp:Button
                    runat="server" Text="Change password" OnClick="ChangePassword_Click"
                    CssClass="btn btn-primary" ValidationGroup="ChangePassword"/>
                </div>
              </div>
            </div>
          </asp:PlaceHolder>
          
          <!-- for external accounts -->
          <asp:PlaceHolder runat="server" ID="setPassword" Visible="false">
            <p>
              You do not have a local password for this site. Add a local
              password so you can log in without an external login.
            </p>
              <div class="form-horizontal">
                <h4>Set Password Form</h4>
                <hr />
                <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="password" CssClass="control-label">Password</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="password" TextMode="Password"  CssClass="form-control"  />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                            CssClass="text-danger" ErrorMessage="The password field is required."
                            Display="Dynamic" ValidationGroup="SetPassword" />
                        <asp:ModelErrorMessage runat="server" ModelStateKey="NewPassword" AssociatedControlID="password"
                            CssClass="text-danger" SetFocusOnError="true" />
                    </div>
                </div>
                <div class="form-group">
                  <asp:Label runat="server" AssociatedControlID="confirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                  <div class="col-md-10">
                    <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password"  CssClass="form-control"  />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required."
                        ValidationGroup="SetPassword" />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match."
                        ValidationGroup="SetPassword" />
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" Text="Set Password" ValidationGroup="SetPassword" OnClick="SetPassword_Click" CssClass="btn btn-default" />
                  </div>
                </div>
            </div>
          </asp:PlaceHolder>
        </section>
      </div>
  </div><!-- row -->
</div><!-- container -->
</asp:Content>
