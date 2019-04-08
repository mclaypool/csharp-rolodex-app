<%@ Page Title="Rolodex" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="RolodexApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container mt-3">
    <div class="row">
      <div class="col-md-2"></div>
      <div class="col-md-8">
        <ul class="list-group list-group-flush">
          <li class="list-group-item">
            <h3>prjWebForms</h3>
            <ul>
              <li>Initial project setup of an "Empty Web Site" project</li>
              <li>Presistant storage of application with HttpContext.Current.Application</li>
              <li>Styling with Bootstrap 4</li>
              <li>Error handling and logging</li>
              <li>Enter form for adding a contact</li>
              <li>basic validation new contact form</li>
              <li>List of rolodex contacts</li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>prjStateValidation</h3>
            <ul>
              <li>Switched to a "Web Application (.NET Framework)" project type</li>
              <li>Switched to using session data and cookies</li>
              <li>Switched to correct ASP.NET validation on new contact form</li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>prjControlsGraphics</h3>
            <ul>
              <li>Switched to a "Web Forms Site" project type</li>
              <li>Added a delete button for each individual in Rolodex</li>
              <li>Added a form for each contact to add a meeting or appointment (not working)</li>
              <li>Added ASP.NET HTML code to build rolodex list, previously it was a html string builder</li>
              <li>Added code to loop and show appointments for each contact card</li>
              <li>Added Contact class for building rolodex</li>
              <li>Added Appointment class for building rolodex</li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>prjStylesNavigation</h3>
            <ul>
              <li>Restarted project to get packaged pages (about, contact, login) working again</li>
              <li>Renamed Contact to RolodexContact due to naming issue in VS</li>
              <li>Switched style to use "Flatly" Bootswatch theme</li>
              <li>Fixed auto-generated bootstrap on login page</li>
              <li>Fixed auto-generated bootstrap on register page</li>
              <li>Added fixed header to masterfile</li>
              <li>Broke up code using masterfile</li>
              <li>Added left side navbar</li>
              <li>added a changelog</li>
              <li>Setup github repo for remainder of project: 
                <a href="https://github.com/mclaypool/csharp-rolodex-app">Repo</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="col-md-2"></div>
    </div>
  </div>
</asp:Content>
