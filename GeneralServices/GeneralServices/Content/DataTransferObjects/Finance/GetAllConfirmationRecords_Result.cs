using System;
using System.Data.SqlClient;
using GeneralServices.Classes;

namespace GeneralServices.Content.DTOs.Finance
{
    public class GetAllConfirmationNumbers_Result
    {
        // column names
        public const string CONFIRMAION_RECORD_ID = "confirmation_record_id";
        public const string PAYMENT_DATE = "payment_date";
        public const string ARRIVAL_DATE = "arrival_date";
        public const string RECIPIENT = "recipient";
        public const string CATEGORY = "category";
        public const string PAYMENT_METHOD = "payment_method";
        public const string PAYMENT_AMOUNT = "payment_amount";
        public const string CONFIRMATION_NUMBER = "confirmation_number";
        public const string COMMENT = "comment";
        public const string CREATED_DATE = "created_date";
        public const string LAST_UPDATED = "last_updated";
        public const string IS_DELETED = "is_deleted";

        // Properties
        public int confirmationRecordID { get; set; }
        public DateTime paymentDate { get; set; }
        public DateTime arrivalDate { get; set; }
        public string recipient { get; set; }
        public string category { get; set; }
        public string paymentMethod { get; set; }
        public double paymentAmount { get; set; }
        public string confirmationNumber { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public GetAllConfirmationNumbers_Result()
        {
            confirmationRecordID = -1;
            paymentDate = new DateTime();
            arrivalDate = new DateTime();
            recipient = "";
            category = "";
            paymentMethod = "";
            paymentAmount = 0.0;
            confirmationNumber = "";
            comment = "";
            auditInfo = new AuditInfo();
        }

        /// <summary>
        /// Turn the Sql Data into the C# Object
        /// </summary>
        /// <param name="inReader"></param>
        public GetAllConfirmationNumbers_Result ReadDataToObject(SqlDataReader inReader)
        {
            GetAllConfirmationNumbers_Result result = new GetAllConfirmationNumbers_Result();
            result.confirmationRecordID = int.Parse(inReader[CONFIRMAION_RECORD_ID].ToString());
            result.paymentDate = DateTime.Parse(inReader[PAYMENT_DATE].ToString());
            result.arrivalDate = DateTime.Parse(inReader[ARRIVAL_DATE].ToString());
            result.recipient = inReader[RECIPIENT].ToString();
            result.category = inReader[category].ToString();
            result.paymentMethod = inReader[PAYMENT_METHOD].ToString();
            result.paymentAmount = double.Parse(inReader[PAYMENT_AMOUNT].ToString());
            result.confirmationNumber = inReader[CONFIRMATION_NUMBER].ToString();
            result.comment = inReader[COMMENT].ToString();
            result.auditInfo.createdDate = DateTime.Parse(inReader[CREATED_DATE].ToString());
            result.auditInfo.updatedDate = DateTime.Parse(inReader[LAST_UPDATED].ToString());
            result.auditInfo.isDeleted = bool.Parse(inReader[IS_DELETED].ToString());

            return result;
        }
        
    }  

}