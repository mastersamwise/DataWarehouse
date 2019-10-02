using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using GeneralServices.DataAccessLayer;

namespace GeneralServices
{
    public class BudgetController : ControllerBase
    {
        [ApiController]
        [Route("[controller]")]
        public class ConcertController : ControllerBase
        {
            #region Properties

            BudgetDAL budgetDAL = new BudgetDAL();

            #endregion Properties

            #region Methods

            [HttpPost]
            [Route("AddBudgetEntry")]
            public ActionResult<string> AddBudgetEntry([FromBody]string value)
            {
                string result = "empty";

                result = budgetDAL.AddBudgetEntry();
                return result;
            }

            [HttpPost]
            [Route("EditBudgetEntry")]
            public ActionResult<string> EditBudgetEntry([FromBody]string value)
            {
                string result = "empty";

                BudgetEntry entry = new BudgetEntry();
                result = budgetDAL.EditBudgetEntry(entry);
                return result;
            }

            [HttpPost]
            [Route("DeleteBudgetEntry/{inBudgetEntry}")]
            public ActionResult<string> DeleteBudgetEntry(int inBudgetEntry)
            {
                string result = "empty";

                result = budgetDAL.DeleteBudgetEntry();
                return result;
            }

            [HttpGet]
            [Route("GetAllBudgetEntries")]
            public ActionResult<string> GetAllBudgetEntries()
            {
                string result = "empty";

                result = budgetDAL.GetAllBudgetEntries();
                return result;
            }

            [HttpPost]
            [Route("AddBudgetCategory")]
            public ActionResult<string> AddBudgetCategory([FromBody]string value)
            {
                string result = "empty";

                result = budgetDAL.AddBudgetCategory();
                return result;
            }

            [HttpPost]
            [Route("EditBudgetCategory")]
            public ActionResult<string> EditBudgetCategory([FromBody]string value)
            {
                string result = "empty";

                result = budgetDAL.EditBudgetCategory();
                return result;
            }

            [HttpPost]
            [Route("DeleteBudgetCategory/{inBudgetCategory}")]
            public ActionResult<string> DeleteBudgetCategory(int inBudgetCategory)
            {
                string result = "empty";

                result = budgetDAL.DeleteBudgetCategory();
                return result;
            }

            [HttpGet]
            [Route("GetBudgetEntriesByCategory")]
            public ActionResult<string> GetBudgetEntriesByCategory(int inBudgetCategory)
            {
                string result = "empty";

                result = budgetDAL.GetBudgetEntriesByCategory();
                return result;
            }

            #endregion Methods
        }
    }
}
