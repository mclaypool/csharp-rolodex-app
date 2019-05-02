<%@ Page Title="Rolodex" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Rolodex.aspx.cs" Inherits="Rolodex" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-6"><!-- input form -->
        <div class="card">
          <div class="card-header">New Contact</div>
          <div class="card-body">
            <div method="post" id="newContact" onsubmit="window.location.reload()" runat="server">
              <!-- name -->
              <div class="form-group mb-0">
                <label for="inputFirstName">First name</label>
                <input
                  type="text"
                  class="form-control"
                  id="inputFirstName"
                  placeholder="First name"
                  runat="server" />
                <asp:RequiredFieldValidator
                  id="validateFirstName"
                  runat="server"
                  class="text-danger small"
                  ErrorMessage="First name is required"
                  ControlToValidate="inputFirstName" />
              </div>
              <div class="form-group  mb-0">
                <label for="inputLastName">Last name</label>
                <input
                  type="text"
                  class="form-control"
                  id="inputLastName"
                  placeholder="Last name"
                  runat="server" />
                <asp:RequiredFieldValidator
                  id="validateLastName"
                  runat="server"
                  class="text-danger small"
                  ErrorMessage="Last name is required"
                  ControlToValidate="inputLastName" />
              </div>
              <!-- contact -->
              <div class="form-group mb-0">
                <label for="inputPhone">Phone</label>
                <input
                  type="text"
                  class="form-control"
                  id="inputPhone"
                  placeholder="Phone"
                  runat="server" />
                <asp:RequiredFieldValidator
                  id="validatePhone"
                  runat="server"
                  class="text-danger small"
                  ErrorMessage="A phone number is required"
                  ControlToValidate="inputPhone" />
                <asp:RegularExpressionValidator
                  id="validatePhoneRegex"
                  runat="server"
                  class="text-danger small"
                  ValidationExpression="^\d{10}$"
                  ErrorMessage="Invalid phone format"
                  ControlToValidate="inputPhone" />             
              </div>
              <div class="form-group mb-0">
                <label for="inputEmail">Email address</label>
                <input
                  type="email"
                  class="form-control"
                  id="inputEmail"
                  placeholder="Enter email"
                  runat="server" />
                <asp:RequiredFieldValidator
                  id="validateEmailRequired"
                  class="text-danger small"
                  runat="server"
                  ErrorMessage="An email is required"
                  ControlToValidate="inputEmail" />
                <asp:RegularExpressionValidator
                  id="validateEmailRegex"
                  class="text-danger small"
                  runat="server"
                  ValidationExpression="^\w+[\w-\.]*\@\w+((-\w+)|(\w*))\.[a-z]{2,3}$"
                  ErrorMessage="Invalid email format"
                  ControlToValidate="inputEmail" />
              </div>
              <!-- job -->
              <div class="form-row">
                <div class="col">
                  <div class="form-group">
                    <label for="inputJobTitle">Job Title</label>
                    <input
                      type="text"
                      class="form-control"
                      id="inputJobTitle"
                      placeholder="Job Title"
                      runat="server" />
                  </div>
                </div>
                <div class="col">
                  <div class="form-group">
                    <label for="inputCompany">Company</label>
                    <input
                      type="text"
                      class="form-control"
                      id="inputCompany"
                      placeholder="Company"
                      runat="server" />
                  </div>
                </div>
              </div>
              <!-- address -->
              <div class="form-group">
                <label for="inputStreet">Street</label>
                <input
                  type="text"
                  class="form-control"
                  id="inputStreet"
                  placeholder="Street"
                  runat="server" />
              </div>
              <div class="form-row">
                <div class="col-6">
                  <div class="form-group">
                    <label for="inputCity">City</label>
                    <input
                      type="text"
                      class="form-control"
                      id="inputCity"
                      placeholder="City"
                      runat="server" />
                  </div>
                </div>
                <div class="col">
                  <div class="form-group">
                    <label for="inputState">State</label>
                    <input
                      type="text"
                      class="form-control"
                      id="inputState"
                      placeholder="State"
                      runat="server" />
                  </div>
                </div>
                <div class="col">
                  <div class="form-group">
                    <label for="inputZip">Zip</label>
                    <input
                      type="text"
                      class="form-control"
                      id="inputZip"
                      placeholder="Zip"
                      runat="server" />
                  </div>
                </div>
              </div>
              <!-- picture -->
              <div class="form-group">
                  <label for="FileUpload">Picture:</label>
                  <asp:FileUpload ID="FileUpload" runat="server" />
              </div>
              <!-- button -->
              <button
                type="submit"
                class="btn btn-primary"
                onserverclick="OnClick_AddContact"
                runat="server"
                CausesValidation="true"
              >
                Add Contact
              </button>
              <asp:ValidationSummary
                id="ValidationSummary"
                class="text-danger mt-3"
                runat="server" 
                DisplayMode ="BulletList"
                ShowSummary ="true"
                HeaderText="Errors:" />
            </div>
          </div>
        </div>
      </div><!-- input form -->
      <div class="col-md-6"><!-- rolodex cards -->
        <asp:Repeater id="rolodex" runat="server">
          <ItemTemplate>
            <div class="card mb-3" style="max-width: 960px;"><!-- one card -->
              <div class="row no-gutters">
                <div class="col-md-4">
                  <img
                    src="<%# (Eval("PictureUrl") == null) ? "static/images/Profile_Pictures/default_image.png" : Eval("PictureUrl") %>"
                    class="card-img h-100 w-100 rounded-0"
                    alt="profile picture"
                    style="max-height: 15rem;">
                </div>
                <div class="col-md-8">
                  <asp:Button
                    type="button"
                    class="btn btn-outline-secondary float-right border-0"
                    CommandArgument='<%# Eval("Id") %>'
                    text="X"
                    OnClick="OnClick_RemoveContact" 
                    runat="server"
                    CausesValidation="false"
                  />
                  <div class="card-body pb-0">
                    <h5 class="card-title mb-0 pb-0">
                      <%# Eval("FirstName") %> <%# Eval("LastName") %>
                    </h5>
                    <p class="card-text mt-0 pt-0">
                      <small class="text-muted">
                        <%# Eval("JobTitle") %> @ <%# Eval("Company") %>
                      </small>
                    </p>
                    <p class="card-text mb-0 pb-0">
                      <span>Phone: </span>
                      <span class="font-weight-bold"><%# Eval("Phone") %></span>
                    </p>
                    <p class="card-text">
                      <span>Email: </span>
                      <span class="font-weight-bold"><%# Eval("Email") %></span>
                    </p>
                    <div class="card-text form-inline">
                      <span class="align-top" style="height: 4rem;">Address:</span>
                      <ul class="list-unstyled pl-3">
                        <li class="font-weight-bold"><%# Eval("Street") %></li>
                        <li class="font-weight-bold">
                          <%# Eval("City") %>, <%# Eval("StateAbbr") %> <%# Eval("Zip") %>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div><!-- card text -->
                
              </div><!-- card details row -->
              <ul class="list-group list-group-flush">
                <!-- list of meetings -->
                <asp:Repeater DataSource='<%# Eval("Appointments") %>' runat="server" >
                  <ItemTemplate>
                    <li class="list-group-item"><%# Eval("ApptType.Name") %>: <%# Eval("ApptTime") %></li>
                  </ItemTemplate>
                </asp:Repeater>
                <!-- add meeting form -->
                <li class="list-group-item pb-0">
                  <div class="form-row">
                    <div class="col-4">
                      <div class="input-group">
                        <select class="custom-select" id="selectType">
                          <option value="1" selected>Meeting</option>
                          <option value="2">Appointment</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-6">
                      <div class="form-group">
                        <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                          <asp:TextBox
                            id="inputDateTime"
                            type="text"
                            class="form-control datetimepicker-input"
                            data-target="#datetimepicker1"
                            runat="server"
                          />
                          <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col">
                      <asp:Button
                        id="addMeetingButton"
                        type="button"
                        class="btn btn-primary"
                        text="Add"
                        OnClick="OnClick_AddAppointment" 
                        runat="server"
                        CausesValidation="false"
                      />
                      </button>
                    </div>
                  </div>
                </li>
              </ul>
            </div><!-- one card -->
          </ItemTemplate>
        </asp:Repeater>
      </div><!-- rolodex cards -->
      <script type="text/javascript">
        $(function () {
          $('#datetimepicker1').datetimepicker();
        });
      </script>
    </div>
  </div>
</asp:Content>
