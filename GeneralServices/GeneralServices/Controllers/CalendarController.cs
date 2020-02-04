using Google.Apis.Auth.OAuth2;
using Google.Apis.Calendar.v3;
using Google.Apis.Calendar.v3.Data;
using Google.Apis.Services;
using Google.Apis.Util.Store;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace GeneralServices
{
    [ApiController]
    [Route("[controller]")]
    public class CalendarController : ControllerBase
    {
        // If modifying these scopes, delete your previously saved credentials
        // at ~/.credentials/calendar-dotnet-quickstart.json
        public static string[] Scopes = { CalendarService.Scope.CalendarReadonly };
        public static string ApplicationName = "Google Calendar API .NET Quickstart";
        public CalendarService service = new CalendarService();

        [HttpGet]
        [Route("GetUpcomingEvents")]
        public ActionResult<string> GetUpcomingEvents()
        {
            UserCredential credential;
            string result = "empty";

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
            service = new CalendarService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = ApplicationName,
            });

            string primaryCalendarEvents = GetEvents("primary", new DateTime(2020, 01, 30));
            string billCalendarEvents = null; //GetEvents("bills", new DateTime(2020, 01, 30));
            string goCalendarEvents = null; //GetEvents("go", new DateTime(2020, 01, 30));

            if (!String.IsNullOrEmpty(primaryCalendarEvents))
            {
                result = primaryCalendarEvents + "\n\n";
            }
            if (!String.IsNullOrEmpty(billCalendarEvents))
            {
                result += billCalendarEvents + "\n\n";
            }
            if (!String.IsNullOrEmpty(goCalendarEvents))
            {
                result += goCalendarEvents + "\n\n";
            }

            return result;
        }

        /// <summary>
        /// Get a list of events, provided a latest start date and the calendar name
        /// </summary>
        /// <returns>The events.</returns>
        /// <param name="inCalendarName">calendar name</param>
        /// <param name="inLatestStartDate">date to stop fetching items</param>
        public string GetEvents(string inCalendarName, DateTime inLatestStartDate, int inMaxResults = 250)
        {
            string result = "null";

            // Define parameters of request.
            EventsResource.ListRequest request = service.Events.List(inCalendarName);
            request.TimeMin = DateTime.Now;
            request.ShowDeleted = false;
            request.SingleEvents = true;
            request.MaxResults = inMaxResults;
            request.TimeMax = inLatestStartDate;
            request.OrderBy = EventsResource.ListRequest.OrderByEnum.StartTime;

            // List events.
            Events eventsToReturn = request.Execute();
            //Console.WriteLine("Upcoming events:");
            if (eventsToReturn.Items != null && eventsToReturn.Items.Count > 0)
            {
                result = "Upcoming events: ";
                //Console.WriteLine("Number of Upcoming Events: {0}", events.Items.Count);
                result += String.Format("\n Number of Upcoming Events: {0}", eventsToReturn.Items.Count);
                foreach (var eventItem in eventsToReturn.Items)
                {
                    string when = eventItem.Start.DateTime.ToString();
                    if (String.IsNullOrEmpty(when))
                    {
                        when = eventItem.Start.Date;
                    }
                    //Console.WriteLine("{0} ({1})", eventItem.Summary, when);
                    result += String.Format("\n {0} ({1})", eventItem.Summary, when);
                }
            }
            else
            {
                //Console.WriteLine("No upcoming events found.");
                result = String.Format("No upcoming events found for calendar: {0}.", inCalendarName);
            }
            //Console.Read();

            return result;
        }
    }
}