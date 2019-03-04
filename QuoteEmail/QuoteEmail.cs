using System;
using System.Collections.Generic;
// https://stackoverflow.com/questions/32260/sending-email-in-net-through-gmail
using System.Net;
using System.Net.Mail;


// https://developers.google.com/gmail/api/v1/reference/users/drafts/create 
using Google.Apis.Gmail.v1;
using Google.Apis.Gmail.v1.Data;


namespace QuoteEmail
{
    class QuoteMail
    {

        string host = "imap.gmail.com";
        string username = "nikb248@gmail.com";
        string password = "mor4dor8";
        int port = 587;
        int NUMBER_OF_DRAFTS = 7;

        MailMessage email = new MailMessage();
        MailAddressCollection toAddresses = new MailAddressCollection();
        MailAddressCollection bccAddresses = new MailAddressCollection();
        List<string> toRecipients = new List<string>();
        List<string> bccRecipients = new List<string>();

        string recipient = String.Empty;



        public void GenerateDrafts(string[] args)
        {
            Console.WriteLine("Generating drafts for Quote of the Day emails");

            SmtpClient stmp = new SmtpClient();
            stmp.Host = host;
            stmp.Port = port;
            stmp.EnableSsl = true;
            stmp.DeliveryMethod = SmtpDeliveryMethod.Network;
            stmp.Credentials = new NetworkCredential(username, password);
            stmp.Timeout = 20000;

            Console.WriteLine("Drafts generated");
        }

        public void readRecipientsList()
        {

        }
    }
}
