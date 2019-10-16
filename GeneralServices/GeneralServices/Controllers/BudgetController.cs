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
        [Route("Budget/[controller]")]
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
                BudgetEntry entry = new BudgetEntry();

                result = budgetDAL.AddBudgetEntry(entry);
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
                int entryID = 1;

                result = budgetDAL.DeleteBudgetEntry(entryID);
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
                BudgetCategory category = new BudgetCategory();

                result = budgetDAL.AddBudgetCategory(category);
                return result;
            }

            [HttpPost]
            [Route("EditBudgetCategory")]
            public ActionResult<string> EditBudgetCategory([FromBody]string value)
            {
                string result = "empty";
                BudgetCategory category = new BudgetCategory();

                result = budgetDAL.EditBudgetCategory(category);
                return result;
            }

            [HttpPost]
            [Route("DeleteBudgetCategory/{inBudgetCategory}")]
            public ActionResult<string> DeleteBudgetCategory(int inBudgetCategory)
            {
                string result = "empty";
                int categoryID = 1;

                result = budgetDAL.DeleteBudgetCategory(categoryID);
                return result;
            }

            [HttpGet]
            [Route("GetBudgetEntriesByCategory")]
            public ActionResult<string> GetBudgetEntriesByCategory(int inBudgetCategory)
            {
                string result = "empty";
                int categoryID = 1;

                result = budgetDAL.GetBudgetEntriesByCategory(categoryID);
                return result;
            }

            #endregion Methods
        }
    }
}
