using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace QuoteEmail
{
    class EmailDriver
    {

        public static QuoteMail email;
        public static int NUMBER_OF_DRAFTS = 7;
        public static string filename = "../../../emails.txt";
        public static string host = "imap.gmail.com";
        public static string username = "nikb248@gmail.com";
        public static string password = "mor4dor8";
        public static int port = 587;

        public static void Main(string[] args)
        {
            email = new QuoteMail();
            email.connect(host, port, username, password);
            email.ReadRecipientsList(filename);

            email.GenerateDrafts(NUMBER_OF_DRAFTS);
            Console.WriteLine("Hello World!");
        }
    }
}
