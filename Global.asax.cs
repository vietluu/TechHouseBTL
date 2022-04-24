using System;
using System.Collections.Generic;

namespace TechHouseBTL
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            //khoi tao thong tin nguoi dung

            Application["user"] = new List<User>();
            List<User> Listuser = (List<User>)Application["user"];
            Listuser.Add(new User("viet@gmail.com", "viet", "1234567"));
            Listuser.Add(new User("sang@gmail.com", "sang", "1234567"));
            Application["user"] = Listuser;
            // khoi tao du lieu san pham
            Application["sanpham"] = new List<Product>();
            List<Product> listsp = (List<Product>)Application["sanpham"];
            listsp.Add(new Product("Iphone 13 Pro Max", "1", "btl/images/sp/iphone/ip13-pro_2.jpg", 10000000, 5));
            listsp.Add(new Product("IPad pro", "2", "btl/images/sp/iphone/ipad-pro-12-9-2021-1-0009.jpg", 10000000, 0));
            listsp.Add(new Product("Samsung galaxy s21 fe", "3", "btl/images/sp/samsung/samsung-galaxy-s21-fe.jpg", 13000000, 0));
            listsp.Add(new Product("Xiaomi 10t pro", "4", "btl/images/sp/xiaomi/xiaomi-mi-10t-pro_2_.jpg", 17500000, 3));
            listsp.Add(new Product("Iphone 11 64Gb", "5", "btl/images/sp/iphone/iphone_11_white_4_.jpg", 13000000, 5));
            listsp.Add(new Product("SamSung galaxy tab s8", "6", "btl/images/sp/samsung/samsung-galaxy-tab-s8-002.jpg", 22000000, 7));
            listsp.Add(new Product("Xiaomi t11 lite", "7", "btl/images/sp/xiaomi/xiaomi-mi-11-lite-5g-2_10.jpg", 16000000, 0));
            listsp.Add(new Product("Samsung galaxy tab s7", "8", "btl/images/sp/samsung/samsung-galaxy-tab-s7-1.jpg", 18000000, 4));
            listsp.Add(new Product("Iphone 12 Pro Max", "9", "btl/images/sp/iphone/iphone_12_pro_max_white_1.jpg", 13400000, 0));
            listsp.Add(new Product("Iphone SE 2", "10", "btl/images/sp/iphone/iphoneSE.jpg", 9700000, 7));

            Application["sanpham"] = listsp;


            //don hang
            Application["oder"] = new List<Oder>();
            List<Oder> list = (List<Oder>)Application["oder"];
            Application["oder"] = list;
            

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Count"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}