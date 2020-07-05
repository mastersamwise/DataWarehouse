using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DataAccessLayer
{
    public static class CommonDAL
    {
        #region Properties

        public static string laptop_windows_conn_str { get; } = "Server=localhost;Database=general_services_test;Trusted_Connection=True;User ID=DESKTOP-1FBPA48\\Nik;";
        public static string laptop_unsure { get; } = "Server=DESKTOP-QBTM174\\TEST;Database=general_services;Trusted_Connection=True;User ID=DESKTOP-QBTM174\\Nik;";
        public static string aws_1_conn_str_2 { get; } = "Server=general-services-1.c1y5lxnjkppg.us-east-1.rds.amazonaws.com;Database=general-services;User ID=admin;Password=password;";
        public static string aws_1_conn_str { get; } = "Server=general-services-1.c1y5lxnjkppg.us-east-1.rds.amazonaws.com;Database=general-services;Trusted_Connection=True;User ID=admin;Password=password;";

        public static string CONNECTION_STRING { get; } = laptop_windows_conn_str;

        #endregion Properties

        #region Methods

        /// <summary>
        /// Set up stored procedures
        /// </summary>
        /// <param name="inConnection"></param>
        /// <param name="inStoredProcedureName"></param>
        /// <param name="inConnectionString"></param>
        /// <returns></returns>
        public static SqlCommand SetUpStoredProcedure(SqlConnection inConnection, string inStoredProcedureName, string inConnectionString = "")
        {
            if (String.IsNullOrEmpty(inConnectionString))
            {
                inConnectionString = CONNECTION_STRING;
            }

            inConnection = new SqlConnection(inConnectionString);
            SqlCommand commandToReturn = new SqlCommand(inStoredProcedureName, inConnection);
            commandToReturn.CommandType = CommandType.StoredProcedure;

            return commandToReturn;
        }

        #endregion Methods
    }
}
