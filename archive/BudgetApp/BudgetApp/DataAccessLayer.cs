using System;
using System.IO;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CustomTools;

using Newtonsoft.Json;

// https://stackoverflow.com/questions/16921652/how-to-write-a-json-file-in-c
// https://www.c-sharpcorner.com/article/json-serialization-and-deserialization-in-c-sharp/

namespace BudgetApp.Classes
{
    public static class DataAccessLayer
    {
        static string filename = "../../resources/data/events.txt";
        static bool appendToExistingFile = true;

        public static int SaveEntry(Entry dataEntry)
        {
            try
            {
                string json = JsonConvert.SerializeObject(dataEntry);

                using (StreamWriter file = new StreamWriter(filename, appendToExistingFile))
                {
                    //JsonSerializer serializer = new JsonSerializer();
                    //serializer.Serialize(file, json);
                    file.WriteLine(json);
                    Logger.Info("Writing data to file...");
                }
            }
            catch(Exception ex)
            {
                Logger.Error(ex.ToString());
            }
            return 0;
        }

        public static List<Entry> GetEntries()
        {
            List<Entry> entries = new List<Entry>();
            Entry entry = new Entry();
            FileStream fileStream = new FileStream(filename, FileMode.Open, FileAccess.Read);
            string json = "";

            try
            {
                using (StreamReader streamReader = new StreamReader(fileStream))
                {
                    while (!streamReader.EndOfStream)
                    {
                        json = streamReader.ReadLine();
                        entry = JsonConvert.DeserializeObject<Entry>(json);

                        entries.Add(entry);
                    }
                    Logger.Info("Retrieving entries from file...");
                }
            }
            catch (Exception ex)
            {
                Logger.Error(ex.ToString());
            }
            return entries;
        }
            
    }
}
