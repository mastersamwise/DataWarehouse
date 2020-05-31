using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.Classes;

namespace GeneralServices.DTO
{
    public class PersonDTO
    {
        public int personID { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string relation { get; set; }
        public DateTime dateCreated { get; }
        public DateTime dateUpdated { get; set; }
        public bool isDeleted { get; set; }

        #region Constructors

        /// <summary>
        /// Initialized Constructor
        /// </summary>
        /// <param name="inPersonID"></param>
        /// <param name="inFirstName"></param>
        /// <param name="inLastname"></param>
        /// <param name="inRelation"></param>
        public PersonDTO(int inPersonID, string inFirstName, string inLastname, string inRelation, DateTime inDateCreated, DateTime inDateUpdated, bool inIsDeleted = false)
        {
            personID = inPersonID;
            firstName = inFirstName;
            lastName = inLastname;
            relation = inRelation;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public PersonDTO()
            :this(-1, "", "", "", DateTime.UtcNow, DateTime.UtcNow)
        {

        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inPersonDTO"></param>
        public PersonDTO(PersonDTO inPersonDTO)
            :this(inPersonDTO.personID, inPersonDTO.firstName, inPersonDTO.lastName, inPersonDTO.relation, inPersonDTO.dateCreated, inPersonDTO.dateUpdated, inPersonDTO.isDeleted)
        {

        }

        #endregion Constructors

        #region Methods

        

        #endregion Methods
    }
}
