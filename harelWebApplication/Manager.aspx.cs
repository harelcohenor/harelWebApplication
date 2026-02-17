using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace harelWebApplication
{
    public partial class Manager : System.Web.UI.Page
    {
        public string st = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string fname = Request.Form["name1"];
                string lname = Request.Form["lastname1"];

                string sqlSelect = "SELECT * FROM tUsers WHERE " +
                 "name1 = N'" + fname + "' AND " +
                 "lastname1 = N'" + lname + "'";

                String sql = "SELECT * FROM tUsers";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                {
                    st = "אין נתונים";
                }
                else
                {
                    st += "<table border='1'>";
                    st += "<tr>";
                    st += "<th>שם פרטי</th>";
                    st += "<th>שם משפחה</th>";
                    st += "<th>מייל</th>";
                    st += "<th>סיסמה</th>";
                    st += "<th>גיל</th>";
                    st += "<th>מגדר</th>";
                    st += "<th>תחביבים</th>";
                    st += "</th>";

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        st += "<tr>";
                        for (int j = 0; j < dt.Columns.Count; j++)
                        {
                            st += "<td>";
                            st += dt.Rows[i][j];
                            st += "</td>";
                        }

                        st += "</tr>";
                    }
                    st += "</table>";
                }
            }
        }
    }
}