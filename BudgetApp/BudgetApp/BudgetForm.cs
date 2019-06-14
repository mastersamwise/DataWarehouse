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
        DataTable dt;
        List<Entry> budgetEntries;

        public BudgetForm()
        {
            InitializeComponent();
            budgetEntries = DataAccessLayer.GetEntries();
            dt = CreateBudgetDataTable("BudgetTable");
            budgetGrid.DataSource = dt;

            int i = 1;
            foreach (Entry entry in budgetEntries)
            {
                dt.Rows.Add(i, entry.date, entry.category, "", entry.description, entry.amount);
                i++;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            label1_Click(sender, e);

            TabPage tp = new TabPage("Test");
            tabControl1.TabPages.Add(tp);

            TextBox tb = new TextBox();
            tb.Dock = DockStyle.Fill;
            tb.Multiline = true;

            tp.Controls.Add(tb);
        }

        private void label1_Click(object sender, EventArgs e)
        {
            label1.Text = "Hello World!";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Entry entry = new Entry();
            foreach(DataRow row in dt.Rows)
            {
                entry.entryID = Int32.Parse(row["Entry ID"].ToString());
                entry.date = (DateTime)row["Date"];
                entry.category = row["Category"].ToString();
                entry.description = row["Description"].ToString();
                entry.amount = Double.Parse(row["Amount"].ToString());

                DataAccessLayer.SaveEntry(entry);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            List<Entry> records = DataAccessLayer.GetEntries();
            Logger.Info(String.Format("records[0].category: {0}", records[0].category));
        }

        public DataTable CreateBudgetDataTable(string tableName)
        {
            // https://stackoverflow.com/questions/25856205/c-sharp-forms-datatable-datagridview
            // https://docs.microsoft.com/en-us/dotnet/api/system.data.datatable?view=netframework-4.8

            DataTable table = new DataTable(tableName);

            DataColumn idCol = new DataColumn();
            idCol.DataType = Type.GetType("System.Int32");
            idCol.ColumnName = "Entry ID";
            idCol.ReadOnly = true;
            idCol.Unique = true;
            idCol.AutoIncrement = true;
            table.Columns.Add(idCol);

            DataColumn dateCol = new DataColumn();
            dateCol.DataType = Type.GetType("System.DateTime");
            dateCol.ColumnName = "Date";
            dateCol.ReadOnly = false;
            dateCol.Unique = false;
            table.Columns.Add(dateCol);

            DataColumn categoryCol = new DataColumn();
            categoryCol.DataType = Type.GetType("System.String");
            categoryCol.ColumnName = "Category";
            categoryCol.ReadOnly = false;
            categoryCol.Unique = false;
            table.Columns.Add(categoryCol);

            DataColumn confirmationNumberCol = new DataColumn();
            confirmationNumberCol.DataType = Type.GetType("System.String");
            confirmationNumberCol.ColumnName = "Confirmation Number";
            confirmationNumberCol.ReadOnly = false;
            confirmationNumberCol.Unique = false;
            table.Columns.Add(confirmationNumberCol);

            DataColumn descCol = new DataColumn();
            descCol.DataType = Type.GetType("System.String");
            descCol.ColumnName = "Description";
            descCol.ReadOnly = false;
            descCol.Unique = false;
            table.Columns.Add(descCol);

            DataColumn amountCol = new DataColumn();
            amountCol.DataType = Type.GetType("System.Double");
            amountCol.ColumnName = "Amount";
            amountCol.ReadOnly = false;
            amountCol.Unique = false;
            table.Columns.Add(amountCol);

            table.Columns["Entry ID"].ColumnMapping = MappingType.Hidden;

            return table;
        }
    }
}
