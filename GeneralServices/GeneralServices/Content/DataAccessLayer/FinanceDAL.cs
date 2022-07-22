using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.Classes;
using GeneralServices.Content.DataTransferObjects;
using GeneralServices.DTOs.Common;
using GeneralServices.DTOs.Finance;

namespace GeneralServices.DataAccessLayer
{
    public class FinanceDAL
    {
        public string connectionString = CommonDAL.CONNECTION_STRING;

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
        public string AddConfirmationRecord(ConfirmationRecord inConfirmationRecord)
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.AddConfirmationRecord");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<ReturnedSqlResult> resultSet = new List<ReturnedSqlResult> ();

                    while (reader.Read())
                    {
                        ReturnedSqlResult tempResult = new ReturnedSqlResult();
                        tempResult.ReadDataToObject(reader);

                        result += String.Format("\n ID: {0}, Success: {1}", tempResult.ID, tempResult.success);
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
        /// Deletes the specified confirmation record
        /// </summary>
        /// <returns></returns>
        /// <param name="inConfirmationRecordID">Confirmation record ID</param>
        public string DeleteConfirmationRecord(int inConfirmationRecordID)
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.DeleteConfirmationRecord");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<ReturnedSqlResult> resultSet = new List<ReturnedSqlResult> ();

                    while (reader.Read())
                    {
                        ReturnedSqlResult tempResult = new ReturnedSqlResult();
                        tempResult.ReadDataToObject(reader);

                        result += String.Format("\n ID: {0}, Success: {1}", tempResult.ID, tempResult.success);
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
        /// Updates the specified confirmation record
        /// </summary>
        /// <returns>The confirmation record.</returns>
        /// <param name="inConfirmationRecord">In confirmation record.</param>
        public string UpdateConfirmationRecord(ConfirmationRecord inConfirmationRecord)
        {
            string result = "empty";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.UpdateConfirmationRecord");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<ReturnedSqlResult> resultSet = new List<ReturnedSqlResult>();

                    while (reader.Read())
                    {
                        ReturnedSqlResult tempResult = new ReturnedSqlResult();
                        tempResult.ReadDataToObject(reader);

                        result += String.Format("\n ID: {0}, Success: {1}", tempResult.ID, tempResult.success);
                        resultSet.Add(tempResult);
                    }
                }
                catch (SqlException ex)
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
        /// Fetch all the Categories in the system
        /// </summary>
        /// <returns></returns>
        public string GetAllCategories()
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.GetAllCategoriess");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<GetAllCategories_Result> resultSet = new List<GetAllCategories_Result> ();

                    while (reader.Read())
                    {
                        GetAllCategories_Result tempResult = new GetAllCategories_Result();
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
        /// Fetch all the Payment Methods in the system
        /// </summary>
        /// <returns></returns>
        public string GetAllPaymentMethods()
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.GetAllPaymentMethods");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<GetAllPaymentMethods_Result> resultSet = new List<GetAllPaymentMethods_Result> ();

                    while (reader.Read())
                    {
                        GetAllPaymentMethods_Result tempResult = new GetAllPaymentMethods_Result();
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
        /// Fetch all the Recipients in the system
        /// </summary>
        /// <returns></returns>
        public string GetAllRecipients()
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.GetAllRecipients");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<GetAllRecipients_Result> resultSet = new List<GetAllRecipients_Result> ();

                    while (reader.Read())
                    {
                        GetAllRecipients_Result tempResult = new GetAllRecipients_Result();
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
        /// Fetch all the Services in the system
        /// </summary>
        /// <returns></returns>
        public string GetAllServices()
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "finance.GetAllServices");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<GetAllServices_Result> resultSet = new List<GetAllServices_Result> ();

                    while (reader.Read())
                    {
                        GetAllServices_Result tempResult = new GetAllServices_Result();
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
    }
}