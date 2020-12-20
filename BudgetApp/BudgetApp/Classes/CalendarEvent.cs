using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BudgetApp.Classes
{
    public class CalendarEvent
    {
        public int eventID;
        public DateTime dateAdded;
        public DateTime date;
        public string name;
        public string description;
        public string calendar;
        public double amount;
        public double runningTotal;

        public CalendarEvent()
        {
            this.date = DateTime.UtcNow;
            this.dateAdded = date;
            this.name = "";
            this.description = "";
            this.calendar = "";
            this.amount = 0.0;
            this.runningTotal = 0.0;
        }

        public CalendarEvent (Entry dataEntry)
        {
            this.eventID = dataEntry.entryID;
            this.dateAdded = dataEntry.dateAdded;
            this.date = dataEntry.date;
            this.name = dataEntry.description;
            this.calendar = dataEntry.category;
            this.amount = dataEntry.amount;
        }
    }
}
