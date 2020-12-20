using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using GeneralServices.DataAccessLayer;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace GeneralServices
{
    [ApiController]
    [Route("[controller]")]
    public class ConcertController : ControllerBase
    {

        #region Properties

        ConcertDAL concertDAL = new ConcertDAL();

        #endregion Properties

        #region Methods

        [HttpPost]
        [Route("UpsertConcert")]
        public ActionResult<int> UpsertConcert([FromBody]string value)
        {
            return 1;
        }

        [HttpGet]
        [Route("GetConcertSummary/{inConcertID}")]
        public ActionResult<int> GetConcertSummaryByID(int inConcertID)
        {

            return inConcertID;
        }

        [HttpGet]
        [Route("GetBandsByPerson/{personFirstName}/{personLastName}")]
        public ActionResult<string> GetBandsByPerson(string personFirstName, string personLastName)
        {
            string result = concertDAL.GetBandsByPerson(personFirstName, personLastName);

            return result;
        }

        #endregion Methods
    }
}
