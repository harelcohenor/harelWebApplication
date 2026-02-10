using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace harelWebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {

                string mail = Request.Form["mail"];
                string pass = Request.Form["pass"];

                //התחברות מנהל 
                if (mail == "harelcohenor@gmail.com" && pass == "harel2009")
                {
                    Response.Redirect("Manager.aspx");
                }
                else
                {
                    //בדיקת משתמש רגיל
                    string sql =
                        "SELECT * FROM tUsers " +
                        "WHERE mail = '" + mail + "' " +
                        "AND pass = '" + pass + "'";

                    bool userExists = harelWebApplication.MyAdoHelper.IsExist(sql);
                    if (!userExists)
                    {
                        st = "אימייל או סיסמה שגויים";
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
            }

        }
    }
}