using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.Classes;
using GeneralServices.DTOs.Common;
using GeneralServices.DTOs.Finance;

namespace GeneralServices.DataAccessLayer
{
    public class FinanceDAL
    {
        public string connectionString = CommonDAL.CONNECTION_STRING;
        public SqlConnection connection;

        /// <summary>
        /// Gets all confirmation records
        /// </summary>
        /// <returns></returns>
        public string GetAllConfirmationRecords()
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.GetAllConfirmationRecords");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<GetAllConfirmationNumbers_Result> resultSet = new List<GetAllConfirmationNumbers_Result> ();

                    while (reader.Read())
                    {
                        GetAllConfirmationNumbers_Result tempResult = new GetAllConfirmationNumbers_Result();
                        tempResult.ReadDataToObject(reader);

                        result += String.Format("\n ConfirmationRecordID: {0}, PaymentDate: {1}, LastName: {2}, ShowDate: {3}");
                        resultSet.Add(tempResult);
                    }

                }
                catch(SqlException ex)
                {
                    CustomTools.Logger.Error("Sql Error: " + ex.Message);
                    result = ex.Message;
                }
                finally
                {
                    connection.Close();
                }

            }

            return result;
        }

        /// <summary>
        /// Saves the confirmation record
        /// </summary>
        /// <returns></returns>
        /// <param name="inConfirmationRecord">Confirmation record to save</param>
        public string SaveConfirmationRecord(ConfirmationRecord inConfirmationRecord)
        {
            return "SaveConfirmationRecord";
        }

        /// <summary>
        /// Deletes the spedified confirmation record
        /// </summary>
        /// <returns></returns>
        /// <param name="inConfirmationRecordID">Confirmation record ID</param>
        public string DeleteConfirmationRecord(int inConfirmationRecordID)
        {
            return "DeleteConfirmationRecord";
        }

        /// <summary>
        /// Updates the specified confirmation record
        /// </summary>
        /// <returns>The confirmation record.</returns>
        /// <param name="inConfirmationRecord">In confirmation record.</param>
        public string UpdateConfirmationRecord(ConfirmationRecord inConfirmationRecord)
        {
            return "UpdateConfirmationRecord";
        }
    }
}