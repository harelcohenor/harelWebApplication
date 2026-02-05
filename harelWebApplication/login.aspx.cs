using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace harelWebApplication
{
    public partial class login : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {

                string mail = Request.Form["mail"];
                string pass = Request.Form["pass"];
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE email = '" + mail + "' " +
                    "AND password = '" + pass + "'";
                bool userExists = MyAdoHelper.IsExist(sql);
                if (!userExists)
                {
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    Response.Redirect("homepage2.aspx");
                }
            }

        }
    }
}