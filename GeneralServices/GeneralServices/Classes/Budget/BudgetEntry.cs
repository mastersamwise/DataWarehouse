using System;

namespace GeneralServices
{
    public class BudgetEntry
    {
        public int entryID { get; set; }
        public string entryName { get; set; }
        public double entryAmount { get; set; }
        public string entryDescription { get; set; }
        public string entryConfirmationNumber { get; set; }
        public DateTime entryDate { get; set; }
        public DateTime createdDate { get; set; }
        public DateTime lastModifiedDate { get; set; }
        public bool isDeleted { get; set; }
    }
}
