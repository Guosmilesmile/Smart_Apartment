using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using login_and_attend.dao;
using login_and_attend.domian;

namespace login_and_attend.font
{
    public partial class ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["ID"];
            if (id != null)
            {
                string stuid = Request["stuid"];
                string[] values = { id, stuid };
                myhelpdao helpdao = new myhelpdao();
                bool flag = helpdao.addrecode(values);
            }
        }

        

    }
}