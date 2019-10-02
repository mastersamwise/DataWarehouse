using System;

namespace GeneralServices
{
    public class BudgetCategory
    {
        public int categoryID { get; set; }
        public string categoryName { get; set; }
        public string categoryDescription { get; set; }
        public DateTime createdDate { get; set; }
        public DateTime lastModifiedDate { get; set; }
        public bool isDeleted { get; set; }

        public BudgetCategory() 
        {

        }

        public BudgetCategory(BudgetCategory inBudgetCategory)
        {
            this.categoryID = inBudgetCategory.categoryID;
            this.categoryName = inBudgetCategory.categoryName;
            this.categoryDescription = inBudgetCategory.categoryDescription;
            this.createdDate = inBudgetCategory.createdDate;
            this.lastModifiedDate = inBudgetCategory.lastModifiedDate;
            this.isDeleted = inBudgetCategory.isDeleted;
        }

        public BudgetCategory(int inCategoryID, string inCategoryName, string inCategoryDescription, DateTime inCreateDate, DateTime inLastModifiedDate, bool inIsDeleted)
        {
            this.categoryID = inCategoryID;
            this.categoryName = inCategoryName;
            this.categoryDescription = inCategoryDescription;
            this.createdDate = inCreateDate;
            this.lastModifiedDate = inLastModifiedDate;
            this.isDeleted = inIsDeleted;
        }
    }
}
