using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.DTOs.Interfaces;

namespace GeneralServices.DTOs
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

        public GetPersonSummary_Result()
            : this("", "", "", DateTime.UtcNow)
        {
            // intionionally blank
        }

        /// <summary>
        /// Turn the Sql Data into the C# Object
        /// </summary>
        /// <param name="inReader"></param>
        /// <returns></returns>
        public GetPersonSummary_Result ReadDataToObject(SqlDataReader inReader)
        {
            GetPersonSummary_Result result;
            
            // find index of the 
            int index = inReader.GetOrdinal("ConcertDate");

            string person = inReader["Person"].ToString();
            string bands = inReader["Bands"].ToString();
            string otherPeople = inReader["OtherPeople"].ToString();
            DateTime concertDate = DateTime.Parse(inReader.GetDateTime(index).ToString());

            result = new GetPersonSummary_Result(person, bands, otherPeople, concertDate);
            
            return result;
        }
    }
}
