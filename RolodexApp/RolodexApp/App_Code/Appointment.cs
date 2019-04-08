using System;

/// <summary>
/// Summary description for Appointment
/// </summary>
public class Appointment
{
    public string Type { get; set; }
    public DateTime Time { get; set; }

    public Appointment() { Type = "Not Set"; }
}