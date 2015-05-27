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
    public partial class message_board : System.Web.UI.Page
    {
        public string messtr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("main.aspx");
            Hidden1.Value = Session["id"].ToString();
            contentdao contdao = new contentdao();
            List<publicinfor> publist = new List<publicinfor>();
            publist = contdao.selectall();
            foreach(var it in publist)
            {
                messtr +="<ul><li id='lione'>" +it.Title+"</li><li class='type'>"+it.Content+"</li><li>"+it.Stuid+"</li></ul><hr>";
            }
        }
        

        protected void messsub_ServerClick(object sender, EventArgs e)
        {
            string stuid = Hidden1.Value;
            string title = messtitle.Value;
            string content = messcntent.Value;
            if (title == "")
            {
                Server.Transfer("message-board_index.aspx");
            }
            string[] values = { stuid, title, content };
            contentdao condao = new contentdao();
            condao.addrecode(values);

            messtitle.Value = "";
            messcntent.Value = "";
            values[0] = values[1] = values[2] = "";
        }
    }
}