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

        [HttpPost]
        [Route("AddBudgetEntry")]
        public ActionResult<string> AddBudgetEntry()
        {
            string result = "empty";

            result = financeDAL.GetAllConfirmationRecords();
            return result;
        }


        #endregion Methods
    }
}
