﻿using System;
using System.Collections.Generic;

namespace TechHouseBTL
{
    public partial class detailCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if(IsPostBack)
            //{
            bool check = false;
            string request = Request.QueryString["id"];
            List<Product> list = new List<Product>();
            list = (List<Product>)Application["sanpham"];
          
            foreach (Product p in list)
            {
                if (p.Id == request)
                {
                    string[] b = p.Namesp.Split(' ');
                    string gia = "";
                    product_id.InnerText = b[0];
                    img_product.InnerHtml = "<img src ='" + p.ImgSp + "'id = 'img-feature' alt = '" + p.Id + "' >";
                    title_product.InnerText = p.Namesp; ;
                    String a = (p.Sale > 0) ? (gia = String.Format("{0:0,0}", p.Paid - p.Paid * p.Sale / 100)) : (gia = String.Format("{0:0,0}", p.Paid - p.Paid * p.Sale / 100));
                    paid.InnerHtml = "<span id='money' >" + a + "</span><span>đ</span>";
                    check = true;
                }
            }
            if (check == false)
            {
                Response.Redirect("index.aspx");
            }

            
        }
    }
}