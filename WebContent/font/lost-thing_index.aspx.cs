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
    public partial class lost_thing_index : System.Web.UI.Page
    {
        public string Strlost="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("main.aspx");
            lostingdao losedao = new lostingdao();
            List<losting> lostlist = new List<losting>();
            lostlist = losedao.selectall();
            foreach(losting it in lostlist)
            {
                Strlost += "<tr><td class='text'>" + it.Thingname + "</td><td class='text'>" + it.Thingplace + "</td><td class='text'>" + it.Thingchac + "</td><td class='text'>" + it.Flag + "</td>";
                Strlost += "</tr>";
            }
        }





    }
}