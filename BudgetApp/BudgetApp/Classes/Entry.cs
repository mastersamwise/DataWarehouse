using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Google.Apis.Calendar.v3.Data;

namespace BudgetApp.Classes
{
    public class Entry
    {
        public int entryID;
        public bool isSelected;
        public DateTime dateAdded;
        public DateTime date;
        public string name;
        public string description;
        public string category;
        public string confirmationNumber;
        public double amount;

        public Entry()
        {
            this.date = DateTime.UtcNow;
            this.name = "";
            this.description = "";
            this.category = "Bank";
            this.amount = 0.0;
            this.dateAdded = date;
        }

        public Entry(DateTime date, string name, string description, string category, string confirmationNumber, double amount)
        {
            this.date = date;
            this.name = name;
            this.description = description;
            this.category = category;
            this.confirmationNumber = confirmationNumber;
            this.amount = amount;
            this.dateAdded = DateTime.UtcNow;
        }

        public Entry(CalendarEvent calendarEvent)
        {
            this.entryID = calendarEvent.eventID;
            this.dateAdded = calendarEvent.dateAdded;
            this.date = calendarEvent.date;
            this.name = calendarEvent.name;
        }

        public CalendarEvent ToCalendarEvent(Entry dataEntry)
        {
            CalendarEvent calendarEvent = new CalendarEvent(dataEntry);
            return calendarEvent;
        }

        public Event ToGoogleCalendarEvent(Entry dataEntry)
        {
            Event resultEvent = new Event();
            resultEvent.Summary = dataEntry.name;
            resultEvent.Start = new EventDateTime();
            resultEvent.Start.DateTime = dataEntry.date;
            resultEvent.End = new EventDateTime();
            resultEvent.End.DateTime = dataEntry.date;
            resultEvent.Created = dataEntry.dateAdded;

            return resultEvent;
        }
    }
}
