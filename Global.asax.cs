using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Projekt_autobus
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Kod uruchamiany podczas uruchamiania aplikacji
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session["zalogowano"] = 0;
            Session["username"] = "";
            Session["rola"] = 0;
            Session["email"] = "";
            Session["id_user"] = 0;
            Session["aktualny_czas"] = DateTime.Now.ToString("yyyy-MM-dd");
            Session["jutro"] = DateTime.Today.AddDays(1).ToString("yyyy-MM-dd");
            Session["za2dni"] = DateTime.Today.AddDays(2).ToString("yyyy-MM-dd");
            Session["tydzienwstecz"] = DateTime.Today.AddDays(-7).ToString("yyyy-MM-dd");
            Session["dwatygwstecz"] = DateTime.Today.AddDays(-14).ToString("yyyy-MM-dd");
            Session["miesiacwstecz"] = DateTime.Today.AddDays(-31).ToString("yyyy-MM-dd");
            Session.Timeout = 10;
        }
    }
}