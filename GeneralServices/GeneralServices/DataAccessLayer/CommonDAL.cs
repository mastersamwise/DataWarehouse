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

        //public static string CONNECTION_STRING { get; } = "Data Source = localhost;Initial Catalog = master; User ID = DESKTOP-1FBPA48\\Nik; Password=";
        //"Server=localhost\\MSSQLSERVER01;Database=master;Trusted_Connection=True;"
        //public static string CONNECTION_STRING { get; } = "Server=localhost;Database=general_services;Trusted_Connection=True;User ID=DESKTOP-1FBPA48\\Nik;";
        // admin/password
        // public static string CONNECTION_STRING { get; } = "Server=general-services-1.c1y5lxnjkppg.us-east-1.rds.amazonaws.com;Database=general-services;User ID=admin;Password=password;";
        public static string CONNECTION_STRING { get; } = "Server=DESKTOP-QBTM174\\TEST;Database=general_services;Trusted_Connection=True;User ID=DESKTOP-QBTM174\\Nik;";
        // DESKTOP-1FBPA48\\Nik    (Mac's SqlServer DB user)

        //public static string CONNECTION_STRING { get; } = "Server=general-services-1.c1y5lxnjkppg.us-east-1.rds.amazonaws.com;Database=general-services;Trusted_Connection=True;User ID=admin;Password=password;";
        #endregion Properties

        #region Methods

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
