using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DTOs
{
    public class GetBandsByPerson_Result
    {
        public string bandName { get; set; }
        public string personFirstName { get; set; }
        public string personLastName { get; set; }
        public DateTime concertDate { get; set; }

        /// <summary>
        /// Initialized Constructor
        /// </summary>
        /// <param name="inBandName"></param>
        /// <param name="inPersonFirstName"></param>
        /// <param name="inPersonLastName"></param>
        /// <param name="inConcertDate"></param>
        public GetBandsByPerson_Result(string inBandName, string inPersonFirstName, string inPersonLastName, DateTime inConcertDate)
        {
            bandName = inBandName;
            personFirstName = inPersonFirstName;
            personLastName = inPersonLastName;
            concertDate = inConcertDate;
        }
    }
}
