using System;
using System.Collections.Generic;

namespace TechHouseBTL
{
    public partial class signIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                string id = Request.QueryString["id"];
                string name = Request.QueryString["name"];
                string img = Request.QueryString["img"];
                string color = Request.QueryString["color"];
                string paid = Request.QueryString["paid"];
                string size = Request.QueryString["size"];
                if (IsPostBack)
                {
                    string email = Request.Form["email"];
                    string pass = Request.Form["password"];
                    List<User> list = (List<User>)Application["user"];

                    foreach (User a in list)
                    {
                        // Response.Write(a.Email + a.Pwd);
                        if (email == a.Email && pass == a.Pwd)
                        {
                            Session["name"] = a.Name;
                            Session["email"] = a.Email;
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

                            Session["count"] = i;
                            if (id != "" || name != "" || img != "" || paid != "" || size != "" || color != "")
                            {
                                Response.Redirect("detailCart.aspx?id=" + id);
                            }
                            Response.Redirect("index.aspx");

                        }
                    }
                    loginerr.InnerHtml = "tai khoan hoac mat khau khong chinh xac";

                }
            }

        }
    }
}