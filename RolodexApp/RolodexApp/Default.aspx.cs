﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RolodexApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["rolodexData"] == null)
                {
                    Session["rolodexData"] = new Dictionary<string, Contact>();
                }
                var data = (Dictionary<string, Contact>)Session["rolodexData"];
                rolodex.DataSource = data.Values;
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
                var contactId = Guid.NewGuid().ToString();
                var rolodexData = (Dictionary<string, Contact>)Session["rolodexData"];
                var newContact = new Contact
                {
                    Id = contactId,
                    FirstName = inputFirstName.Value,
                    LastName = inputLastName.Value,
                    JobTitle = inputJobTitle.Value,
                    Company = inputCompany.Value,
                    Phone = inputPhone.Value,
                    Email = inputEmail.Value,
                    Street = inputStreet.Value,
                    City = inputCity.Value,
                    State = inputState.Value,
                    Zip = inputZip.Value
                };
                rolodexData[contactId] = newContact;

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
                var contactId = button.CommandArgument.ToString();
                var rolodexData = (Dictionary<string, Contact>)Session["rolodexData"];
                rolodexData.Remove(contactId);
                Session["rolodexData"] = rolodexData;

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
}