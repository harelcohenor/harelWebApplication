using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace harelWebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string playerName = Request.Form["playerName"];
                string height = Request.Form["height"];
                string number = Request.Form["number"];
                string description = Request.Form["description"];

                string sqlIns =
                    "INSERT INTO Table (playerName, height, number, description) VALUES (" +
               "N'" + playerName + "'," +
               "N'" + height + "'," +
                number + "," +
                "N'" + description + 
                ")";

                MyAdoHelper.DoQuery("MyDB.mdf", sqlIns);
                st = "!פריט נוסף בהצלחה";
            }
        }
    }
}