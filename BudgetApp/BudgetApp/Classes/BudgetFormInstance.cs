using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CustomTools;

namespace BudgetApp.Classes
{
    public class BudgetFormInstance
    {
        public string user { get; set; }
        public DataTable dt { get; set; }
        public List<Entry> budgetEntriesOnStart { get; set; }
        public List<Entry> budgetEntriesBackup1 { get; set; }
        public List<Entry> budgetEntriesBackup2 { get; set; }
        public bool isBackup1Latest { get; set; }
        public List<Entry> budgetEntries { get; set; }

        // Constructor
        public BudgetFormInstance(string user)
        {
            this.user = user;
            this.isBackup1Latest = true;
        }

        // populate the table with the entries in the data source
        public void populateEntries(List<Entry> entries)
        {
            this.dt.Clear();
            int i = 1;
            foreach (Entry entry in entries)
            {
                this.dt.Rows.Add(i, entry.date, entry.category, "", entry.description, entry.amount);
                i++;
            }
        }
    }
}
