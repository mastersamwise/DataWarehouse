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
            activeInstance.BackupEntries();

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

        // remove selected entries from the budget summary table
        private void DeleteSummaryEntries_click(object sender, EventArgs e)
        {
            DeleteSelectedEntries();
        }

        // backup the current entries in the table
        private void BackupEntries_click(object sender, EventArgs e)
        {
            activeInstance.BackupEntries();
        }

        // restore the latest backup
        private void RestoreLastBackup_click(object sender, EventArgs e)
        {
            activeInstance.RestoreLastBackup();
        }

        // restore the older of the two backups
        private void RestoreOlderBackup_click(object sender, EventArgs e)
        {
            activeInstance.RestoreOlderBackup();
        }

        #endregion button clicks

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
                entry.entryID = Int32.Parse(row[Constants.COLUMN_ENTRY_ID].ToString());
                entry.date = (DateTime)row[Constants.COLUMN_DATE];
                entry.category = row[Constants.COLUMN_CATEGORY].ToString();
                entry.description = row[Constants.COLUMN_DESCRIPTION].ToString();
                entry.amount = Double.Parse(row[Constants.COLUMN_AMOUNT].ToString());

                DataAccessLayer.SaveEntry(entry);
            }
            Logger.Info("... entries saved.");
        }

        // delete an entry from the data source
        public void DeleteSelectedEntries()
        {
            Logger.Info("Deleting entries...");
            Entry entry = new Entry();
            for( int i = 0; i < activeInstance.dt.Rows.Count; i ++ )
            {
                DataRow row = activeInstance.dt.Rows[i];
                if (Boolean.Parse(row.ItemArray[1].ToString()))
                {
                    activeInstance.dt.Rows.Remove(row);
                    activeInstance.dt.AcceptChanges();
                }
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
            idCol.DataType = Type.GetType(typeof(int).ToString());
            idCol.ColumnName = Constants.COLUMN_ENTRY_ID;
            idCol.ReadOnly = true;
            idCol.Unique = true;
            idCol.AutoIncrement = true;
            table.Columns.Add(idCol);

            DataColumn isSelectedCol = new DataColumn();
            isSelectedCol.DataType = Type.GetType(typeof(bool).ToString());
            isSelectedCol.ColumnName = "Selected";
            isSelectedCol.ReadOnly = false;
            isSelectedCol.Unique = false;
            table.Columns.Add(isSelectedCol);

            DataColumn dateCol = new DataColumn();
            dateCol.DataType = Type.GetType(typeof(DateTime).ToString());
            dateCol.ColumnName = Constants.COLUMN_DATE;
            dateCol.ReadOnly = false;
            dateCol.Unique = false;
            table.Columns.Add(dateCol);

            DataColumn categoryCol = new DataColumn();
            categoryCol.DataType = Type.GetType(typeof(string).ToString());
            categoryCol.ColumnName = Constants.COLUMN_CATEGORY;
            categoryCol.ReadOnly = false;
            categoryCol.Unique = false;
            table.Columns.Add(categoryCol);

            DataColumn confirmationNumberCol = new DataColumn();
            confirmationNumberCol.DataType = Type.GetType(typeof(string).ToString());
            confirmationNumberCol.ColumnName = Constants.COLUMN_CONFIRMATION_NUMBER;
            confirmationNumberCol.ReadOnly = false;
            confirmationNumberCol.Unique = false;
            table.Columns.Add(confirmationNumberCol);

            DataColumn descCol = new DataColumn();
            descCol.DataType = Type.GetType(typeof(string).ToString());
            descCol.ColumnName = Constants.COLUMN_DESCRIPTION;
            descCol.ReadOnly = false;
            descCol.Unique = false;
            table.Columns.Add(descCol);

            DataColumn amountCol = new DataColumn();
            amountCol.DataType = Type.GetType(typeof(double).ToString());
            amountCol.ColumnName = Constants.COLUMN_AMOUNT;
            amountCol.ReadOnly = false;
            amountCol.Unique = false;
            table.Columns.Add(amountCol);

            // table.Columns[Constants.COLUMN_ENTRY_ID].ColumnMapping = MappingType.Hidden;

            return table;
        }


        #endregion Creating table

        
    }
}
