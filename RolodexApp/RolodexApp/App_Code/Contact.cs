using System.Collections.Generic;

/// <summary>
/// Summary description for Contact
/// </summary>
public class RolodexContact
{
    public string Id { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string JobTitle { get; set; }
    public string Company { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
    public string Street { get; set; }
    public string City { get; set; }
    public string State { get; set; }
    public string Zip { get; set; }
    public List<Appointment> Appointments { get; set; }

    public RolodexContact() { }

    public int getApptCount()
    {
        return Appointments.Count;
    }
}