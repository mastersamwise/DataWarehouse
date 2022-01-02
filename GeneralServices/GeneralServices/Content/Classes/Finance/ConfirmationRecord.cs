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

    }
}
