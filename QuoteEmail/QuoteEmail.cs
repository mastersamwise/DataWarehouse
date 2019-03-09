using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Mail;


namespace QuoteEmail
{
    public class QuoteMail
    {

        public string host = "imap.gmail.com";
        public string username = "nikb248@gmail.com";
        public string password = "mor4dor8";
        public int port = 587;
        public string BCC_DELIMITER = "*";
        public string EMAIL_ADDRESS_DELIMITER = ";";

        public string SUBJECT = "Quote of the Day";
        public string SIGNATURE = "\n\n\n" + 
                                    "--" + 
                                    "\n" +
                                    "Software Engineering 2013" +
                                    "\n" +
                                    "Drexel University" +
                                    "\n" +
                                    "EK 1473" +
                                    "\n" +
                                    "(717) 330 - 3264";


        public SmtpClient smtp = new SmtpClient();
        public MailMessage email = new MailMessage();
        public MailAddressCollection toAddressesCollection = new MailAddressCollection();
        public string toAddresses = String.Empty;
        public string ccAddresses = String.Empty;
        public string bccAddresses = String.Empty;
        public List<string> toRecipients = new List<string>();
        public List<string> ccRecipients = new List<string>();
        public List<string> bccRecipients = new List<string>();
        public int numberOfDrafts = 0;
        public string filename = "";

        public QuoteMail()
        {
            this.numberOfDrafts = 7;
            this.filename = "../../../emails.txt";
        }

        public QuoteMail(int numberOfDrafts, string filename)
        {
            this.numberOfDrafts = numberOfDrafts;
            this.filename = filename;
        }


        public void connect()
        {
            smtp.Host = host;
            smtp.Port = port;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(username, password);
            smtp.Timeout = 20000;
        }

        public void GenerateDraft()
        {
            Console.WriteLine("Generating drafts for Quote of the Day emails");
            // email.To.Add(toAddressesCollection);
            // email.Bcc.Add(this.bccAddresses);

            Console.WriteLine("{0} drafts generated", numberOfDrafts);
            Console.WriteLine("{0} To addresses", toRecipients.Count);
            Console.WriteLine("{0} cc addresses", ccRecipients.Count);
            Console.WriteLine("{0} bcc addresses", bccRecipients.Count);
        }

        public void ReadRecipientsList()
        {
            Console.WriteLine("Entered ReadRecipientsList()");
            string[] lines = File.ReadAllLines(filename);
            Console.WriteLine("ReadAllLines()");
            string recipient = String.Empty;

            for( int i = 0; i < lines.Length; i ++ )
            {
                Console.WriteLine("Line {0}: {1}", i, lines[i]);
                recipient = lines[i];

                if (recipient.Contains(BCC_DELIMITER))
                {
                    recipient = recipient.Substring(0, recipient.Length - 1);
                    this.bccRecipients.Add(recipient);
                }
                else
                {
                    this.toRecipients.Add(recipient);
                }
            }
        }
    }
}
