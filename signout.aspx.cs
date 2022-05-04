using System;

namespace TechHouseBTL
{
    public partial class signout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["dangnhap "] = 0;
            Session.Remove("name");
            Session.Abandon();
            Response.Redirect("index.aspx");


            // tính thời gian
            //if (Session["datetime"] != null)
            //{
            //    DateTime loginTime = (DateTime)Session["datetime"];
            //    var loginTimeDurationInMinutes = (DateTime.Now - loginTime).Seconds;

            //    dx.InnerHtml = Application["tk"].ToString() + ": " + loginTimeDurationInMinutes + "s";
            //}
        }
    }
}