using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.Classes
{
    public class Venue
    {
        public int venueID { get; set; }
        public string venueName { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string comment { get; set; }
        public DateTime dateCreated { get; }
        public DateTime dateUpdated { get; set; }
        public bool isDeleted { get; set; }

        #region Constructors

        /// <summary>
        /// Default Constructor
        /// </summary>
        public Venue()
        {

        }

        #endregion Constructors
    }
}
