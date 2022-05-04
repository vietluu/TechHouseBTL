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
                            Session["dangnhap"] = 1;
                            Session["name"] = a.Name;
                            Session["email"] = a.Email;

                            //Khởi tạo application kiểm tra thời gian chạy của user
                            Application["tk"] = a.Email;
                            Session["hoten"] = a.Name;
                            Session["pass"] = a.Pwd;
                            Response.Redirect("index.aspx");


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

                        // kiem tra 3 lan dang nhap sai, neu sai thi ko cho dang nhap nua
                        else if(a.Email == email && a.Pwd != pass)
                        {
                            if (Session["dem"] == null)
                            {
                                Session["dem"] = 1;
                            }
                            else
                            {
                                Session["dem"] = (int)Session["dem"] + 1;
                            }

                            if ((int)Session["dem"] >= 3)
                            {
                                Session["dem"] = null;
                                dn.Visible = false;
                                loginerr.InnerHtml = "Bạn đăng nhập sai 3 lần bị khóa";
                            }

                            else
                            {
                                loginerr.InnerHtml = "Bạn đăng nhập sai lần thứ: " + Session["dem"];
                            }
                        }
                    }
                    loginerr.InnerHtml = "Tài khoản hoặc Mật Khẩu không chính xác!";

                }
            }

        }
    }
}