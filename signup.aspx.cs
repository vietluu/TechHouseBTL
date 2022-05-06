using System;
using System.Collections.Generic;

namespace TechHouseBTL
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                bool check = false;
                string email = Request.Form["email"];
                string name = Request.Form["username"];
                string pwd = Request.Form["password"];
                List<User> list = new List<User>();
                list = (List<User>)Application["user"];
                foreach (User x in list)
                {
                    if (x.Email == email)
                    {
                        signun_err.InnerText = "Tài Khoản đã tồn tại!";

                        check = true;


                    }

                }

                if (check == false)
                {
                    list.Add(new User(email, name, pwd));
                    Application["user"] = list;
                    Response.Redirect("signIn.aspx");
                }
            }
        }
    }
}