using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechHouseBTL
{
    public partial class HienTenNguoiDangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<User> listUsers = (List<User>)Application["user"];

            string show = "";
            show += "<center>";
            show += "<table border='1'>";
            show += "<tr>";
            show += "<td>STT</td>";
            show += "<td>Họ Và Tên</td>";
            show += "</tr>";


            int i = 1;

            // lay dc het danh sach trong application ra va hien thi
            foreach (User user in listUsers)
            {

                show += "<tr>";
                show += "<td>" + (i++) + "</td>";
                show += "<td>" + user.Name + "</td>";

                show += "</tr>";

            }

            show += "</table>";
            show += "</center>";

            // inner du lieu vao chuoi rong
            bang.InnerHtml = show;

        }

    }
}
