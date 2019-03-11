using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Mail;


namespace QuoteEmail
{
    public class QuoteMail
    {
        public string BCC_DELIMITER = "*";
        public string EMAIL_ADDRESS_DELIMITER = ";";

        public string subject = "Quote of the Day";
        public string signature = "\n\n\n" + 
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
        // public string toAddresses = String.Empty;
        // public string ccAddresses = String.Empty;
        // public string bccAddresses = String.Empty;
        public List<string> toRecipients = new List<string>();
        public List<string> ccRecipients = new List<string>();
        public List<string> bccRecipients = new List<string>();

        public QuoteMail()
        { }

        public void connect(string host, int port, string username, string password)
        {
            
            smtp.Host = host;
            smtp.Port = port;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(username, password);
            smtp.Timeout = 20000;
        }

        public void GenerateDrafts(int numberOfDrafts)
        {
            Console.WriteLine("Generating drafts for Quote of the Day emails");
            foreach (string toAddress in toRecipients) { email.To.Add(toAddress); }
            foreach (string ccAddress in ccRecipients) { email.CC.Add(ccAddress); }
            foreach (string bccAddress in bccRecipients) { email.Bcc.Add(bccAddress); }

            for (int i = 0; i < numberOfDrafts; i ++)
            {
                email.Subject = this.subject;
                email.Body = this.signature;
            }

            Console.WriteLine("{0} drafts generated", numberOfDrafts);
            Console.WriteLine("{0} To addresses", toRecipients.Count);
            Console.WriteLine("{0} cc addresses", ccRecipients.Count);
            Console.WriteLine("{0} bcc addresses", bccRecipients.Count);
        }

        public void ReadRecipientsList(string filename)
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
                    //bccAddresses += recipient + EMAIL_ADDRESS_DELIMITER;
                    this.bccRecipients.Add(recipient); // TODO: may be able to remove Lists
                }
                else
                {
                    //toAddresses += recipient + EMAIL_ADDRESS_DELIMITER;
                    this.toRecipients.Add(recipient); // TODO: may be able to remove Lists
                }
            }
        }
    }
}
