using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.Classes
{
    public class Concert
    {
        public int concertID { get; set; }
        public string concertName { get; set; }
        public double ticketPrice { get; set; }
        public List<Person> attendees { get; set; }
        public List<Band> bands { get; set; }
        public string concertDayOfWeek { get; set; }
        public DateTime concertDate { get; set; }
        public Venue venue { get; set; }
        public string comment { get; set; }
        public DateTime dateCreated { get; }
        public DateTime dateUpdated { get; set; }
        public bool isDeleted { get; set; }

        #region Constructors

        /// <summary>
        /// Default Constructor
        /// </summary>
        public Concert()
        {
            concertID = -1;
            concertName = "";
            ticketPrice = -1.0;
            attendees = new List<Person>();
            bands = new List<Band>();
            concertDayOfWeek = "";
            concertDate = DateTime.MinValue;
            venue = new Venue();
            comment = "";
            dateCreated = DateTime.UtcNow;
            dateUpdated = DateTime.UtcNow;
            isDeleted = false;
        }

        public Concert(Concert inConcert)
        {
            concertID = inConcert.concertID;
        }

        #endregion Constructors
    }
}
