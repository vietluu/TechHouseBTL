using System;
using System.Collections.Generic;

namespace TechHouseBTL
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            bool check = true;
            List<Oder> listsp = new List<Oder>();
            listsp = (List<Oder>)Application["oder"];
            
            string list = "";
            int sum = 0;
            int i = 0;
            foreach (Oder x in listsp)
            {
                if (x.UserID == (string)Session["email"])
                {

                    i+=x.Sl;
                    list += "<div class='c-11 pd-3 item_paid row'>";
                    list += "<div class='item_img c-5'>";
                    list += "<img src = '" + x.Imgsp + "' alt=''></div>";

                    list += " <div class='item_right c-7'>";
                    list += "<p class='mobile_name'>" + x.NameID1 + "</p><p>màu: " + x.Color1 + "</p> <P>Bộ nhớ: " + x.Size + "GB</P><p>Số lượng: "+x.Sl+"</p>";
                    
                    list += " <p class='mobile_paid'>giá " + string.Format("{0:0,0đ}", x.Gia) + "</p></div>" + "<span class='close-icon'><input type='button' name='remover' onClick='removeProduct("+x.ProductID1 +","+x.Size+",`"+x.Color1+"`)' value='+'></span></div>";
                    sum += x.Gia;
                    check = false;

                }
               
                
            }
            Session["count"] = i;
            foreach (Oder y in listsp)
            {
                if(y.ProductID1 == Request.QueryString["idRm"] && y.UserID == (string)Session["email"] && y.Size == Request.QueryString["sizeRm"] && y.Color1 == Request.QueryString["colorRm"])
                {
                    
                     listsp.Remove(y);
                    Application["oder"] = listsp;
                     Response.Redirect(Request.RawUrl);

                }
            }

            list_show.InnerHtml = list;
            paid_sum.InnerText = string.Format("{0:0,0đ}", sum);
         
            if (check == true)
            {
                list_show.InnerHtml = "<span>không có sản phẩm nào trong giỏ hàng </span>";
            }
            if (Session["email"] == null)
            {
                Response.Redirect("signIn.aspx");
            }


        }
    }
}