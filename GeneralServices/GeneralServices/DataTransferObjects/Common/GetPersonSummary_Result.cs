using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DataTransferObjects.Common
{
    public class GetPersonSummary_Result : ISqlResult
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

        public List<GetPersonSummary_Result> ReadDataToObject(SqlDataReader inReader)
        {
            List<GetPersonSummary_Result> resultSet = new List<GetPersonSummary_Result>();
            GetPersonSummary_Result tempResult;

            while (inReader.Read())
            {
                int index = inReader.GetOrdinal("ConcertDate");

                string person = inReader["Person"].ToString();
                string bands = inReader["Bands"].ToString();
                string otherPeople = inReader["OtherPeople"].ToString();
                DateTime concertDate = DateTime.Parse(inReader.GetDateTime(index).ToString());

                //tempResult = new GetPersonSummary_Result(person, bands, otherPeople, concertDate);
                //resultSet.Add(tempResult);
                
            }

            return resultSet;
        }
    }
}
