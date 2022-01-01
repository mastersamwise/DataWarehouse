using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using GeneralServices.Classes;

namespace GeneralServices.DataAccessLayer
{
    public class BudgetDAL
    {
        #region Properties

        public string connectionString = CommonDAL.CONNECTION_STRING;
        public SqlConnection connection;

        #endregion Properties

        #region Methods


        // Budget Entries

        public string AddBudgetEntry(BudgetEntry inEntry)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.InsertBudgetEntry");

            return "Add Budget Entry";
        }

        public string EditBudgetEntry(BudgetEntry inCategory)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.UpdateBudgetEntry");

            return "Edit Budget Entry";
        }

        public string DeleteBudgetEntry(int inEntryID)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.DeleteBudgetEntry");

            return "Delete Budget Entry";
        }

        public string GetAllBudgetEntries()
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.GetAllBudgetEntries");

            return "Get All Budget Entries";
        }

        public string GetBudgetEntriesByCategory(int inCategoryID)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.GetBudgetEntryByCategory");

            return "Get Budget Entries By Category";
        }

        public string GetBudgetEntryByID(int inEntryID)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.GetBudgetEntryByID");

            return "Get Budget Entry By ID";
        }


        // Budget Categories

        public string AddBudgetCategory(BudgetCategory inCategory)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.InsertBudgetCategory");

            return "Add Budget Category";
        }

        public string EditBudgetCategory(BudgetCategory inCategory)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.UpdateBudgetCategory");

            return "Edit Budget Category";
        }

        public string DeleteBudgetCategory(int inCategoryID)
        {
            SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "budget.DeleteBudgetCategory");

            return "Delete Budget Category";
        }

        #endregion Methods
    }
}
