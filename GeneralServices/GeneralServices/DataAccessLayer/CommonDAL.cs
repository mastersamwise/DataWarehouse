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

        public static string CONNECTION_STRING { get; } = "Data Source = localhost;Initial Catalog = master; User ID = DESKTOP-1FBPA48\\Nik; Password=";

        #endregion Properties

        #region Methods

        public static SqlCommand SetUpStoredProcedure(SqlConnection inConnection, string inStoredProcedureName, string inConnectionString = "")
        {
            if (inConnectionString == "" || inConnectionString == null)
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
