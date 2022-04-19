using System;
using System.Collections.Generic;

namespace TechHouseBTL
{
    public partial class productIphone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> list = new List<Product>();
            list = (List<Product>)Application["sanpham"];
           
            String show = "";
            foreach (Product x in list)
            {
                string gia = "";
                string giacu = "";
                String saleoff = "";
                show += "<a href = 'detailCart.aspx?id=" + x.Id + "'class='mobile_info' runat='server'>";
                show += "<img src = '" + x.ImgSp + "' alt=''>";
                show += "    <p class='mobile_name'>" + x.Namesp + " </p>";
                string v = (x.Sale > 0) ? (gia = String.Format("{0:0,0}", x.Paid - x.Paid * x.Sale / 100)) : (gia = String.Format("{0:0,0}", x.Paid));
                string y = (x.Sale > 0) ? (giacu = String.Format("{0:0,0đ}", x.Paid)) : (giacu = "");
                string s = (x.Sale > 0) ? (saleoff = "<span class='sale'>-" + x.Sale + "%</span>") : (saleoff = "");
                show += "<p class='mobile_paid'>" + v + "đ<s>" + y + "</s></p> " + s + "</a>";

            }
            product_show.InnerHtml = show;

        }
    }
}