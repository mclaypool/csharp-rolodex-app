using System.Collections.Generic;

namespace RolodexApp
{
    public class Contact
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

        public Contact() { }

        public int getApptCount()
        {
            return Appointments.Count;
        }
    }
}