<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TechHouseBTL.index" %>


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
    <script src="btl/js/script.js?v=123"></script>
    <title>TechHouse</title>

  
</head>
<body>
   
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
                                <span class="dropdown"><i class="fas fa-arrow-circle-right"></i></span>
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
                    <input type="text" placeholder="nhập tìm kiếm..." maxlength="100" list="list">
                    <button type="submit"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-contact">
                    <div class="header-hotline">
                        <span>
                            <i class="fas fa-phone fa-2x"></i>
                        </span>
                        <span>
                            Hotline: <br />
                            0963638362
                          
                        </span>
                    </div>
                    <div class="header-user">
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
                            <span class="cart">
                                
                                    <i class="fa fa-cart-plus fa-2x"></i>
                                    <sup id="count" runat="server"><% Response.Write(Session["Count"].ToString()); %></sup>
                               


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
                <input type="text" placeholder="nhập tìm kiếm...">
                <button type="submit"><i class="fas fa-search"></i></button>
            </div>
        </div>

        <!-- menu -->
        <div class="dropdown-menu">
            <div class="menu-wrapper">
                <ul class="menu-ul">
                    <li><a href="index.aspx">Trang chủ</a></li>
                    <li><a href="productIphone.aspx">Sản Phẩm</a>
                        <ul class="sub-menu">
                            <li><a href="productIphone.aspx">iphone</a></li>
                            <li><a href="#">samsung</a></li>
                            <li><a href="#">xiaomi</a></li>
                        </ul>
                    </li>
                    <li><a href="productIphone.aspx">Product View</a>
                        <ul class="sub-menu">
                            <li><a href="detailCart.aspx?id=1">iphone 13 pro max</a></li>
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
        <!-- banner -->

        <div class="slideshow-container">

            <div class="mySlides fade">
                <a href="#">
                    <img src="btl/images/banner/slideshow_1.jpg" style="width:100%">
                </a>
            </div>

            <div class="mySlides fade">

                <a href="#">
                    <img src="btl/images/banner/slideshow_2.jpg" style="width:100%">
                </a>

            </div>
            <div class="mySlides fade">

                <a href="#">
                    <img src="btl/images/banner/slideshow_3.jpg" style="width:100%">
                </a>

            </div>
            <div class="dots" style="text-align:center">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>

            </div>
        </div>

        <div class="news">
            <div class="news-container">
                <div class="tab-news">
                    <a href="#">
                        <img src="btl/images/banner/img_banner_home_1.jpg" alt="">
                    </a>

                </div>
                <div class="tab-news">
                    <a href="#">
                        <img src="btl/images/banner/img_banner_home_2.jpg" alt="">
                    </a>
                </div>
                <div class="tab-news">
                    <a href="#">
                        <img src="btl/images/banner/img_banner_home_3.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>

    </header>

    <div class="fluid_container">
        <div class="product">
            <section class="news_product">
                <div class="product_title">
                    <h2>
                        Sản phẩm mới
                    </h2>
                    <h4>
                        Cập nhật những sản phẩm mới nhất
                    </h4>
                </div>


                <div class="device_product" id ="product_show" runat="server">
                    
                </div>


            </section>
        </div>

        <div class="sale_off">
            <div class="side_left effect">
                <a href="#">
                    <img src="btl/images/banner/img_banner_center_1.jpg" alt="">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>

                </a>
                <a href="#">
                    <img src="btl/images/banner/img_banner_center_2.jpg" alt="">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
            <div class="side_right effect++">
                <a href="#">
                    <img src="btl/images/banner/img_banner_center_3.jpg" alt="">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
        </div>
        <div class="sale_device">
            <div class="product">
                <section class="news_product">
                    <div class="product_title">
                        <h2>
                            Sản Phẩm Khuyễn mãi
                        </h2>
                        <h4>
                            Giảm giá lên tới 50%
                        </h4>
                    </div>
                    <div class="device_product_sale">

                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/iphone/ip13-pro_2.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Điện thoại Iphone 13 ProMax
                                </p>
                                <p class="mobile_paid">
                                    30.000.000đ
                                </p>
                            </div>

                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/iphone/ipad-pro-12-9-2021-1-0009.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Máy tính bảng Ipad pro 2021
                                </p>
                                <p class="mobile_paid">
                                    30.000.000đ
                                </p>
                            </div>
                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/samsung/samsung-galaxy-s21-fe.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Điện thoại Samsung s21 fe
                                </p>
                                <p class="mobile_paid">
                                    25.900.000đ <s> 27.000.000đ</s>
                                </p>
                            </div>

                            <span class="sale">-5%</span>
                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/xiaomi/xiaomi-mi-10t-pro_2_.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Điện thoại xiaomi Mi 10t Pro
                                </p>
                                <p class="mobile_paid">
                                    26.550.000đ <s>28.800.000đ</s>
                                </p>
                            </div>
                            <span class="sale">-2%</span>
                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/iphone/iphone_11_white_4_.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Điện thoại Iphone 11
                                </p>
                                <p class="mobile_paid">
                                    20.000.000đ
                                </p>
                            </div>

                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/samsung/samsung-galaxy-tab-s8-002.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Máy tính bảng Samsung galaxy tab S8
                                </p>
                                <p class="mobile_paid">
                                    30.000.000đ
                                </p>
                            </div>
                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/xiaomi/xiaomi-mi-11-lite-5g-2_10.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Điện thoại Xiaomi mi11 lite 5g
                                </p>
                                <p class="mobile_paid">
                                    26.600.000đ <s>28.300.000đ</s>
                                </p>
                            </div>
                            <span class="sale">-3%</span>
                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/samsung/samsung-galaxy-tab-s7-1.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Máy tính bảng Samsung galaxy tab S8
                                </p>
                                <p class="mobile_paid">
                                    26.600.000đ <s>28.300.000đ</s>
                                </p>
                            </div>
                            <span class="sale">-5%</span>
                        </a>
                        <a href="#" class="mobile_sale">
                            <img src="btl/images/sp/iphone/iphoneSE.jpg" alt="">
                            <div class="right_info">
                                <p class="mobile_name">
                                    Điện thoại Iphone SE 2
                                </p>
                                <p class="mobile_paid">
                                    17.550.000đ <s>19.550.000đ</s>
                                </p>
                            </div>
                            <span class="sale">-10%</span>
                        </a>
                    </div>
                </section>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="row delivery">
            <div class="delivery_content col c-4 m-12">
                <div class="delivery_content-img mg-0 pd-3">
                    <img src="./btl/Image/policy_icon_1.png" alt="">
                </div>

                <div class="delivery_content-tilte ">
                    <h5>Giao hàng nhanh chóng.</h5>
                    <p>Miễn phí với đơn hàng trên 3 triệu.</p>
                </div>

            </div>
            <div class="delivery_content col c-4 m-12">
                <div class="delivery_content-img mg-0 pd-3 ">
                    <img src="./btl/Image/policy_icon_2.png" alt="">
                </div>

                <div class="delivery_content-tilte">
                    <h5>Chính sách bảo hành</h5>
                    <p>Bảo hành 12 tháng, đổi trả 15 ngày.</p>
                </div>
            </div>
            <div class="delivery_content col c-4 m-12">
                <div class="delivery_content-img mg-0 pd-3 ">
                    <img src="./btl/Image/policy_icon_3.png" alt="">
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
                    <h4 class="pd-3 text-main"> Giới thiệu</h4>
                    <div class="pd-1 text-center ">
                        <p class="pd-1 ">Trang mua sắm trực tuyến của thương hiệu Apple ,phụ kiện, giúp bạn tiếp cận xu
                            hướng công nghệ mới nhất.</p>
                        <img class="pd-1 c-5" src="./btl/Image/logo_bocongthuong.png" alt="">
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
                        <li class="pd-1"><i class="pd-1 fas fa-map-marker-alt"></i><span>Khoa CNTT - 96 Định Công</span>
                        </li>
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

</body>
     <script src="btl/js/SlideImage.js"></script>
</html>
