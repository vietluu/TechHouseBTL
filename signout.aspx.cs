using System;

namespace TechHouseBTL
{
    public partial class signout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("name");

            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}