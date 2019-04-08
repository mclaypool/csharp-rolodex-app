using System;
using System.IO;

/// <summary>
/// Summary description for ErrorHandler
/// </summary>
public static class ErrorHandler
{
    public static void LogError(Exception e)
    {
        string path = "logs\\";
        string fileName = "Errors_" + DateTime.Now.ToString("yyyyMMddHH") + ".txt";
        string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, path, fileName);
        System.Diagnostics.Debug.WriteLine(filePath);

        using (var stream = new StreamWriter(filePath, true))
        {
            stream.WriteLine(e);
            stream.WriteLine(e.StackTrace);
            stream.WriteLine();
        }
    }
}