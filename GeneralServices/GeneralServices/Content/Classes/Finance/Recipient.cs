namespace GeneralServices.Content.Classes.Finance
{
    public class Recipient
    {
        public int recipientID { get; set; }
        public string recipient { get; set; }
        public string comment { get; set; }
        public AuditInfo auditInfo { get; set; }

        #region Constructors

        /// <summary>
        /// Parameterized Constructor
        /// </summary>
        /// <param name="inRecipientID"></param>
        /// <param name="inRecipient"></param>
        /// <param name="inComment"></param>
        /// <param name="inAuditInfo"></param>
        public Recipient(int inRecipientID, string inRecipient, string inComment, AuditInfo inAuditInfo)
        {
            recipientID = inRecipientID;
            recipient = inRecipient;
            comment = inComment;
            auditInfo = new AuditInfo(inAuditInfo);
        }

        /// <summary>
        /// Default Constructor
        /// </summary>
        public Recipient()
            :this (-1, String.Empty, String.Empty, new AuditInfo())
        {
            // intentionally blank
        }

        /// <summary>
        /// Copy Constructor
        /// </summary>
        /// <param name="inCopy"></param>
        public Recipient(Recipient inCopy)
        {
            recipientID = inCopy.recipientID;
            recipient = inCopy.recipient;
            comment = inCopy.comment;
            auditInfo = new AuditInfo(inCopy.auditInfo);
        }

        #endregion Constructors
    }
}