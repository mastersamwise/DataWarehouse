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
        public List<Entry> selectedEntries { get; set; }

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
                this.dt.Rows.Add(i, entry.isSelected, entry.date, entry.category, "", entry.description, entry.amount);
                i++;
            }
        }

        #region Backups
        // Backup the table entries and set the flag to alternate which backup is replaced
        public void BackupEntries()
        {
            if (this.isBackup1Latest)
            {
                // if backup1 is the latest backup, replace backup2
                this.budgetEntriesBackup2 = this.budgetEntries;
            }
            else
            {
                // if backup2 is the latest backup, replace backup1
                this.budgetEntriesBackup1 = this.budgetEntries;
            }
            this.isBackup1Latest = !this.isBackup1Latest;
        }

        // restore the latest backup
        public void RestoreLastBackup()
        {

            this.budgetEntries.Clear();
            if (!this.isBackup1Latest)
            {
                // if backup1 is the latest backup, restore backup1
                this.budgetEntries = this.budgetEntriesBackup1;
                this.populateEntries(this.budgetEntriesBackup1);
            }
            else
            {
                // if backup2 is the latest backup, restore backup2
                this.budgetEntries = this.budgetEntriesBackup2;
                this.populateEntries(this.budgetEntriesBackup2);
            }
            this.isBackup1Latest = !this.isBackup1Latest;
        }

        // restore the latest backup
        public void RestoreOlderBackup()
        {
            this.budgetEntries.Clear();
            if (!this.isBackup1Latest)
            {
                // if backup1 is the older backup, restore backup1
                this.budgetEntries = this.budgetEntriesBackup1;
                this.populateEntries(this.budgetEntriesBackup1);
            }
            else
            {
                // if backup1 is the latest backup, restore backup2
                this.budgetEntries = this.budgetEntriesBackup2;
                this.populateEntries(this.budgetEntriesBackup2);
            }
            this.isBackup1Latest = !this.isBackup1Latest;
        }

        // restore the backup taken on start
        public void RestoreOnStartBackup()
        {
            this.budgetEntries.Clear();
            this.budgetEntries = this.budgetEntriesOnStart;
        }
        #endregion Backups
    }
}
