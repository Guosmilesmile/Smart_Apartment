using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using login_and_attend.dao;
using login_and_attend.domian;
using System.Web.Services;
namespace login_and_attend.font
{
    public partial class help_take : System.Web.UI.Page
    {
        public string helpstr = "";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("main.aspx");
            hidid.Value = Session["id"].ToString();
            helptakedao helpdao = new helptakedao();
            List<express> expresslist = new List<express>();
            expresslist = helpdao.selectall();
            foreach(express it in expresslist)
            {
                helpstr += "  <tr><td  style='display:none' >" + it.Id + "</td>" + "<td>" + it.Expres + "</td><td>" + it.Stuname + "</td><td>" + it.Tel + "</td>" + "<td><p>" + it.Content + "</p></td>"
                    + "<td><button id=take_" + it.Id + " type='button' class='btn btn-primary' value=" + "'" + it.Id + "'" + "  onclick='takeclick(this,event)'";
                if(it.Takeflag=="0")
                   helpstr+=">代取</button>  </td> </tr>";
                if(it.Takeflag=="1")
                    helpstr += " disabled='disabled'>代取</button>  </td> </tr>";
            }
            
        }

        protected void btn_sub_ServerClick1(object sender, EventArgs e)
        {
            string Express = Expre.Value;
            string Tel = Telphon.Value;
            string Content = Conten.Value;
            string stuid = hidid.Value;
            if (Express == "" || Tel == "" || Content == "")
            {
                Server.Transfer("help_take.aspx");
            }
            string[] values = { Express, Tel, Content, stuid };
            helptakedao helpdao = new helptakedao();
            helpdao.addrecode(values);
            Server.Transfer("help_take.aspx");
        }
    }
}