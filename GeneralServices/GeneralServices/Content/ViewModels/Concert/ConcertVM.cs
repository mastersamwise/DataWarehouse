using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.Classes;

namespace GeneralServices.ViewModels
{
    public class ConcertVM
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
        public AuditInfo auditInfo { get; set; }

        #region Constructors

        /// <summary>
        /// Default
        /// </summary>
        public ConcertVM()
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
            auditInfo = new AuditInfo();
        }

        #endregion Constructors
    }
}
