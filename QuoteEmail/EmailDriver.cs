using System;
using System.Net;
using System.Net.Mail;
// https://stackoverflow.com/questions/32260/sending-email-in-net-through-gmail

namespace QuoteEmail
{
    class EmailDriver
    {

        static string host = "imap.gmail.com";
        static string username = "nikb248@gmail.com";
        static string password = "mor4dor8";
        static int NUMBER_OF_DRAFTS = 7;


        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}
