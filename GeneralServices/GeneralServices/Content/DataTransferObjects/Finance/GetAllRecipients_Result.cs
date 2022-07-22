using System;
using System.Data.SqlClient;
using GeneralServices.Classes;

namespace GeneralServices.Content.DataTransferObjects
{
    public class GetAllRecipients_Result
    {
        public int recipientID { get; set; }
        public string recipient { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public GetAllRecipients_Result()
        {
            recipientID = -1;
            recipient = "";
            comment = "";
            auditInfo = new AuditInfo();
        }

        /// <summary>
        /// Turn the Sql Data into a C# object
        /// </summary>
        /// <param name="inReader"></param>
        /// <returns></returns>
        public GetAllRecipients_Result ReadDataToObject(SqlDataReader inReader)
        {
            GetAllRecipients_Result result = new GetAllRecipients_Result();
            result.recipientID = int.Parse(inReader["recipient_id"].ToString());
            result.recipient = inReader["recipient"].ToString();
            result.comment = inReader["comment"].ToString();
            result.auditInfo.createdDate = DateTime.Parse(inReader["created_date"].ToString());
            result.auditInfo.updatedDate = DateTime.Parse(inReader["last_updated"].ToString());
            result.auditInfo.isDeleted = bool.Parse(inReader["is_deleted"].ToString());
            return result;
        }
    }
}