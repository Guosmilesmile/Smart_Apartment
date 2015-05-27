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
    public partial class water_electrcity : System.Web.UI.Page
    {
        public waterform water = new waterform();
        public int  Nume = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
                Response.Redirect("main.aspx");
        }
      
        protected void submitclick(object sender, EventArgs e)
        {
            string number = input_id.Value;
            try
            {
                int i = Convert.ToInt32(number);
                waterdao Waterdao = new waterdao();
                water = Waterdao.selectbynumber(number);
            }
            catch
            {
                return;
            }
        }
    }
}