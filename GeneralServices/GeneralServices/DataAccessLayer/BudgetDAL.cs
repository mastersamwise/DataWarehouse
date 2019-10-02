using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DataAccessLayer
{
    public class BudgetDAL
    {
        #region Properties

        public string connectionString = Constants.CONNECTION_STRING;

        #endregion Properties

        #region Methods


        // Budget Entries

        public string AddBudgetEntry(BudgetEntry inEntry)
        {
            return "Add Budget Entry";
        }

        public string EditBudgetEntry(BudgetEntry inCategory)
        {
            return "Edit Budget Entry";
        }

        public string DeleteBudgetEntry(int inEntryID)
        {
            return "Delete Budget Entry";
        }

        public string GetAllBudgetEntries()
        {
            return "Get All Budget Entries";
        }

        public string GetBudgetEntriesByCategory(int inCategoryID)
        {
            return "Get Budget Entries By Category";
        }

        public string GetBudgetEntryByID(int inEntryID)
        {
            return "Get Budget Entry By ID";
        }


        // Budget Categories

        public string AddBudgetCategory(BudgetCategory inCategory)
        {
            return "Add Budget Category";
        }

        public string EditBudgetCategory(BudgetCategory inCategory)
        {
            return "Edit Budget Category";
        }

        public string DeleteBudgetCategory(int inCategoryID)
        {
            return "Delete Budget Category";
        }

        #endregion Methods
    }
}
