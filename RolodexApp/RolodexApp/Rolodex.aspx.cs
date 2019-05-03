using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rolodex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            var db = new DatabaseEntities();
            var contacts = db.RolodexContacts.ToList();
            rolodex.DataSource = contacts;
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
            string pictureDir = null;
            if (FileUpload.HasFile)
            {
                var filename = Guid.NewGuid() + Path.GetExtension(FileUpload.FileName);
                pictureDir = "static/images/Profile_Pictures/" + filename;
                FileUpload.SaveAs(Server.MapPath(pictureDir));
            }

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
                Zip = inputZip.Value,
                PictureUrl = pictureDir
            };

            var db = new DatabaseEntities();
            db.RolodexContacts.Add(newContact);
            db.SaveChanges();

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
            // get contact from db
            var button = sender as Button;
            var contactId = Convert.ToInt32(button.CommandArgument);
            var db = new DatabaseEntities();
            var contact = db.RolodexContacts.FirstOrDefault(c => c.Id == contactId);

            // delete picture first
            var pictureUrl = contact.PictureUrl;
            if (pictureUrl != null && File.Exists(Server.MapPath(pictureUrl)))
                File.Delete(Server.MapPath(pictureUrl));

            // then delete contact from db
            db.RolodexContacts.Remove(contact);
            db.SaveChanges();

            // reload page so form can be submitted again
            Page.Response.Redirect(Page.Request.Url.ToString(), false);
        }
        catch (Exception ex)
        {
            ErrorHandler.LogError(ex);
        }
    }

    protected void NewApptJson_ValueChanged(object sender, EventArgs e)
    {
        try
        {
            if (newApptJson == null) return;

            var data = JsonConvert.DeserializeObject<Dictionary<string, dynamic>>(newApptJson.Value);

            var newAppointment = new Appointment
            {
                ContactId = int.Parse(data["ContactId"]),
                TypeId = int.Parse(data["TypeId"]),
                ApptTime = DateTime.Parse(data["ApptTime"])
            };
            var db = new DatabaseEntities();
            db.Appointments.Add(newAppointment);
            db.SaveChanges();

            newApptJson.Value = null;

            // reload page to show new appointment
            Page.Response.Redirect(Page.Request.Url.ToString(), false);
        }
        catch (Exception ex)
        {
            ErrorHandler.LogError(ex);
            newApptJson.Value = null;
        }

    }
}
