using GeneralServices.Classes;
using GeneralServices.DTOs;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

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
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "[finance].[GetAllConfirmationRecords]");

                    command.Connection.Open();

                    SqlDataReader reader = command.ExecuteReader();
                    List<GetBandsByPerson_Result> resultSet = new List<GetBandsByPerson_Result>();

                    while (reader.Read())
                    {
                        //string bandName = reader.GetValue(0).ToString();        // 0 = band_name
                        //string firstName = reader.GetValue(1).ToString();       // 1 = person_first_name
                        //string lastName = reader.GetValue(2).ToString();        // 2 = person_last_name
                        //string date = reader.GetValue(3).ToString();            // 3 = concert_date
                        GetBandsByPerson_Result tempResult = new GetBandsByPerson_Result();
                        tempResult.ReadDataToObject(reader);

                        //result += String.Format("\n Band: {0}, FirstName: {1}, LastName: {2}, ShowDate: {3}", bandName, firstName, lastName, date);
                        result += String.Format("\n Band: {0}, FirstName: {1}, LastName: {2}, ShowDate: {3}",
                                                tempResult.bandName, tempResult.personFirstName, tempResult.personLastName, tempResult.concertDate);
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

        public string AddFinanceService()
    }
}