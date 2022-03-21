using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.Classes
{
    public class ConfirmationRecord
    {
        public int confirmationRecordID { get; set; }
        public DateTime paymentDate { get; set; }
        public DateTime arrivalDate { get; set; }
        public string recipient { get; set; }
        public string category { get; set; }
        public double paymentAmount { get; set; }
        public string confirmationNumber { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        #region Constructors

        /// <summary>
        /// Parameterized Constructor
        /// </summary>
        /// <param name="inConfirmationRecordID">In confirmation record identifier.</param>
        /// <param name="inPaymentDate">In payment date.</param>
        /// <param name="inArrivalDate">In arrival date.</param>
        /// <param name="inRecipient">In recipient.</param>
        /// <param name="inCategory">In category.</param>
        /// <param name="inPaymentAmount">In payment amount.</param>
        /// <param name="inConfirmationNumber">In confirmation number.</param>
        /// <param name="inComment">In comment.</param>
        /// <param name="inAuditInfo">In audit info.</param>
        public ConfirmationRecord(int inConfirmationRecordID, DateTime inPaymentDate, DateTime inArrivalDate, string inRecipient, 
                                    string inCategory, double inPaymentAmount, string inConfirmationNumber, string inComment, AuditInfo inAuditInfo)
        {
            confirmationRecordID = inConfirmationRecordID;
            paymentDate = inPaymentDate;
            arrivalDate = inArrivalDate;
            recipient = inRecipient;
            category = inCategory;
            paymentAmount = inPaymentAmount;
            confirmationNumber = inConfirmationNumber;
            comment = inComment;
            auditInfo = inAuditInfo;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public ConfirmationRecord()
            : this(-1, DateTime.UtcNow, DateTime.UtcNow, String.Empty, String.Empty, 0.0, String.Empty, String.Empty, new AuditInfo())
        {
            // intentionally blank
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inCopy">In copy.</param>
        public ConfirmationRecord(ConfirmationRecord inCopy)
        {
            confirmationRecordID = inCopy.confirmationRecordID;
            paymentDate = inCopy.paymentDate;
            arrivalDate = inCopy.arrivalDate;
            recipient = inCopy.recipient;
            category = inCopy.category;
            paymentAmount = inCopy.paymentAmount;
            confirmationNumber = inCopy.confirmationNumber;
            comment = inCopy.comment;
            auditInfo = new AuditInfo(inCopy.auditInfo);
        }

        #endregion Constructors
    }
}
