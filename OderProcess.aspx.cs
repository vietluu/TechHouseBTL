using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            paid = paid.Replace(".", "");
            int numpaid = int.Parse(paid);
            string size = Request.QueryString["size"];
            string user = (string)Session["email"];
            if(user == null)
            {
                Response.Redirect("signIn.aspx?id="+id+"&name="+name+"&img="+img+"&color="+color+"&size="+size+"&paid="+paid);
            }
            if(id==""||name==""||img==""||paid==""||size==""||color=="")
            {
                Response.Redirect("index.aspx");
            }
            List<Oder> list = new List<Oder>();
            list = (List<Oder>)Application["oder"];
            list.Add(new Oder(user,name,id,img,color,size,numpaid));
            Response.Redirect("detailCart.aspx?id=" + id);
        }
    }
}