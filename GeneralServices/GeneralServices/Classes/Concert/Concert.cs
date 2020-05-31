using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.ViewModels;

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
        public AuditInfo auditInfo { get; set; }

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
            auditInfo = new AuditInfo();
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inConcert"></param>
        public Concert(Concert inConcert)
        {
            concertID = inConcert.concertID;
            concertName = inConcert.concertName;
            ticketPrice = inConcert.ticketPrice;
            attendees = inConcert.attendees;
            bands = inConcert.bands;
            concertDayOfWeek = inConcert.concertDayOfWeek;
            concertDate = inConcert.concertDate;
            venue = inConcert.venue;
            comment = inConcert.comment;
            auditInfo = inConcert.auditInfo;
        }

        #endregion Constructors

        #region Methods

        /// <summary>
        /// To ViewModel method
        /// </summary>
        /// <returns></returns>
        public ConcertVM toViewModel()
        {
            ConcertVM vm = new ConcertVM();
            vm.concertID = this.concertID;
            vm.concertName = this.concertName;
            vm.ticketPrice = this.ticketPrice;
            vm.attendees = this.attendees;
            vm.bands = this.bands;
            vm.concertDayOfWeek = this.concertDayOfWeek;
            vm.concertDate = this.concertDate;
            vm.venue = this.venue;
            vm.comment = this.comment;
            vm.auditInfo = this.auditInfo;

            return vm;
        }

        /// <summary>
        /// Populate Concert from the View Model
        /// </summary>
        /// <param name="inVM"></param>
        public void fromViewModel(ConcertVM inVM)
        {
            this.concertID = inVM.concertID;
            this.concertName = inVM.concertName;
            this.ticketPrice = inVM.ticketPrice;
            this.attendees = inVM.attendees;
            this.bands = inVM.bands;
            this.concertDayOfWeek = inVM.concertDayOfWeek;
            this.concertDate = inVM.concertDate;
            this.venue = inVM.venue;
            this.comment = inVM.comment;
            this.auditInfo = inVM.auditInfo;
        }

        #endregion Methods
    }
}
