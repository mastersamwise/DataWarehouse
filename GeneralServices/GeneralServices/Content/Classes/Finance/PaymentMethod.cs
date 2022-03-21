using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.Classes
{
    public class PaymentMethod
    {
        public int paymentMethodID { get; set; }
        public string paymentMethod { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        #region Constructors

        /// <summary>
        /// Parameterized Constructor
        /// </summary>
        /// <param name="inPaymentMethodID">In payment method identifier.</param>
        /// <param name="inPaymentMethod">In payment method.</param>
        /// <param name="inComment">In comment.</param>
        /// <param name="inAuditInfo">In audit info.</param>
        public PaymentMethod(int inPaymentMethodID, string inPaymentMethod, string inComment, AuditInfo inAuditInfo)
        {
            paymentMethodID = inPaymentMethodID;
            paymentMethod = inPaymentMethod;
            comment = inComment;
            auditInfo = inAuditInfo;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public PaymentMethod()
            : this(-1, String.Empty, String.Empty, new AuditInfo())
        {
            // intentionally blank
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inCopy">In copy.</param>
        public PaymentMethod(PaymentMethod inCopy)
        {
            paymentMethodID = inCopy.paymentMethodID;
            paymentMethod = inCopy.paymentMethod;
            comment = inCopy.comment;
            auditInfo = new AuditInfo(inCopy.auditInfo);
        }

        #endregion Constructors
    }
}
