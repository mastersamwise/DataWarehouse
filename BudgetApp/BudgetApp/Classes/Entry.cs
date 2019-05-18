using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BudgetApp.Classes
{
    public class Entry
    {
        public int entryID;
        public DateTime date;
        public string description;
        public string category;
        public double amount;
        public DateTime dateAdded;

        public Entry()
        {
            this.date = DateTime.UtcNow;
            this.description = "";
            this.category = "Bank";
            this.amount = 0.0;
            this.dateAdded = DateTime.UtcNow;
        }

        public Entry(DateTime date, string description, string category, double amount)
        {
            this.date = date;
            this.description = description;
            this.category = category;
            this.amount = amount;
            this.dateAdded = DateTime.UtcNow;
        }
    }
}
