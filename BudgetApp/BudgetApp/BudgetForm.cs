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
        public BudgetForm()
        {
            InitializeComponent();
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
            BudgetForm form = new BudgetForm();
            form.budgetGrid.EditMode = DataGridViewEditMode.EditOnEnter;
            form.budgetGrid.ReadOnly = false;
            
            string test = form.budgetGrid[0, 0].Value.ToString();
            string label = "";
            Entry entry = new Entry();
            entry.entryID = 1;
            entry.date = DateTime.Now;
            entry.name = test;
            DataAccessLayer.SaveEntry(entry);
            
            label2.Text = label;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            List<Entry> records = DataAccessLayer.GetEntries();
            Logger.Info(String.Format("records[0].category: {0}", records[0].category));
        }
    }
}
