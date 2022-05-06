using System;
using System.Collections.Generic;

namespace TechHouseBTL
{
    public partial class OderProcess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string name = Request.QueryString["name"];
            string img = Request.QueryString["img"];
            string color = Request.QueryString["color"];
            string paid = Request.QueryString["paid"];
            string size = Request.QueryString["size"];
            if (id == "" || name == "" || img == "" || paid == "" || size == "" || color == "")
            {
                Response.Redirect("index.aspx");
            } 
            paid = paid.Replace(",", "");
            int numpaid = int.Parse(paid);
           
            string user = (string)Session["email"];
           
            if (user == null)
            {
                Response.Redirect("signIn.aspx?id=" + id + "&name=" + name + "&img=" + img + "&color=" + color + "&size=" + size + "&paid=" + numpaid);
            }
           
            List<Oder> list = new List<Oder>();
            list = (List<Oder>)Application["oder"];
            bool check = true;
            foreach(Oder oder in list)
            {
                if (oder.UserID == (String)Session["email"] && oder.ProductID1 == id && oder.NameID1==name && oder.Color1 ==color && oder.Size ==size) {
                    oder.Sl += 1;
                    oder.Gia += numpaid;
                    check = false;
                }
            }
            if (check)
            {
                list.Add(new Oder(user, name, id, img, color, size, numpaid, 1));
            }
            Application["oder"] = list;
            List<Oder> listsp = new List<Oder>();
            listsp = (List<Oder>)Application["oder"];
            int i = 0;
            foreach (Oder x in listsp)
            {
                if (x.UserID == (string)Session["email"])
                {
                    i+= x.Sl;
                }

            }

            Session["count"] = i;
            Response.Redirect("detailCart.aspx?id=" + id);
        }
    }
}