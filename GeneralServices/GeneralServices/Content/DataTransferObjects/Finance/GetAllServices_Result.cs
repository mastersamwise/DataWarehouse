using System;
using System.Data.SqlClient;
using GeneralServices.Classes;

namespace GeneralServices.Content.DataTransferObjects
{
    public class GetAllServices_Result
    {
        public int serviceID { get; set; }
        public string serviceName { get; set; }
        public string serviceDescription { get; set; }
        public bool isRecurringPayment { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public string dueDate { get; set; }
        public string paymentMethod { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public GetAllServices_Result()
        {
            serviceID = -1;
            serviceName = "";
            serviceDescription = "";
            isRecurringPayment = false;
            startDate = new DateTime();
            endDate = new DateTime();
            dueDate = "";
            paymentMethod = "";
            comment = "";
            auditInfo = new AuditInfo();
        }

        /// <summary>
        /// Turn the Sql Data into a C# object
        /// </summary>
        /// <param name="inReader"></param>
        /// <returns></returns>
        public GetAllServices_Result ReadDataToObject(SqlDataReader inReader)
        {
            GetAllServices_Result result = new GetAllServices_Result();
            result.serviceID = int.Parse(inReader["service_id"].ToString());
            result.serviceName = inReader["service_name"].ToString();
            result.serviceDescription = inReader["service_description"].ToString();
            result.isRecurringPayment = bool.Parse(inReader["is_recurring_payment"].ToString());
            result.startDate = DateTime.Parse(inReader["start_date"].ToString());
            result.endDate = DateTime.Parse(inReader["end_date"].ToString());
            result.dueDate = inReader["due_date"].ToString();
            result.paymentMethod = inReader["payment_method"].ToString();
            result.comment = inReader["comment"].ToString();
            result.auditInfo.createdDate = DateTime.Parse(inReader["created_date"].ToString());
            result.auditInfo.updatedDate = DateTime.Parse(inReader["last_updated"].ToString());
            result.auditInfo.isDeleted = bool.Parse(inReader["is_deleted"].ToString());
            return result;
        }
    }
}