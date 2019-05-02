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
              <li>Presistent storage of application with HttpContext.Current.Application</li>
              <li>Styling with Bootstrap 4</li>
              <li>Error handling and logging</li>
              <li>Enter form for adding a contact</li>
              <li>Basic validation new contact form</li>
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
              <li>Added a delete button for each individual in rolodex</li>
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
              <li>Added a changelog</li>
              <li>Setup github repo for remainder of project: 
                <a href="https://github.com/mclaypool/csharp-rolodex-app">Repo</a>
              </li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>prjDataBinding</h3>
            <ul>
              <li>Added SQL Server DB file to project</li>
              <li>Set up connection to db file for project</li>
              <li>Added RolodexContacts, Appointments and ApptTypes tables to db</li>
              <li>Added ability to connect to db through Entity Framework</li>
              <li>Converted rolodex code to store data in the db vs the session</li>
              <li>gitignore log files</li>
              <li>Changed the validation for phone numbers to match the db type</li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>prjDataControlsStreams</h3>
            <ul>
              <li>Implimented a new page that uses a gridview to list the rolodex</li>
              <li>Added the ability to add a profile image when adding a new contact</li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>prjSecurity</h3>
            <ul>
              <li>Fixed HTML and CSS of prebuilt ASP.NET account mgmt page</li>
              <li>Fixed HTML and CSS of logged-in navbar</li>
              <li>Fixed HTML and CSS of log in form</li>
              <li>Added 'User' role to users when they register</li>
              <li>Placed Rolodex and RolodexList pages behind authentication</li>
              <li>Using the webconfig, made the 'User' role required to access Rolodex and RolodexList</li>
              <li>Only show the Rolodex and RolodexList in the navbar to the 'User' role</li>
              <li>Made a login that doesn't have the 'User' role for demoing</li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>prjFinal</h3>
            <ul>
              <li>Add info to the About page</li>
              <li>Add info to the Contact page</li>
              <li>Add code to display meetings using data from the DB</li>
            </ul>
          </li>
          <li class="list-group-item">
            <h3>TODOs</h3>
            <ul>
              <li>Fix/finish form to add meetings for each contact</li>
              <li>Add more validation or send dbValidations to frontend</li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="col-md-2"></div>
    </div>
  </div>
</asp:Content>
