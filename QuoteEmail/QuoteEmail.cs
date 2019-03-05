using System;
using System.Collections.Generic;
// https://stackoverflow.com/questions/32260/sending-email-in-net-through-gmail
using System.Net;
using System.Net.Mail;


namespace QuoteEmail
{
    class QuoteMail
    {

        string host = "imap.gmail.com";
        string username = "nikb248@gmail.com";
        string password = "mor4dor8";
        int port = 587;
        int NUMBER_OF_DRAFTS = 7;

        SmtpClient smtp = new SmtpClient();
        MailMessage email = new MailMessage();
        MailAddressCollection toAddresses = new MailAddressCollection();
        MailAddressCollection bccAddresses = new MailAddressCollection();
        List<string> toRecipients = new List<string>();
        List<string> bccRecipients = new List<string>();

        string recipient = String.Empty;



        public void GenerateDrafts(string[] args)
        {
            Console.WriteLine("Generating drafts for Quote of the Day emails");

            smtp.Host = host;
            smtp.Port = port;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(username, password);
            smtp.Timeout = 20000;

            Console.WriteLine("Drafts generated");
        }

        public void ReadRecipientsList()
        {

        }
    }
}
