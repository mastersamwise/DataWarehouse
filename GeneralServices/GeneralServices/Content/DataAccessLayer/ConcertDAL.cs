using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

 
using GeneralServices.DTOs;

namespace GeneralServices.DataAccessLayer
{
    public class ConcertDAL
    {
        public string connectionString = CommonDAL.CONNECTION_STRING;
        public SqlConnection connection;

        public string GetBandsByPerson(string inFirstName, string inLastName)
        {
            string result = "empty";
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    //connection.Open();
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "[concerts].[GetBandsByPersonID]");

                    command.Connection.Open();
                    command.Parameters.AddWithValue("@personFirstName", inFirstName);
                    command.Parameters.AddWithValue("@personLastName", inLastName);

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

        public string GetConcertSummaryByID(int inConcertID)
        {
            string concertSummary = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlCommand command = CommonDAL.SetUpStoredProcedure(connection, "[concerts].[GetConcertSummaryByID]");

                    command.Connection.Open();
                    command.Parameters.AddWithValue("@concertID", inConcertID);

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
                        concertSummary += String.Format("\n Band: {0}, FirstName: {1}, LastName: {2}, ShowDate: {3}",
                                                tempResult.bandName, tempResult.personFirstName, tempResult.personLastName, tempResult.concertDate);
                        resultSet.Add(tempResult);
                    }

                }
                catch(SqlException ex)
                {
                    CustomTools.Logger.Error("Sql Error: " + ex.Message);
                    concertSummary = ex.Message;
                }
                finally
                {
                    connection.Close();
                }
            }

            return concertSummary;
        }
    }
}
