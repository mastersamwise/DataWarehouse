using System;
using System.Data.SqlClient;
using GeneralServices.Classes;

namespace GeneralServices.Content.DataTransferObjects
{
    public class GetAllPaymentMethods_Result
    {
        public int paymentMethodID { get; set; }
        public string paymentMethod { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public GetAllPaymentMethods_Result()
        {
            paymentMethodID = -1;
            paymentMethod = "";
            comment = "";
            auditInfo = new AuditInfo();
        }

        /// <summary>
        /// Turn the Sql Data into a C# object
        /// </summary>
        /// <param name="inReader"></param>
        /// <returns></returns>
        public GetAllPaymentMethods_Result ReadDataToObject(SqlDataReader inReader)
        {
            GetAllPaymentMethods_Result result = new GetAllPaymentMethods_Result();
            result.paymentMethodID = int.Parse(inReader["payment_method_id"].ToString());
            result.paymentMethod = inReader["payment_method"].ToString();
            result.comment = inReader["comment"].ToString();
            result.auditInfo.createdDate = DateTime.Parse(inReader["created_date"].ToString());
            result.auditInfo.updatedDate = DateTime.Parse(inReader["last_updated"].ToString());
            result.auditInfo.isDeleted = bool.Parse(inReader["is_deleted"].ToString());
            return result;
        }
    }
}