using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using BudgetApp.Classes;
using CustomTools;

namespace BudgetApp
{
    public partial class BudgetForm : Form
    {
        string activeUser = "Nik";
        BudgetFormInstance activeInstance;

        public BudgetForm()
        {
            InitializeComponent();

            activeInstance = new BudgetFormInstance(activeUser);

            CreateTabs();
            activeInstance.budgetEntries = GetEntries();

            // save an "on-start backup" copy of the entries, incase user wants to revert
            activeInstance.budgetEntriesOnStart = activeInstance.budgetEntries;
            BackupEntries();

            // create the table and populate the data
            activeInstance.dt = CreateBudgetDataTable(Constants.BUDGET_TABLE_NAME);
            activeInstance.populateEntries(activeInstance.budgetEntries);

            // set the DataSource of the grid to be the DataTable in the activeInstance
            budgetGrid.DataSource = activeInstance.dt;

        }

        public void CreateTabs()
        {
            // https://docs.microsoft.com/en-us/dotnet/framework/winforms/controls/how-to-add-and-remove-tabs-with-the-windows-forms-tabcontrol
            TabPage summaryTab = new TabPage("Summary Page");
            tabControl1.TabPages.Add(summaryTab);
        }

        #region button clicks
        // save the table entries
        private void SaveTable_click(object sender, EventArgs e)
        {
            SaveEntries();
        }

        // backup the current entries in the table
        private void BackupEntries_click(object sender, EventArgs e)
        {
            BackupEntries();
        }

        // restore the latest backup
        private void RestoreLastBackup_click(object sender, EventArgs e)
        {
            RestoreLastBackup();
        }

        // restore the older of the two backups
        private void RestoreOlderBackup_click(object sender, EventArgs e)
        {
            RestoreOlderBackup();
        }
        #endregion button clicks

        #region Backups
        // Backup the table entries and set the flag to alternate which backup is replaced
        public void BackupEntries()
        {
            if (activeInstance.isBackup1Latest)
            {
                // if backup1 is the latest backup, replace backup2
                activeInstance.budgetEntriesBackup2 = activeInstance.budgetEntries;
            }
            else
            {
                // if backup2 is the latest backup, replace backup1
                activeInstance.budgetEntriesBackup1 = activeInstance.budgetEntries;
            }
            activeInstance.isBackup1Latest = !activeInstance.isBackup1Latest;
        }

        // restore the latest backup
        public void RestoreLastBackup()
        {

            activeInstance.budgetEntries.Clear();
            if (activeInstance.isBackup1Latest)
            {
                // if backup1 is the latest backup, restore backup1
                activeInstance.budgetEntries = activeInstance.budgetEntriesBackup1;
                activeInstance.populateEntries(activeInstance.budgetEntriesBackup1);
            }
            else
            {
                // if backup2 is the latest backup, restore backup2
                activeInstance.budgetEntries = activeInstance.budgetEntriesBackup2;
                activeInstance.populateEntries(activeInstance.budgetEntriesBackup2);
            }
            activeInstance.isBackup1Latest = !activeInstance.isBackup1Latest;
        }

        // restore the latest backup
        public void RestoreOlderBackup()
        {
            activeInstance.budgetEntries.Clear();
            if (!activeInstance.isBackup1Latest)
            {
                // if backup1 is the older backup, restore backup1
                activeInstance.budgetEntries = activeInstance.budgetEntriesBackup1;
                activeInstance.populateEntries(activeInstance.budgetEntriesBackup1);
            }
            else
            {
                // if backup1 is the latest backup, restore backup2
                activeInstance.budgetEntries = activeInstance.budgetEntriesBackup2;
                activeInstance.populateEntries(activeInstance.budgetEntriesBackup2);
            }
            activeInstance.isBackup1Latest = !activeInstance.isBackup1Latest;
        }

        // restore the backup taken on start
        public void RestoreOnStartBackup()
        {
            activeInstance.budgetEntries.Clear();
            activeInstance.budgetEntries = activeInstance.budgetEntriesOnStart;
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

            foreach (DataRow row in activeInstance.dt.Rows)
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

        // delete an entry from the data source
        public void DeleteEntries(List<int> rowIDsToDelete)
        {
            Logger.Info("Deleting entries...");
            Entry entry = new Entry();
            for( int i = 0; i < activeInstance.dt.Rows.Count; i ++ )
            {
                DataRow row = activeInstance.dt.Rows[i];
                int currentID = Int32.Parse(row[Constants.ENTRY_ID].ToString());
                if (rowIDsToDelete.Contains(currentID))
                {
                    row.Delete();
                }
                activeInstance.dt.AcceptChanges();
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

        
        #endregion Creating table
        
    }
}
