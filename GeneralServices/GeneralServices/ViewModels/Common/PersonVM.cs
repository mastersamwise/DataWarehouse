using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.Classes;

namespace GeneralServices.ViewModels
{
    public class PersonVM
    {
        public int personID { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string relation { get; set; }
        public AuditInfo auditInfo { get; set; }

        #region Constructors

        /// <summary>
        /// Initialized Constructor
        /// </summary>
        /// <param name="inPersonID"></param>
        /// <param name="inFirstName"></param>
        /// <param name="inLastName"></param>
        /// <param name="inRelation"></param>
        /// <param name="inAuditInfo"></param>
        public PersonVM(int inPersonID, string inFirstName, string inLastName, string inRelation, AuditInfo inAuditInfo)
        {
            personID = inPersonID;
            firstName = inFirstName;
            lastName = inLastName;
            relation = inRelation;
            auditInfo = inAuditInfo;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public PersonVM()
            :this(-1, "", "", "", new AuditInfo())
        {

        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inVM"></param>
        public PersonVM(PersonVM inVM)
            : this(inVM.personID, inVM.firstName, inVM.lastName, inVM.relation, inVM.auditInfo)
        {

        }

        #endregion Constructors

        #region Methods

        

        #endregion Methods
    }
}
