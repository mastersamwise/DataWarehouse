using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using GeneralServices.DataAccessLayer;
using GeneralServices.Classes;

namespace GeneralServices
{
    [ApiController]
    [Route("[controller]")]
    public class FinanceController : ControllerBase
    {
        #region Properties

        FinanceDAL financeDAL = new FinanceDAL();

        #endregion Properties

        #region Methods

        /// <summary>
        /// Gets all budget entries in the system
        /// </summary>
        /// <returns>The all budget entries.</returns>
        [HttpPost]
        [Route("GetAllBudgetEntries")]
        public ActionResult<string> GetAllBudgetEntries()
        {
            string result = "empty";

            result = financeDAL.GetAllConfirmationRecords();
            return result;
        }

        /// <summary>
        /// Adds a confirmation record.
        /// </summary>
        /// <returns>The budget entry.</returns>
        /// <param name="inConfirmationRecord">In confirmation record.</param>
        [HttpPost]
        [Route("AddConfirmationRecord")]
        public ActionResult<string> AddConfirmationRecord([FromBody] ConfirmationRecord inConfirmationRecord)
        {
            string result = "empty";

            result = financeDAL.AddConfirmationRecord(inConfirmationRecord);
            return result;
        }

        /// <summary>
        /// Update a confirmation record.
        /// </summary>
        /// <returns>The budget entry.</returns>
        /// <param name="inConfirmationRecord">In confirmation record.</param>
        [HttpPost]
        [Route("UpdateConfirmationRecord")]
        public ActionResult<string> UpdateConfirmationRecord([FromBody] ConfirmationRecord inConfirmationRecord)
        {
            string result = "empty";

            result = financeDAL.AddConfirmationRecord(inConfirmationRecord);
            return result;
        }



        #endregion Methods
    }
}
