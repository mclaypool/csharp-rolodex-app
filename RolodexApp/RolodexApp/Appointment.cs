using System;

namespace RolodexApp
{
    public class Appointment
    {
        public string Type { get; set; }
        public DateTime Time { get; set; }

        public Appointment() { Type = "Not Set";  }
    }
}