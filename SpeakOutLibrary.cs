using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CrudLibrary
/// </summary>
namespace Speakoutsign
{
    public class SpeakOutLibrary
    {
        public static string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SpeakOutConnectionString"].ConnectionString;

        public SpeakOutLibrary()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}