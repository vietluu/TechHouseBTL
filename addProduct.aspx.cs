using System;
using System.Collections.Generic;
using System.IO;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechHouseBTL
{
    public partial class addProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string name = Request.Form["name"];
                HttpPostedFile img = Request.Files["file"];
                int gia = int.Parse(Request.Form["payment"]);
                int sale = int.Parse(Request.Form["payment_sale"]);
                if (img.ContentLength > 0 && img.FileName != null)
                {
                    string filename = Server.MapPath("btl/images/" + img.FileName);
                    string ext = Path.GetExtension(img.FileName.ToLower());

                    if (ext == ".jpg" || ext == ".png")
                    {
                        if (File.Exists(filename))
                            {
                            Response.Write("file da ton tai");
                            return;
                        }
                        else
                        {
                            img.SaveAs(filename);
                        }
                    }
                    else
                    {
                        Response.Write("dinh dang exe khong duoc chap nhan");
                    }
                }
                
              //  Application["sanpham"] = new List<Product>();
                List<Product> listsp = (List<Product>)Application["sanpham"];
                string id = (listsp.Count + 1).ToString();
                if(img.FileName == null)
                {
                    return;
                }
                else
                {
                    Product prc = new Product(name, id, "btl/images/" + img.FileName, gia, sale);
                    listsp.Add(prc);
                    Application["sanpham"] = listsp;
                }
              


            }
        }
    }
    }