using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.Classes
{
    public class FinanceService
    {
        public int serviceID { get; set; }
        public string serviceName { get; set; }
        public string serviceDescription { get; set; }
        public bool isRecurringPayment { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public string dueDate { get; set; }
        public PaymentMethod paymentMethod { get; set; }
        public AuditInfo auditInfo { get; set; }

        #region Constructors

        /// <summary>
        /// Parameterized Constructor
        /// </summary>
        /// <param name="inServiceID">In service identifier.</param>
        /// <param name="inServiceName">In service name.</param>
        /// <param name="inServiceDescription">In service description.</param>
        /// <param name="inIsRecurringPayment">If set to <c>true</c> in is recurring payment.</param>
        /// <param name="inStartDate">In start date.</param>
        /// <param name="inEndDate">In end date.</param>
        /// <param name="inDueDate">In due date.</param>
        /// <param name="inPaymentMethod">In payment method.</param>
        /// <param name="inAuditInfo">In audit info.</param>
        public FinanceService(int inServiceID, string inServiceName, string inServiceDescription, bool inIsRecurringPayment, DateTime inStartDate,
                                DateTime inEndDate, string inDueDate, PaymentMethod inPaymentMethod, AuditInfo inAuditInfo)
        {
            serviceID = inServiceID;
            serviceName = inServiceName;
            serviceDescription = inServiceDescription;
            isRecurringPayment = inIsRecurringPayment;
            startDate = inStartDate;
            endDate = inEndDate;
            dueDate = inDueDate;
            paymentMethod = new PaymentMethod(inPaymentMethod);
            auditInfo = new AuditInfo(inAuditInfo);
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public FinanceService()
            : this (-1, String.Empty, String.Empty, false, DateTime.UtcNow, DateTime.UtcNow, String.Empty, new PaymentMethod(), new AuditInfo())
        {
            // intentionally blank
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inCopy">In copy.</param>
        public FinanceService(FinanceService inCopy)
        {
            serviceID = inCopy.serviceID;
            serviceName = inCopy.serviceName;
            serviceDescription = inCopy.serviceDescription;
            isRecurringPayment = inCopy.isRecurringPayment;
            startDate = inCopy.startDate;
            endDate = inCopy.endDate;
            dueDate = inCopy.dueDate;
            paymentMethod = new PaymentMethod(inCopy.paymentMethod);
            auditInfo = new AuditInfo(inCopy.auditInfo);
        }

        #endregion Constructors
    }
}
