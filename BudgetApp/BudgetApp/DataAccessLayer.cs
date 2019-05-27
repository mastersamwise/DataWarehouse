using System;
using System.IO;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Newtonsoft.Json;

// https://stackoverflow.com/questions/16921652/how-to-write-a-json-file-in-c

namespace BudgetApp.Classes
{
    public static class DataAccessLayer
    {
        static string filename = "../../resources/data/events.txt";

        public static int SaveEntry(Entry dataEntry)
        {
            try
            {
                string json = JsonConvert.SerializeObject(dataEntry);

                using (StreamWriter file = File.CreateText(filename))
                {
                    JsonSerializer serializer = new JsonSerializer();
                    serializer.Serialize(file, json);
                }
            }
            catch(Exception ex)
            {
                
            }
            return 0;
        }

        public static List<Entry> GetEntries()
        {
            List<Entry> entries = new List<Entry>();
            string json = "";

            try
            {
                entries = JsonConvert.DeserializeObject<List<Entry>>(json);
            }
            catch (Exception ex)
            {

            }
            return entries;
        }
            
    }
}
