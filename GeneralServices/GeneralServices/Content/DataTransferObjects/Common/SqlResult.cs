﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.DTOs.Interfaces
{
    public abstract class SqlResult
    {
        public abstract T ReadDataToObject<T>(SqlDataReader inReader);
    }
}
