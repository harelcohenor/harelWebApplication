using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace harelWebApplication
{
    public partial class register : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string name = Request.Form["name"];
                string lastname = Request.Form["lastname"];
                string mail = Request.Form["mail"];
                string pass = Request.Form["pass"];
                string radio1 = Request.Form["radio1"];
                string freechat = Request.Form["freechat"];
                string age = Request.Form["age"];

                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE mail = '" + mail + "' ";

                bool userExists = MyAdoHelper.IsExist(sql);
                if (!userExists)
                {

                    string sqlInsert =
                    "INSERT INTO tUsers VALUES (" +
                    "N'" + name + "'," +
                    "N'" + lastname + "'," +
                    "N'" + mail + "'," +
                    "N'" + pass + "'," +
                    age + "," +
                    "N'" + radio1 + "'," +
                    "N'" + freechat + "'" +
                    ")";

                    MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
                    Response.Redirect("login.aspx");
                }
                else
                {
                    st = "המשתמש קיים!";
                }
            }

        }
    }
}