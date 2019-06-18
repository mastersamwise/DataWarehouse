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
            activeInstance.dt = activeInstance.CreateBudgetDataTable(Constants.BUDGET_TABLE_NAME);
            PopulateEntries(activeInstance.budgetEntries);

            // set the DataSource of the grid to be the DataTable in the activeInstance
            budgetGrid.DataSource = activeInstance.dt;

        }

        public void CreateTabs()
        {
            // https://docs.microsoft.com/en-us/dotnet/framework/winforms/controls/how-to-add-and-remove-tabs-with-the-windows-forms-tabcontrol
            TabPage summaryTab = new TabPage("Summary Page");

            tabControl1.TabPages.Add(summaryTab);
        }

        private List<Entry> GetEntries()
        {
            List<Entry> entries = activeInstance.GetEntries();

            return entries;
        }

        private void PopulateEntries(List<Entry> entries)
        {
            activeInstance.populateEntries(entries);
        }

        #region button clicks
        // save the table entries
        private void SaveTable(object sender, EventArgs e)
        {
            activeInstance.SaveEntries();
        }

        // backup the current entries in the table
        private void BackupEntries(object sender, EventArgs e)
        {
            activeInstance.BackupEntries();
        }

        // restore the latest backup
        private void RestoreLastBackup(object sender, EventArgs e)
        {
            activeInstance.RestoreLastBackup();
        }

        // restore the older of the two backups
        private void RestoreOlderBackup(object sender, EventArgs e)
        {
            activeInstance.RestoreOlderBackup();
        }
        #endregion button clicks


    }
}
