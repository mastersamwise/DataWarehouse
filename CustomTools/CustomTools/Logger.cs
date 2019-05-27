using System;
using System.IO;

namespace CustomTools
{
    /// <summary>
    /// Custom Logger class
    /// </summary>
    public static class Logger
    {
        public static string filepath = "../../resources/logs/log.txt";
        public static bool appendToExistingFile = true;

        public static void Info(string comment)
        {
            using (StreamWriter file = new StreamWriter(filepath, appendToExistingFile))
            {
                string timestamp = GetCurrentTime();

                file.WriteLine(timestamp + " ---- [INFO] " + comment);
            }
        }

        public static void Error(string comment)
        {
            using (StreamWriter file = new StreamWriter(filepath, appendToExistingFile))
            {
                string timestamp = GetCurrentTime();

                file.WriteLine(timestamp + " ---- [ERROR] " + comment);
            }
        }

        private static string GetCurrentTime()
        {
            DateTime now = DateTime.Now;
            string yearStr = now.Year.ToString();
            int month = now.Month;
            int day = now.Day;
            int hours = now.Hour;
            int minutes = now.Minute;
            int seconds = now.Second;

            string monthStr = month > 9 ? month.ToString() : "0" + month;
            string dayStr = day > 9 ? day.ToString() : "0" + day;
            string hourStr = hours > 9 ? hours.ToString() : "0" + hours;
            string minuteStr = minutes > 9 ? minutes.ToString() : "0" + minutes;
            string secondStr = seconds > 9 ? seconds.ToString() : "0" + seconds;

            return yearStr + "-" + monthStr + "-" + dayStr + ":" + hourStr + ":" + minuteStr + ":" + secondStr;
        }
    }
}
