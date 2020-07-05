using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DTOs
{
    public class GetBandsByPerson_Result
    {
        // column names
        public const string BAND_NAME = "band_name";
        public const string FIRST_NAME = "person_first_name";
        public const string LAST_NAME = "person_last_name";
        public const string CONCERT_DATE = "concert_date";

        // properties
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

        /// <summary>
        /// Default Constructor
        /// </summary>
        public GetBandsByPerson_Result()
            : this("", "", "", DateTime.UtcNow)
        {
            // intentionally blank
        }

        /// <summary>
        /// Turn the Sql Data into the C# Object
        /// </summary>
        /// <param name="inReader"></param>
        /// <returns></returns>
        public GetBandsByPerson_Result ReadDataToObject(SqlDataReader inReader)
        {
            GetBandsByPerson_Result result;

            int index = inReader.GetOrdinal(CONCERT_DATE);

            string bandName = inReader[BAND_NAME].ToString();
            string firstName = inReader[FIRST_NAME].ToString();
            string lastName = inReader[LAST_NAME].ToString();
            DateTime concertDate = DateTime.Parse(inReader[CONCERT_DATE].ToString());

            result = new GetBandsByPerson_Result(bandName, firstName, lastName, concertDate);

            return result;
        }
    }
}
