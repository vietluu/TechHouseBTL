<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="TechHouseBTL.blog" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="btl/Image/smart-house.png" />
    <link rel="stylesheet" href="btl/css/style.css" />
    <link rel="stylesheet" href="btl/css/responsive.css">
    <link rel="stylesheet" href="btl/css/reset.css">
    <link rel="stylesheet" href="btl/css/grid.css">
    <link rel="stylesheet" href="btl/css/all.min.css">
    <link rel="stylesheet" href="btl/css/blog.css">
    <title>Blog</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
 <header>
          <!-- laptop and pc  -->
              <div class="top-header">
                  <div class="top-header-container">
                      <!-- mobile menu icon -->
                      <div class="nav-menu">
                          <div class="icon-menu">    
                          </div>
                      </div>
                     
                      <div class="mobile-menu">
                          <div class="mobile-wrapper">
                              <ul class="menu-mobile-ul">
                                  <li><a href="index.aspx">Trang chủ</a></li>
                                  <li><a href="productIphone.aspx">Sản Phẩm</a> 
                                      <span class="dropdown"><i class="fas fa-arrow-circle-right" ></i></span>
                                      <ul class="sub-mobile-menu">
                                          <li><a href="#">iphone</a></li>
                                          <li><a href="#">samsung</a></li>
                                          <li><a href="#">xiaomi</a></li>
                                      </ul>
                                  </li>
                                  <li><a href="productIphone.aspx">Product View</a> 
                                      <span class="dropdown"><i class="fas fa-arrow-alt-circle-right"></i></span>
                                      <ul class="sub-mobile-menu">
                                          <li><a href="detailCart.aspx?id=1">iphone 13 pro max</a></li>
                                          <li><a href="#">xiaomi 12 pro</a></li>
                                          <li><a href="#">samsung galaxy s22</a></li>
                                      </ul>
                                  </li>
                                  <li><a href="blog.aspx">Blog</a></li>
                                  <li><a href="gioithieu.aspx">Giới Thiệu</a></li>
                                  <li><a href="#">Liên Hệ</a></li>
                         <%    
                        if (Session["name"] != null)
                        {
                            Response.Write("<li><a href='signout.aspx'>Đăng xuất</a></li>");
                        }
                        %>
                              </ul>
                          </div> 
                      </div>
                      <!-- pc header -->
                      <div class="header-logo">
                       <h1><a href="index.aspx">TechHouse</a></h1>
                      </div>
                      <div class="search-bar">
                          <input type="text" placeholder="nhập tìm kiếm..." maxlength="100">
                          <button type="submit"><i class="fas fa-search"></i></button>
                      </div>
                      <div class="header-contact">
                          <div class="header-hotline">
                              <span >
                                  <i class="fas fa-phone fa-2x"></i>
                              </span>
                              <span>
                                  Hotline: <br/>
                                  0963638362
                              </span>
                          </div>
                          <div class="header-user" id="user">
                                 <%
                               
                               if(Session["name"] != null)
                               {
                                   Response.Write("<span>"+Session["name"]+"</span><span><a href='signout.aspx'>Đăng xuất</a></span>");
                                  // Response.Write(Session["name"]);
                               }
                               else
                               {
                                   Response.Write("<a href='./SignIn.aspx'><span><i class='fas fa-user fa-2x'></i></span> <span> Đăng Ký/ Đăng Nhập </span></a>");
                               }
                        %>
                           </div>
                           <div class="header-cart">
                               <a href="cart.aspx">
                               <span>
                                   <figure class="cart">
                                      <i class="fa fa-cart-plus fa-2x"></i>
                                      <sup id="count" runat="server"><% Response.Write(Session["Count"].ToString()); %></sup>
                                   </figure>
                                  
                                   
                               </span>
                               <span>
                                   Giỏ Hàng
                           
                               </span>
                              </a>
                           </div>
                       </div>
                          
                      </div>
                  </div>
          <!-- tablet and mobile device search bar -->
          <div class="search-bar-mobile">
              <div class="searchbar-wraper">
                  <input type="text" placeholder="nhập tìm kiếm..." >
                  <button type="submit"><i class="fas fa-search"></i></button>
              </div>      
          </div>
  
          <!-- menu -->
          <div class="dropdown-menu">
              <div class="menu-wrapper">
                  <ul class="menu-ul">
                      <li><a href="index.aspx">Trang chủ</a></li>
                      <li><a href="#">Sản Phẩm</a>
                          <ul class="sub-menu">
                              <li><a href="#">iphone</a></li>
                              <li><a href="#">samsung</a></li>
                              <li><a href="#">xiaomi</a></li>
                          </ul>
                      </li>
                      <li><a href="#">Product View</a>
                          <ul class="sub-menu">
                              <li><a href="#">iphone 13 pro max</a></li>
                              <li><a href="#">xiaomi 12 pro</a></li>
                              <li><a href="#">samsung galaxy s22</a></li>
                          </ul>
                      </li>
                      <li><a href="blog.aspx">Blog</a></li>
                      <li><a href="gioithieu.aspx">Giới Thiệu</a></li>
                      <li><a href="#">Liên Hệ</a></li>
                  </ul>
              </div>
          </div>
         
      </header>

     <!-- Tin Tức -->
     <section class="newfeed pd-1">

          <div class="row container">

               <!-- Tin Tức -->
               <div class="col c-8 l-12 m-12  newfeed__tin-tuc">
                    <h1 class="text-center text-main pd-3">Tin tức</h1>
                    <div class="row">
                         <div class="col  c-12">
                              <div class="image">
                                   <img src="https://file.hstatic.net/1000406564/article/blogs3_b00e56c4b26642d4a73222a4f9bc8111_large.jpg" alt="">
                              </div>
                         </div>
                         <div class="col  c-12 pd-3">
                              <div class="paragraph">
                                   <a href="#">Apple có thể sớm tung ra siêu phẩm Iphone giá rẻ mới</a>
                                   <span><small>19 Tháng Một, 2022</small></span>
                                   <p>Apple có thể sẽ cho ra mắt một dòng máy iPhone mới với mức giá “bình dân” trong sự kiện dự kiến diễn ra vào cuối tháng...</p>
                              </div>
                         </div>
                    </div>
                    <div class="row">
                         <div class="col c-12">
                              <div class="image">
                                   <img src="https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/142456/Originals/thong-tin-OPPO-Find-X5-Pro-cover.jpg" alt="">
                              </div>
                         </div>
                         <div class="col c-12 pd-3">
                              <div class="paragraph">
                                   <a href="#">OPPO Find X5 và Find X5 Pro được xác nhận hỗ trợ sạc nhanh...</a>
                                   <span><small>20 Tháng Một, 2022</small></span>
                                   <p>Ngày càng xuất hiện nhiều thông tin rò rỉ về 2 mẫu smartphone cao cấp mới của OPPO là Find X5 và Find X5...</p>
                              </div>
                         </div>
                    </div>
                    <div class="row">
                         <div class="col c-12">
                              <div class="image">
                                   <img src="https://cellphones.com.vn/sforum/wp-content/uploads/2022/01/so-sanh-cover.jpg" alt="">
                              </div>
                         </div>
                         <div class="col c-12 pd-3 text-left">
                              <div class="paragraph">
                                   <a href="#">So sánh Galaxy S22 Ultra và Galaxy S21 Ultra dựa trên loạt tin đồn và rò rỉ: Sự khác biệt là gì?</a>
                                   <span><small>18 tháng Một 2022</small></span>
                                   <p>Samsung dự kiến sẽ chính thức ra mắt các smartphone cao cấp mới của mình vào tháng 2 tới đây, bao gồm 3 model là Galaxy S22, Galaxy S22+ và Galaxy S22 Ultra...</p>
                              </div>
                         </div>
                    </div>
  


               </div>

               <!-- Bài viết mới nhất -->
               <div class="c-4 l-12 m-12 mgTop-1 pd-3">
                    <h1 class="text-center text-main pd-3">Bài viết mới nhất</h1>
                    <div class="row">
                         <div class="col c-4">
                              <div class="image">
                                   <img src="https://file.hstatic.net/1000406564/article/blogs3_b00e56c4b26642d4a73222a4f9bc8111_large.jpg" alt="">
                              </div>
                         </div>

                         <div class="col c-8 pd-3 text-left">
                              <div class="paragraph">
                                   <a class="a__baimoi-title" href="#">Apple có thể sớm tung ra siêu phẩm Iphone...</a>
                                   <a class="a-nhacungcap" href="#">TechHose</a>
                                   <span><small>31/01/2022</small></span>
                              </div>
                         </div>
                    </div>
                    <div class="row">
                         <div class="col c-4">
                              <div class="image">
                                   <img src="https://file.hstatic.net/1000406564/article/blogs3_b00e56c4b26642d4a73222a4f9bc8111_large.jpg" alt="">
                              </div>
                         </div>

                         <div class="col c-8 pd-3 text-left">
                              <div class="paragraph">
                                   <a class="a__baimoi-title" href="#">Apple có thể sớm tung ra siêu phẩm Iphone...</a>
                                   <a class="a-nhacungcap" href="#">TechHose</a>
                                   <span><small>31/01/2022</small></span>
                              </div>
                         </div>
                    </div>
                    <div class="row">
                         <div class="col c-4">
                              <div class="image">
                                   <img src="https://file.hstatic.net/1000406564/article/blogs3_b00e56c4b26642d4a73222a4f9bc8111_large.jpg" alt="">
                              </div>
                         </div>

                         <div class="col c-8">
                              <div class="paragraph">
                                   <a class="a__baimoi-title" href="#">Apple có thể sớm tung ra siêu phẩm Iphone...</a>
                                   <a class="a-nhacungcap" href="#">TechHose</a>
                                   <span><small>31/01/2022</small></span>
                              </div>
                         </div>
                    </div>
                    <div class="row">
                         <div class="col c-4">
                              <div class="image">
                                   <img src="https://file.hstatic.net/1000406564/article/blogs3_b00e56c4b26642d4a73222a4f9bc8111_large.jpg" alt="">
                              </div>
                         </div>

                         <div class="col c-8">
                              <div class="paragraph">
                                   <a class="a__baimoi-title" href="#">Apple có thể sớm tung ra siêu phẩm Iphone...</a>
                                   <a class="a-nhacungcap" href="#">TechHose</a>
                                   <span><small>31/01/2022</small></span>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
     </section>

    
     <footer>
          <div class="row delivery">
              <div class="delivery_content col c-4 m-12">
                  <div class="delivery_content-img mg-0 pd-3">
                      <img src="btl/Image/policy_icon_1.png" alt="">
                  </div>
  
                  <div class="delivery_content-tilte ">
                      <h5>Giao hàng nhanh chóng.</h5>
                      <p>Miễn phí với đơn hàng trên 3 triệu.</p>
                  </div>
  
              </div>
              <div class="delivery_content col c-4 m-12">
                  <div class="delivery_content-img mg-0 pd-3 ">
                      <img src="btl/Image/policy_icon_2.png" alt="">
                  </div>
  
                  <div class="delivery_content-tilte">
                      <h5>Chính sách bảo hành</h5>
                      <p>Bảo hành 12 tháng, đổi trả 15 ngày.</p>
                  </div>
              </div>
              <div class="delivery_content col c-4 m-12">
                  <div class="delivery_content-img mg-0 pd-3 ">
                      <img src="btl/Image/policy_icon_3.png" alt="">
                  </div>
  
                  <div class="delivery_content-tilte">
                      <h5>Hỗ trợ 24/7</h5>
                      <p>Với các kênh chat, email & phone</p>
                  </div>
              </div>
          </div>
        <div class="">
          <div class="row text-left">
              <!-- footer content 1 -->
              <div class="col c-4 m-12 pd-3 footer__content1">
                   <h4 class="pd-3 text-main">  Giới thiệu</h4>
                   <div class="pd-1 ">
                        <p class="pd-1 ">Trang mua sắm trực tuyến của thương hiệu Apple ,phụ kiện, giúp bạn tiếp cận xu hướng công nghệ mới nhất.</p>
                        <img  class="pd-1 c-5" src="btl/Image/logo_bocongthuong.png" alt="">
                   </div>
              </div>
  
              <!-- footer content 2 -->
              <div class="col c-4 m-12 pd-3  footer__content2">
                   <h4 class="pd-1 text-main">Liên kết</h4>
                   
                        <ul class="mg-auto  pd-1">
                             <li class="pd-1"><a href="#"> <i class="fas fa-arrow-right"></i> Tìm Kiếm</a></li>
                             <li class="pd-1"><a href="#"> <i class="fas fa-arrow-right"></i> Chính sách đổi trả</a></li>
                             <li class="pd-1"><a href="#"> <i class="fas fa-arrow-right"></i> Chính sách bảo mật</a></li>
                             <li class="pd-1"><a href="#"> <i class="fas fa-arrow-right"></i> Tìm Kiếm</a></li>
                             <li class="pd-1"><a href="#"> <i class="fas fa-arrow-right"></i> Điều khoản dịch vụ</a></li>
                        </ul>
                   
              </div>
  
              <!-- footer content 3 -->
              <div class="col c-4 m-12 pd-3  footer__content3">
                   <h4 class="pd-1 text-main">Thông tin liên hệ</h4>
                  
                        <ul class="pd-1">
                             <li class="pd-1"><i class="pd-1 fas fa-map-marker-alt"></i><span>Khoa CNTT - 96 Định Công</span></li>
                             <li class="pd-1"><i class="pd-1 fas fa-phone-alt"></i><span>0123.456.789</span></li>
                             <li class="pd-1"><i class="pd-1 fas fa-envelope"></i><span>hellomyphen@gmail.com</span></li>
                        </ul>
  
                        <ul class="social row c-12 pd-3">
                             <li class="pd-1"><i class="fab fa-facebook-f fa-2x"></i></li>
                             <li class="pd-1"><i class="fab fa-twitter fa-2x"></i></li>
                             <li class="pd-1"><i class="fab fa-instagram fa-2x"></i></li>
                             <li class="pd-1"><i class="fab fa-youtube fa-2x"></i></li>
                        </ul>
                  
                  </div>
  
              
         </div>
        </div>
        <div class="copyright">
          <span style="color: rgb(141, 141, 141);">copyright &copy 2022 - design by VNSA</span>
      </div>
     </footer>
    </form>
</body>
    <script src="btl/js/script.js?v=123"></script>
</html>
