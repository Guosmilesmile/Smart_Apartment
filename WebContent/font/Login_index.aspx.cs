using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using login_and_attend.dao;
namespace login_and_attend.font
{
    public partial class Login_index : System.Web.UI.Page
    {
        public string str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender,EventArgs e)
        {
            string id = stuid.Value;
            string pw = passwd.Value;
            string[] values = { id, pw };
            userdao user = new userdao();
            bool result = user.findbyidandpass(values);
            if (result)
            {
                Session.Add("id", id);
                Server.Transfer("main.aspx");
            }
            else
                Server.Transfer("login_error.aspx");
        }
    }
}