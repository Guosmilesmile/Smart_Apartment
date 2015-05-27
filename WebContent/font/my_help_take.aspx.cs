using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using login_and_attend.domain;
using login_and_attend.dao;
namespace login_and_attend.font
{
    public partial class my_help_take : System.Web.UI.Page
    {
        public string myhelpstr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("main.aspx");
            Hidden1.Value = Session["id"].ToString();
            myhelpdao helpdao = new myhelpdao();
            List<myhelp> helplist = new List<myhelp>();
            helplist = helpdao.selectall(Session["id"].ToString());
            foreach (myhelp it in helplist)
           {
               
               myhelpstr += "<tr><td>"+it.Id+"</td><td>" + it.Express + "</td><td>" + it.Hosttel + "</td>" + "<td>" + it.Content + "</td><td>" + it.Flag + "</td>"
                   + "<td><button id='delete_"+it.Id+"' type='button' class='btn btn-primary' id='dele" +it.Id+"' onclick='delebtn(this,event)'>取消</button></td></tr> ";
           }
        }

    }
}