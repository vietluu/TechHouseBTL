using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechHouseBTL
{
    public partial class blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Oder> listsp = new List<Oder>();
            listsp = (List<Oder>)Application["oder"];
            int i = 0;
            foreach (Oder x in listsp)
            {
                if (x.UserID == (string)Session["email"])
                {
                    i++;
                }
            }
            count.InnerText = i.ToString();
        }
    }
}