using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using GeneralServices.DTOs;
using GeneralServices.ViewModels;

namespace GeneralServices.Classes
{
    public class Person
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
        public Person(int inPersonID, string inFirstName, string inLastName, string inRelation, AuditInfo inAuditInfo)
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
        public Person()
            :this(-1, "", "", "", new AuditInfo())
        {

        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inPerson"></param>
        public Person(Person inPerson)
            :this(inPerson.personID, inPerson.firstName, inPerson.lastName, inPerson.relation, inPerson.auditInfo)
        {

        }

        #endregion Constructors

        #region Methods

        /// <summary>
        /// To DTO method
        /// </summary>
        /// <returns></returns>
        public PersonDTO toDTO()
        {
            PersonDTO dto = new PersonDTO();
            dto.personID = this.personID;
            dto.firstName = this.firstName;
            dto.lastName = this.lastName;
            dto.relation = this.relation;

            return dto;
        }

        /// <summary>
        /// Populate Person from a DTO
        /// </summary>
        /// <param name="inDTO"></param>
        public void fromDTO(PersonDTO inDTO)
        {
            this.personID = inDTO.personID;
            this.firstName = inDTO.firstName;
            this.lastName = inDTO.lastName;
            this.relation = inDTO.relation;
        }

        /// <summary>
        /// To ViewModel method
        /// </summary>
        public PersonVM toViewModel()
        {
            PersonVM vm = new PersonVM();
            vm.personID = this.personID;
            vm.firstName = this.firstName;
            vm.lastName = this.lastName;
            vm.relation = this.relation;

            return vm;
        }

        /// <summary>
        /// Populate Person from a ViewModel
        /// </summary>
        /// <param name="inVM"></param>
        public void fromViewModel(PersonVM inVM)
        {
            this.personID = inVM.personID;
            this.firstName = inVM.firstName;
            this.lastName = inVM.lastName;
            this.relation = inVM.relation;
        }

        #endregion Methods
    }
}
