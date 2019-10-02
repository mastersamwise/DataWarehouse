using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace GeneralServices.Controllers
{
    public class BudgetController : ControllerBase
    {
        [ApiController]
        [Route("[controller]")]
        public class ConcertController : ControllerBase
        {
            [HttpPost]
            [Route("AddBudgetEntry")]
            public ActionResult<string> AddBudgetEntry([FromBody]string value)
            {
                return "Add Budget Entry";
            }

            [HttpPost]
            [Route("EditBudgetEntry")]
            public ActionResult<string> EditBudgetEntry([FromBody]string value)
            {
                return "Edit Budget Entry";
            }

            [HttpPost]
            [Route("DeleteBudgetEntry/{inBudgetEntry}")]
            public ActionResult<string> DeleteBudgetEntry(int inBudgetEntry)
            {
                return "Delete Budget Entry";
            }

            [HttpGet]
            [Route("GetAllBudgetEntries")]
            public ActionResult<string> GetAllBudgetEntries()
            {
                return "Get All Budget Entries";
            }

            [HttpPost]
            [Route("AddBudgetCategory")]
            public ActionResult<string> AddBudgetCategory([FromBody]string value)
            {
                return "Add Budget Category";
            }

            [HttpPost]
            [Route("EditBudgetCategory")]
            public ActionResult<string> EditBudgetCategory([FromBody]string value)
            {
                return "Edit Budget Category";
            }

            [HttpPost]
            [Route("DeleteBudgetCategory/{inBudgetCategory}")]
            public ActionResult<string> DeleteBudgetCategory(int inBudgetCategory)
            {
                return "Delete Budget Category";
            }

            [HttpGet]
            [Route("GetBudgetEntriesByCategory")]
            public ActionResult<string> GetBudgetEntriesByCategory(int inBudgetCategory)
            {
                return "Get Budget Entries By Category";
            }
        }
    }
}
