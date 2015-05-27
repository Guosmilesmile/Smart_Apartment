using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_and_attend.font
{
    public partial class main : System.Web.UI.Page
    {
        public string lostr="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                lostr += " <a href='Login_index.aspx' disabled='disabled' id='login' class='btn btn-default col-lg-6'>登录/注册</a>";
                cont.Text = "欢迎你," + Session["id"];
            }
            else
            {
                lostr += " <a href='Login_index.aspx'  id='login' class='btn btn-default col-lg-6'>登录/注册</a>";
            }

        }
        
    }
}