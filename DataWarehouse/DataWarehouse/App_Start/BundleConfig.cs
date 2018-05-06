using System.Web;
using System.Web.Optimization;

namespace DataWarehouse
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Client/test/Content").Include(
                      "~/bootstrap.css",
                      "~/site.css"));

            bundles.Add(new StyleBundle("~/Clients/Scripts").Include(
                      "~/angular.min.js",
                      "~/angular.js",
                      "~/angular-ui-date.js",
                      "~/angular-ui-router.min.js"));

            bundles.Add(new StyleBundle("~/Client/app").Include(
                      "~/app.js"));

            bundles.Add(new StyleBundle("~/Client/Controller").Include(
                      "~/ConcertController.js",
                      "~/LXAController.js"));

            bundles.Add(new StyleBundle("~/Components").Include(
                      "~/officerPosition.js",
                      "~/userInformation.js"));
        }
    }
}
