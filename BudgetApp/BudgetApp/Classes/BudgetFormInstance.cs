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
            this.isBackup1Latest = !isBackup1Latest;
        }

        // restore the latest backup
        public void RestoreLastBackup()
        {
            this.budgetEntries.Clear();
            if (this.isBackup1Latest)
            {
                // if backup1 is the latest backup, restore backup1
                this.budgetEntries = this.budgetEntriesBackup1;
            }
            else
            {
                // if backup2 is the latest backup, restore backup2
                this.budgetEntries = this.budgetEntriesBackup2;
            }
            this.isBackup1Latest = !isBackup1Latest;
        }

        // restore the latest backup
        public void RestoreOlderBackup()
        {
            this.budgetEntries.Clear();
            if (this.isBackup1Latest)
            {
                // if backup1 is the older backup, restore backup1
                this.budgetEntries = this.budgetEntriesBackup1;
            }
            else
            {
                // if backup1 is the latest backup, restore backup2
                this.budgetEntries = this.budgetEntriesBackup2;
            }
            this.isBackup1Latest = !isBackup1Latest;
        }

        // restore the backup taken on start
        public void RestoreOnStartBackup()
        {
            this.budgetEntries.Clear();
            this.budgetEntries = this.budgetEntriesOnStart;
        }
        #endregion Backups

        #region CRUD
        // retrieve the entries from the data source
        public List<Entry> GetEntries()
        {
            Logger.Info("Retrieving entries...");
            List<Entry> entries = DataAccessLayer.GetEntries();

            Logger.Info(String.Format("{0} entries Retrieved.", entries.Count));

            return entries;
        }

        // save the entries to the data source
        public void SaveEntries()
        {
            Logger.Info("Saving entries...");
            Entry entry = new Entry();
            foreach (DataRow row in this.dt.Rows)
            {
                entry.entryID = Int32.Parse(row[Constants.ENTRY_ID].ToString());
                entry.date = (DateTime)row[Constants.DATE];
                entry.category = row[Constants.CATEGORY].ToString();
                entry.description = row[Constants.DESCRIPTION].ToString();
                entry.amount = Double.Parse(row[Constants.AMOUNT].ToString());

                DataAccessLayer.SaveEntry(entry);
            }
            Logger.Info("... entries saved.");
        }
        #endregion CRUD

        #region Creating table
        // create the Budget Data Table
        public DataTable CreateBudgetDataTable(string tableName)
        {
            // https://stackoverflow.com/questions/25856205/c-sharp-forms-datatable-datagridview
            // https://docs.microsoft.com/en-us/dotnet/api/system.data.datatable?view=netframework-4.8

            DataTable table = new DataTable(tableName);

            DataColumn idCol = new DataColumn();
            idCol.DataType = Type.GetType("System.Int32");
            idCol.ColumnName = Constants.ENTRY_ID;
            idCol.ReadOnly = true;
            idCol.Unique = true;
            idCol.AutoIncrement = true;
            table.Columns.Add(idCol);

            DataColumn dateCol = new DataColumn();
            dateCol.DataType = Type.GetType("System.DateTime");
            dateCol.ColumnName = Constants.DATE;
            dateCol.ReadOnly = false;
            dateCol.Unique = false;
            table.Columns.Add(dateCol);

            DataColumn categoryCol = new DataColumn();
            categoryCol.DataType = Type.GetType("System.String");
            categoryCol.ColumnName = Constants.CATEGORY;
            categoryCol.ReadOnly = false;
            categoryCol.Unique = false;
            table.Columns.Add(categoryCol);

            DataColumn confirmationNumberCol = new DataColumn();
            confirmationNumberCol.DataType = Type.GetType("System.String");
            confirmationNumberCol.ColumnName = Constants.CONFIRMATION_NUMBER;
            confirmationNumberCol.ReadOnly = false;
            confirmationNumberCol.Unique = false;
            table.Columns.Add(confirmationNumberCol);

            DataColumn descCol = new DataColumn();
            descCol.DataType = Type.GetType("System.String");
            descCol.ColumnName = Constants.DESCRIPTION;
            descCol.ReadOnly = false;
            descCol.Unique = false;
            table.Columns.Add(descCol);

            DataColumn amountCol = new DataColumn();
            amountCol.DataType = Type.GetType("System.Double");
            amountCol.ColumnName = Constants.AMOUNT;
            amountCol.ReadOnly = false;
            amountCol.Unique = false;
            table.Columns.Add(amountCol);

            table.Columns[Constants.ENTRY_ID].ColumnMapping = MappingType.Hidden;

            return table;
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
        #endregion Creating table
    }
}
