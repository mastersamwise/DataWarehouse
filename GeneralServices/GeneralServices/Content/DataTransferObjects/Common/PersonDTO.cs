using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.Classes;

namespace GeneralServices.DTOs
{
    public class PersonDTO
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
        /// <param name="inLastname"></param>
        /// <param name="inRelation"></param>
        /// <param name="inAuditInfo"></param>
        public PersonDTO(int inPersonID, string inFirstName, string inLastname, string inRelation, AuditInfo inAuditInfo)
        {
            personID = inPersonID;
            firstName = inFirstName;
            lastName = inLastname;
            relation = inRelation;
            auditInfo = inAuditInfo;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public PersonDTO()
            :this(-1, "", "", "", new AuditInfo())
        {

        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inPersonDTO"></param>
        public PersonDTO(PersonDTO inPersonDTO)
            :this(inPersonDTO.personID, inPersonDTO.firstName, inPersonDTO.lastName, inPersonDTO.relation, inPersonDTO.auditInfo)
        {

        }

        #endregion Constructors

        #region Methods

        

        #endregion Methods
    }
}
