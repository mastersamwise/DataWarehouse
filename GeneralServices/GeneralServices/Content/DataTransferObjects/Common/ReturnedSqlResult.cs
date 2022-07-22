namespace GeneralServices.Content.DataTransferObjects.Common
{
    /// <summary>
    /// Generic object that can hold results of Update + Delete sql queries
    /// </summary>
    public class ReturnedSqlResult
    {
        public int ID { get; set; }
        public bool success { get; set; }

        #region Constructors

        /// <summary>
        /// Parameterized Constructor
        /// </summary>
        /// <param name="inID">ID of the object returned</param>
        public ReturnedSqlResult(int inID, bool inSuccess)
        {
            ID = inID;
            success = inSuccess;
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public ReturnedSqlResult()
            :this (-1, false)
        {
            // intentionally blank
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inCopy"></param>
        public ReturnedSqlResult(ReturnedSqlResult inCopy)
        {
            ID = inCopy.ID;
            success = inCopy.success;
        }

        #endregion Constructors
    }
}