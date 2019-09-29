using Google.Apis.Auth.OAuth2;
using Google.Apis.Calendar.v3;
using Google.Apis.Calendar.v3.Data;
using Google.Apis.Services;
using Google.Apis.Util.Store;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CalendarQuickstart
{
    public class Program
    {
        // If modifying these scopes, delete your previously saved credentials
        // at ~/.credentials/calendar-dotnet-quickstart.json
        static string[] Scopes = { CalendarService.Scope.CalendarReadonly };
        static string ApplicationName = "Google Calendar API .NET Quickstart";

        static void Main(string[] args)
        {
            UserCredential credential;

            using (var stream = new FileStream("credentials.json", FileMode.Open, FileAccess.Read))
            {
                // The file token.json stores the user's access and refresh tokens, and is created
                // automatically when the authorization flow completes for the first time.
                string credPath = "token.json";
                credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
                    GoogleClientSecrets.Load(stream).Secrets,
                    Scopes,
                    "user",
                    CancellationToken.None,
                    new FileDataStore(credPath, true)).Result;
                Console.WriteLine("Credential file saved to: " + credPath);
            }

            // Create Google Calendar API service.
            var service = new CalendarService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = ApplicationName,
            });

            // Define parameters of request.
            string nikprimaryCalendarKey = "primary";
            string pokemonGoCalendarKey = "nlrq494bf4oqmr9hoemib9g4ho@group.calendar.google.com";
            string whitneyCalendarKey = "5db4a2ppudspvlgicae3cmigrk@group.calendar.google.com";
            string billsCalendarKey = "g386rnld8s48mc390j4pg6b12s@group.calendar.google.com";

            EventsResource.ListRequest nikCalendarRequest = service.Events.List(nikprimaryCalendarKey);
            nikCalendarRequest.TimeMin = DateTime.Now;
            nikCalendarRequest.ShowDeleted = false;
            nikCalendarRequest.SingleEvents = true;
            nikCalendarRequest.MaxResults = 10;
            nikCalendarRequest.OrderBy = EventsResource.ListRequest.OrderByEnum.StartTime;

            EventsResource.ListRequest pokemonGoCalendarRequest = service.Events.List(pokemonGoCalendarKey);
            pokemonGoCalendarRequest.TimeMin = DateTime.Now;
            pokemonGoCalendarRequest.ShowDeleted = false;
            pokemonGoCalendarRequest.SingleEvents = true;
            pokemonGoCalendarRequest.MaxResults = 10;
            pokemonGoCalendarRequest.OrderBy = EventsResource.ListRequest.OrderByEnum.StartTime;

            EventsResource.ListRequest whitneyCalendarRequest = service.Events.List(whitneyCalendarKey);
            whitneyCalendarRequest.TimeMin = DateTime.Now;
            whitneyCalendarRequest.ShowDeleted = false;
            whitneyCalendarRequest.SingleEvents = true;
            whitneyCalendarRequest.MaxResults = 10;
            whitneyCalendarRequest.OrderBy = EventsResource.ListRequest.OrderByEnum.StartTime;

            EventsResource.ListRequest billsCalendarRequest = service.Events.List(billsCalendarKey);
            billsCalendarRequest.TimeMin = DateTime.Now;
            billsCalendarRequest.ShowDeleted = false;
            billsCalendarRequest.SingleEvents = true;
            billsCalendarRequest.MaxResults = 10;
            billsCalendarRequest.OrderBy = EventsResource.ListRequest.OrderByEnum.StartTime;

            // List events.
            Events nikEvents = nikCalendarRequest.Execute();
            Events pokemonGoEvents = pokemonGoCalendarRequest.Execute();
            Events whitneyEvents = whitneyCalendarRequest.Execute();
            Events billsEvents = billsCalendarRequest.Execute();

            //List<Events> calendarEvents = new List<Events>{nikEvents, pokemonGoEvents, whitneyEvents, billsEvents};
            List<Event> calendarEvents = new List<Event>();
            foreach(Event eventItem in nikEvents.Items)
            {
                calendarEvents.Add(eventItem);
            }
            foreach (Event eventItem in pokemonGoEvents.Items)
            {
                calendarEvents.Add(eventItem);
            }
            foreach (Event eventItem in whitneyEvents.Items)
            {
                calendarEvents.Add(eventItem);
            }
            foreach (Event eventItem in billsEvents.Items)
            {
                calendarEvents.Add(eventItem);
            }

            Console.WriteLine("Upcoming events:");

            //if (nikEvents.Items != null && nikEvents.Items.Count > 0)
            //{
            //    Console.WriteLine("Number of Upcoming Events: {0}", nikEvents.Items.Count);
            //    foreach (var eventItem in nikEvents.Items)
            //    {
            //        string startTime = eventItem.Start.DateTime.ToString();
            //        string endTime = eventItem.End.DateTime.ToString();

            //        if (String.IsNullOrEmpty(startTime))
            //        {
            //            startTime = eventItem.Start.Date;
                        
            //        }
            //        Console.WriteLine("{0} ({1})", eventItem.Summary, startTime);
            //    }
            //    Console.WriteLine("Finished listing upcoming events.");
            //}

            if (calendarEvents != null && calendarEvents.Count > 0)
            {
                Console.WriteLine("Number of Upcoming Events: {0}", calendarEvents.Count);
                foreach (var eventItem in calendarEvents)
                {
                    string startTime = eventItem.Start.DateTime.ToString();
                    string endTime = eventItem.End.DateTime.ToString();

                    if (String.IsNullOrEmpty(startTime))
                    {
                        startTime = eventItem.Start.Date;

                    }
                    Console.WriteLine("[{0}] - {1}", startTime, eventItem.Summary);
                }
                Console.WriteLine("Finished listing upcoming events.");

            }
            else
            {
                Console.WriteLine("No upcoming events found.");
            }
            Console.Read();

        }
    }
}