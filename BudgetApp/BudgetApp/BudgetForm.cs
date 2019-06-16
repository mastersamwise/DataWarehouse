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
        string user;
        DataTable dt;
        List<Entry> budgetEntriesOnStart;
        List<Entry> budgetEntriesBackup;
        List<Entry> budgetEntries;

        public BudgetForm()
        {
            InitializeComponent();
            CreateTabs();
            budgetEntries = DataAccessLayer.GetEntries();

            // save an "on-start backup" copy of the entries, incase user wants to revert
            budgetEntriesBackup = budgetEntries;
            BackupEntries();

            dt = CreateBudgetDataTable(Constants.BUDGET_TABLE_NAME);
            budgetGrid.DataSource = dt;

            int i = 1;
            foreach (Entry entry in budgetEntries)
            {
                dt.Rows.Add(i, entry.date, entry.category, "", entry.description, entry.amount);
                i++;
            }
        }

        public void CreateTabs()
        {
            // https://docs.microsoft.com/en-us/dotnet/framework/winforms/controls/how-to-add-and-remove-tabs-with-the-windows-forms-tabcontrol
            TabPage summaryTab = new TabPage("Summary Page");

            tabControl1.TabPages.Add(summaryTab);
        }

        #region Table Functionality
        public void BackupEntries()
        {
            budgetEntriesBackup = budgetEntries;
        }

        public void RestoreLastBackup()
        {
            budgetEntries = budgetEntriesBackup;
        }

        public void RestoreOnStartBackup()
        {
            budgetEntries = budgetEntriesOnStart;
        }

        public void SaveTable(object sender, EventArgs e)
        {
            Logger.Info("Saving table...");
            Entry entry = new Entry();
            foreach(DataRow row in dt.Rows)
            {
                entry.entryID = Int32.Parse(row[Constants.ENTRY_ID].ToString());
                entry.date = (DateTime)row[Constants.DATE];
                entry.category = row[Constants.CATEGORY].ToString();
                entry.description = row[Constants.DESCRIPTION].ToString();
                entry.amount = Double.Parse(row[Constants.AMOUNT].ToString());

                DataAccessLayer.SaveEntry(entry);
            }
            Logger.Info("... table saved.");
        }

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

            table.Columns[ENTRY_ID].ColumnMapping = MappingType.Hidden;

            return table;
        }
        #endregion Table Functionality
    }
}
