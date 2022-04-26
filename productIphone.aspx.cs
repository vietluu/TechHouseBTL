using System;
using System.Collections.Generic;
using System.Linq;

namespace TechHouseBTL
{
    public partial class productIphone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> list = new List<Product>();
            list = (List<Product>)Application["sanpham"];
           
            String show = "";
            //foreach (Product x in list)
            //{
            //    string gia = "";
            //    string giacu = "";
            //    string saleoff = "";
            //    show += "<a href = 'detailCart.aspx?id=" + x.Id + "'class='mobile_info' runat='server'>";
            //    show += "<img src = '" + x.ImgSp + "' alt=''>";
            //    show += "    <p class='mobile_name'>" + x.Namesp + " </p>";
            //    string v = (x.Sale > 0) ? (gia = string.Format("{0:0,0}", x.Paid - x.Paid * x.Sale / 100)) : (gia = String.Format("{0:0,0}", x.Paid));
            //    string y = (x.Sale > 0) ? (giacu = string.Format("{0:0,0đ}", x.Paid)) : (giacu = "");
            //    string s = (x.Sale > 0) ? (saleoff = "<span class='sale'>-" + x.Sale + "%</span>") : (saleoff = "");
            //    show += "<p class='mobile_paid'>" + v + "đ<s>" + y + "</s></p> " + s + "</a>";

            //}
            //product_show.InnerHtml = show;

            //  List<Product> product = list.OrderBy(Product => Product.Paid ).ToList();

            if (Request.QueryString["paid"] == null)
            {
                foreach (Product x in list)
                {
                    string gia = "";
                    string giacu = "";
                    string saleoff = "";
                    show += "<a href = 'detailCart.aspx?id=" + x.Id + "'class='mobile_info' runat='server'>";
                    show += "<img src = '" + x.ImgSp + "' alt=''>";
                    show += "    <p class='mobile_name'>" + x.Namesp + " </p>";
                    string v = (x.Sale > 0) ? (gia = string.Format("{0:0,0}", x.Paid - x.Paid * x.Sale / 100)) : (gia = String.Format("{0:0,0}", x.Paid));
                    string y = (x.Sale > 0) ? (giacu = string.Format("{0:0,0đ}", x.Paid)) : (giacu = "");
                    string s = (x.Sale > 0) ? (saleoff = "<span class='sale'>-" + x.Sale + "%</span>") : (saleoff = "");
                    show += "<p class='mobile_paid'>" + v + "đ<s>" + y + "</s></p> " + s + "</a>";


                }
            }
            else
            {
                if (int.Parse(Request.QueryString["paid"]) == 1)
                {
                    foreach (Product x in list)
                    {
                        int money = (x.Paid - (x.Paid * x.Sale/100));
                        if (money >= 5000000 && money <= 10000000)
                        {
                            string gia = "";
                            string giacu = "";
                            string saleoff = "";
                            show += "<a href = 'detailCart.aspx?id=" + x.Id + "'class='mobile_info' runat='server'>";
                            show += "<img src = '" + x.ImgSp + "' alt=''>";
                            show += "    <p class='mobile_name'>" + x.Namesp + " </p>";
                            string v = (x.Sale > 0) ? (gia = string.Format("{0:0,0}", x.Paid - x.Paid * x.Sale / 100)) : (gia = String.Format("{0:0,0}", x.Paid));
                            string y = (x.Sale > 0) ? (giacu = string.Format("{0:0,0đ}", x.Paid)) : (giacu = "");
                            string s = (x.Sale > 0) ? (saleoff = "<span class='sale'>-" + x.Sale + "%</span>") : (saleoff = "");
                            show += "<p class='mobile_paid'>" + v + "đ<s>" + y + "</s></p> " + s + "</a>";
                        }

                    }
                }
                if (int.Parse(Request.QueryString["paid"]) == 2)
                {
                    foreach (Product x in list)
                    {
                        int money = (x.Paid - (x.Paid * x.Sale/100));
                        if (money >= 10000000 && money <= 20000000)
                        {
                            string gia = "";
                            string giacu = "";
                            string saleoff = "";
                            show += "<a href = 'detailCart.aspx?id=" + x.Id + "'class='mobile_info' runat='server'>";
                            show += "<img src = '" + x.ImgSp + "' alt=''>";
                            show += "    <p class='mobile_name'>" + x.Namesp + " </p>";
                            string v = (x.Sale > 0) ? (gia = string.Format("{0:0,0}", x.Paid - x.Paid * x.Sale / 100)) : (gia = String.Format("{0:0,0}", x.Paid));
                            string y = (x.Sale > 0) ? (giacu = string.Format("{0:0,0đ}", x.Paid)) : (giacu = "");
                            string s = (x.Sale > 0) ? (saleoff = "<span class='sale'>-" + x.Sale + "%</span>") : (saleoff = "");
                            show += "<p class='mobile_paid'>" + v + "đ<s>" + y + "</s></p> " + s + "</a>";
                        }

                    }
                }
            }
           
            
               
            
            

            product_show.InnerHtml = show;
                
            
        }
    }
}