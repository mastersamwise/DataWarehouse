using System;
using System.Data.SqlClient;
using GeneralServices.Classes;

namespace GeneralServices.Content.DataTransferObjects
{
    public class GetAllCategories_Result
    {
        public int categoryID { get; set; }
        public string category { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public GetAllCategories_Result()
        {
            categoryID = -1;
            category = "";
            comment = "";
            auditInfo = new AuditInfo();
        }

        /// <summary>
        /// Turn the Sql Data into a C# object
        /// </summary>
        /// <param name="inReader"></param>
        /// <returns></returns>
        public GetAllCategories_Result ReadDataToObject(SqlDataReader inReader)
        {
            GetAllCategories_Result result = new GetAllCategories_Result();
            result.categoryID = int.Parse(inReader["category_id"].ToString());
            result.category = inReader["category"].ToString();
            result.comment = inReader["comment"].ToString();
            result.auditInfo.createdDate = DateTime.Parse(inReader["created_date"].ToString());
            result.auditInfo.updatedDate = DateTime.Parse(inReader["last_updated"].ToString());
            result.auditInfo.isDeleted = bool.Parse(inReader["is_deleted"].ToString());
            return result;
        }
    }
}