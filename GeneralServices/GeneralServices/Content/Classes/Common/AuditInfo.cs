using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GeneralServices.Classes
{
    /// <summary>
    /// Class containing the columns included on all tables
    /// </summary>
    public class AuditInfo
    {
        public DateTime createdDate { get; set; }
        public DateTime updatedDate { get; set; }
        public bool isDeleted { get; set; }

        /// <summary>
        /// Instantialed Constructor
        /// </summary>
        /// <param name="inCreatedDate"></param>
        /// <param name="inUpdatedDate"></param>
        /// <param name="inIsDeleted"></param>
        public AuditInfo(DateTime inCreatedDate, DateTime inUpdatedDate, bool inIsDeleted)
        {
            createdDate = inCreatedDate;
            updatedDate = inUpdatedDate;
            isDeleted = inIsDeleted;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public AuditInfo()
            :this(DateTime.UtcNow, DateTime.UtcNow, false)
        {
            // intentionally left blank
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inAuditInfo"></param>
        public AuditInfo(AuditInfo inAuditInfo)
            :this(inAuditInfo.createdDate, inAuditInfo.updatedDate, inAuditInfo.isDeleted)
        {
            // intentionally left blank
        }
    }
}
