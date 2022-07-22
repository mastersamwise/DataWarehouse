using System;
using System.Data.SqlClient;

namespace GeneralServices.Classes
{
    public class Category
    {
        public int categoryID { get; set; }
        public string category { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        #region Constructors

        /// <summary>
        /// Parameterized Constructor
        /// </summary>
        /// <param name="inCategoryID"></param>
        /// <param name="inCategory"></param>
        /// <param name="inComment"></param>
        /// <param name="inAuditInfo"></param>
        public Category(int inCategoryID, string inCategory, string inComment, AuditInfo inAuditInfo)
        {
            categoryID = inCategoryID;
            category = inCategory;
            comment = inComment;
            auditInfo = new AuditInfo(inAuditInfo);
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public Category()
            :this(-1, String.Empty, String.Empty, new AuditInfo())
        {
            // intentionally blank
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inCopy"></param>
        public Category(Category inCopy)
        {
            categoryID = inCopy.categoryID;
            category = inCopy.category;
            comment = inCopy.comment;
            auditInfo = new AuditInfo(inCopy.auditInfo);
        }

        #endregion Constructors
    }
}