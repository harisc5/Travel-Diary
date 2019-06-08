﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using System.Web.UI;

namespace TravelDiary2
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
  new ScriptResourceDefinition
  {
      Path = "~/scripts/jquery-1.7.2.min.js",
      DebugPath = "~/scripts/jquery-1.7.2.min.js",
      CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.1.min.js",
      CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.1.js"
  });
        }
    }
}
