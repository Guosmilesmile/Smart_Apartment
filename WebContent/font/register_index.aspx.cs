using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using login_and_attend.domian;
using login_and_attend.dao;
namespace login_and_attend.font
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regist_ServerClick(object sender, EventArgs e)
        {
            string stunum = Stunum.Value;
            string stuname = Stuname.Value;
            string stupass = Stupass.Value;
            string stupasses = Stupasses.Value;
            string sturoom = Sturoom.Value;
            if (stupass != stupasses || stunum=="" || stuname==""|| stupass==""||sturoom==""||stupasses=="")
                Response.Redirect("landingError.aspx");
            string[] value = {stunum,stuname,stupass,stupasses,sturoom };
            userdao Userdao = new userdao();
            bool flag = Userdao.register(value);
            if (flag)
            {
                Session.Add("id", stunum);
                Server.Transfer("main.aspx");
            }
            else
            {
                Server.Transfer("landingError.aspx");
            }
        }
    }
}