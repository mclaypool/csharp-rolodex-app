using System;
using System.Linq;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rolodex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            var dbContext = new DatabaseEntities();
            rolodex.DataSource = dbContext.RolodexContacts.ToList();
            rolodex.DataBind();
        }
        catch (Exception ex)
        {
            ErrorHandler.LogError(ex);
        }
    }

    protected void OnClick_AddContact(object sender, EventArgs e)
    {
        try
        {
            var newContact = new RolodexContact
            {
                FirstName = inputFirstName.Value,
                LastName = inputLastName.Value,
                JobTitle = inputJobTitle.Value,
                Company = inputCompany.Value,
                Phone = inputPhone.Value,
                Email = inputEmail.Value,
                Street = inputStreet.Value,
                City = inputCity.Value,
                StateAbbr = inputState.Value,
                Zip = inputZip.Value
            };

            var dbContext = new DatabaseEntities();
            dbContext.RolodexContacts.Add(newContact);
            dbContext.SaveChanges();

            // reload page so form can be submitted again
            Page.Response.Redirect(Page.Request.Url.ToString(), false);
        }
        catch (Exception ex)
        {
            ErrorHandler.LogError(ex);
        }
    }

    protected void OnClick_RemoveContact(object sender, EventArgs e)
    {
        try
        {
            var button = sender as Button;
            var contactId = Convert.ToInt32(button.CommandArgument);

            var dbContext = new DatabaseEntities();
            var contact = new RolodexContact() { Id = contactId };
            dbContext.RolodexContacts.Attach(contact);
            dbContext.RolodexContacts.Remove(contact);
            dbContext.SaveChanges();

            // reload page so form can be submitted again
            Page.Response.Redirect(Page.Request.Url.ToString(), false);
        }
        catch (Exception ex)
        {
            ErrorHandler.LogError(ex);
        }
    }

    protected void OnClick_AddAppointment(object sender, EventArgs e)
    {
        try
        {
            var button = sender as Button;
            var contactId = button.CommandArgument.ToString();

            string inputDateTime = $"inputDateTime_{contactId}";
            string inputType = $"inputType_{contactId}";

            string timeString = Request.Form[inputDateTime].ToString();
            if (timeString == null) return;
            DateTime time = DateTime.Parse(timeString);
            string type = Request.Form[inputType].ToString();
        }
        catch (Exception ex)
        {
            ErrorHandler.LogError(ex);
        }

    }
}
