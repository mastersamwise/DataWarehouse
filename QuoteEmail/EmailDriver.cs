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

        public static void Main(string[] args)
        {
            email = new QuoteMail(NUMBER_OF_DRAFTS, filename);
            email.ReadRecipientsList();

            email.GenerateDraft();
            Console.WriteLine("Hello World!");
        }
    }
}
