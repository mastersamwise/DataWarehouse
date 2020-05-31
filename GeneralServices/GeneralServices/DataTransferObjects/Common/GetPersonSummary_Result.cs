using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DataTransferObjects.Common
{
    public class GetPersonSummary_Result
    {
        public string personName { get; set; }
        public string bands { get; set; }
        public string otherPeople { get; set; }
        public DateTime concertDate { get; set; }

        /// <summary>
        /// Initialized Constructor
        /// </summary>
        /// <param name="inPersonName"></param>
        /// <param name="inBands"></param>
        /// <param name="inOtherPeople"></param>
        /// <param name="inConcertDate"></param>
        public GetPersonSummary_Result(string inPersonName, string inBands, string inOtherPeople, DateTime inConcertDate)
        {
            personName = inPersonName;
            bands = inBands;
            otherPeople = inOtherPeople;
            concertDate = inConcertDate;
        }
    }
}
