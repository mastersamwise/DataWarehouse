using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
// https://stackoverflow.com/questions/32260/sending-email-in-net-through-gmail

// using Google.Apis.Discovery;
// using Google.Apis.Gmail.v1;
// using Google.Apis.Gmail.v1.Data;

namespace QuoteEmail
{
    class EmailDriver
    {

        public string host = "imap.gmail.com";
        public string username = "nikb248@gmail.com";
        public string password = "mor4dor8";
        public int port = 587;
        public int NUMBER_OF_DRAFTS = 7;

        public string subject = "Quote of the Day";
        public string signature = "\n\n\n" + 
                                    "--" + 
                                    "\n" +
                                    "Software Engineering 2013" +
                                    "\n" +
                                    "Lambda Chi Alpha - EK 1473" +
                                    "\n" +
                                    "Drexel University" +
                                    "\n" +
                                    "(717) 330 - 3264";

        public SmtpClient smtp = new SmtpClient();
        public MailMessage email = new MailMessage();
        public MailAddressCollection toAddresses = new MailAddressCollection();
        public string bccAddresses = String.Empty;
        public List<string> toRecipients = new List<string>();
        public List<string> bccRecipients = new List<string>();


        public static void Main(string[] args)
        {
            EmailDriver driver = new EmailDriver();
            driver.ReadRecipientsList();
            driver.GenerateDrafts();
            Console.WriteLine("Hello World!");
        }

        public void GenerateDrafts()
        {
            Console.WriteLine("Generating drafts for Quote of the Day emails");

            email.Bcc.Add(bccAddresses);

            Console.WriteLine("{0} drafts generated", NUMBER_OF_DRAFTS);
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

        public void ReadRecipientsList()
        {
            

            for( int i = 0; i < bccRecipients.Count; i ++ )
            {
                bccAddresses += bccRecipients + ";";
            }
        }
    }
}
