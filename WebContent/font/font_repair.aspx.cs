using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using login_and_attend.dao;
using login_and_attend.domian;
using System.Text;
namespace login_and_attend.font
{
    public partial class repair : System.Web.UI.Page
    {
        public string str = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("main.aspx");
            repairdao Repadao = new repairdao();
            List<login_and_attend.domian.repair> replist = new List<login_and_attend.domian.repair>();
            replist = Repadao.SelectAll();
            foreach (login_and_attend.domian.repair it in replist)
            {
                str += " <tr><td>" + it.Sturoom + "</td><td>" + it.Content + "</td><td>"+it.Flag+"</td><td><button type='button' class='btn btn-primary'>未评价</button></td>"
                            + "<td><button type='button' class='btn btn-primary'>查看</button></td>"
                           + "</tr>";
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            string sturoom = Sturoom.Value;
            string stutel = Stutel.Value;
            string stucont = Stucontent.Value;
            if(sturoom==""||stutel==""||stucont=="")
                Response.Redirect("http://www.4399.com");
            string[] values = {sturoom,stutel,stucont };
            repairdao Repairdao = new repairdao();
            bool flag= Repairdao.addrecode(values);
            if (flag)
            {
                Server.Transfer("~/font/font_repair.aspx");
            }
            else
            {
                Server.Transfer("~/font/font_repair.aspx");
            }
        }
    }
}