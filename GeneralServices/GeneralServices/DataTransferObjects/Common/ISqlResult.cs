﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DataTransferObjects.Common
{
    public interface ISqlResult
    {
        object ReadDataToObject(SqlDataReader inReader);
    }
}
