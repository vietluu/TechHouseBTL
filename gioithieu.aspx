﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="TechHouseBTL.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giới Thiệu</title>
    <link rel="shortcut icon" type="image/x-icon" href="btl/Image/smart-house.png" />
    <link rel="stylesheet" href="btl/css/style.css" />
    <link rel="stylesheet" href="btl/css/responsive.css" />
    <link rel="stylesheet" href="btl/css/reset.css" />
    <link rel="stylesheet" href="btl/css/grid.css" />
    <link rel="stylesheet" href="btl/css/all.min.css" />
    <link rel="stylesheet" href="btl/css/gioithieu.css" />
</head>
<body>
    <form id="gioithieu" runat="server">
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
                        <input id="search-input" type="text" placeholder="nhập tìm kiếm..." maxlength="100" />
                        <button type="button" onclick="search()"><i class="fas fa-search"></i></button>
                    </div>
                    <div class="header-contact">
                        <div class="header-hotline">
                            <span>
                                <i class="fas fa-phone fa-2x"></i>
                            </span>
                            <span>Hotline:
                                <br />
                                0963638362
                          
                            </span>
                        </div>
                        <div class="header-user">
                            <%

                                if (Session["name"] != null)
                                {
                                    Response.Write("<span>" + Session["name"] + "</span><span><a href='signout.aspx'>Đăng xuất</a></span>");
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
                                <span>Giỏ Hàng

                                </span>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
            <!-- tablet and mobile device search bar -->
            <div class="search-bar-mobile">
                <div class="searchbar-wraper">
                    <input id="m-search-input" type="text" placeholder="nhập tìm kiếm..." maxlength="100" />
                    <button type="button" onclick="search()"><i class="fas fa-search"></i></button>
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


        </header>

        <!-- Gioi thieu -->
        <div class="introduce">
            <h1>Về Chúng Tôi</h1>
            <p style="text-align: center; color: black;">
                Chúng tôi là những sinh viên đến từ đại học Mở Hà Nội
            </p>

            <div class="row">

                <!-- Sang Pham -->
                <div class="card">
                    <div class="card__img">
                        <img src="./btl/Image/Mem1_Sang.jpg" alt="" />
                    </div>

                    <h2>Sang Phạm</h2>
                    <p>Deverloper</p>

                    <div class="card__social">
                        <a target="_blank" href="https://www.facebook.com/besann43/">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-github"></i>
                        </a>
                    </div>

                    <button>Contact Me</button>
                </div>

                <!-- Việt -->
                <div class="card">
                    <div class="card__img">
                        <img src="./btl/Image/Mem2_Việt.jpg" alt="" />
                    </div>

                    <h2>Việt Lưu</h2>
                    <p>Deverloper</p>

                    <div class="card__social">
                        <a target="_blank" href="https://www.facebook.com/viet.luu.5876">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-github"></i>
                        </a>
                    </div>
                    <button>Contact Me</button>
                </div>

                <!-- Tranhh Trần -->
                <div class="card">
                    <div class="card__img">
                        <img src="./btl/Image/Mem3_TranAnh.jpg" alt="" />
                    </div>

                    <h2>Tranhh Trần</h2>
                    <p>Deverloper</p>

                    <div class="card__social">
                        <a target="_blank" href="https://www.facebook.com/TranhRabbit111">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-github"></i>
                        </a>
                    </div>

                    <button>Contact Me</button>
                </div>

                <!-- Đức Ngọc -->
                <div class="card">
                    <div class="card__img">
                        <img src="./btl/Image/Mem4_Ngọc.jpg" alt="" />
                    </div>

                    <h2>Đức Ngọc</h2>
                    <p>Deverloper</p>

                    <div class="card__social">
                        <a target="_blank" href="https://www.facebook.com/ducngoc0506">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-github"></i>
                        </a>
                    </div>

                    <button>Contact Me</button>
                </div>
            </div>
        </div>

        <!-- footer -->
        <footer>
            <div class="row delivery">
                <div class="delivery_content col c-4 m-12">
                    <div class="delivery_content-img mg-0 pd-3">
                        <img src="btl/Image/policy_icon_1.png" alt="" />
                    </div>

                    <div class="delivery_content-tilte ">
                        <h5>Giao hàng nhanh chóng.</h5>
                        <p>Miễn phí với đơn hàng trên 3 triệu.</p>
                    </div>

                </div>
                <div class="delivery_content col c-4 m-12">
                    <div class="delivery_content-img mg-0 pd-3 ">
                        <img src="btl/Image/policy_icon_2.png" alt="" />
                    </div>

                    <div class="delivery_content-tilte">
                        <h5>Chính sách bảo hành</h5>
                        <p>Bảo hành 12 tháng, đổi trả 15 ngày.</p>
                    </div>
                </div>
                <div class="delivery_content col c-4 m-12">
                    <div class="delivery_content-img mg-0 pd-3 ">
                        <img src="btl/Image/policy_icon_3.png" alt="" />
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
                        <h4 class="pd-3 text-main">Giới thiệu</h4>
                        <div class="pd-1 ">
                            <p class="pd-1 ">Trang mua sắm trực tuyến của thương hiệu Apple ,phụ kiện, giúp bạn tiếp cận xu hướng công nghệ mới nhất.</p>
                            <img class="pd-1 c-5" src="btl/Image/logo_bocongthuong.png" alt="" />
                        </div>
                    </div>

                    <!-- footer content 2 -->
                    <div class="col c-4 m-12 pd-3  footer__content2">
                        <h4 class="pd-1 text-main">Liên kết</h4>

                        <ul class="mg-auto  pd-1">
                            <li class="pd-1"><a href="#"><i class="fas fa-arrow-right"></i>Tìm Kiếm</a></li>
                            <li class="pd-1"><a href="#"><i class="fas fa-arrow-right"></i>Chính sách đổi trả</a></li>
                            <li class="pd-1"><a href="#"><i class="fas fa-arrow-right"></i>Chính sách bảo mật</a></li>
                            <li class="pd-1"><a href="#"><i class="fas fa-arrow-right"></i>Tìm Kiếm</a></li>
                            <li class="pd-1"><a href="#"><i class="fas fa-arrow-right"></i>Điều khoản dịch vụ</a></li>
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
<script src="btl/js/script.js"></script>
</html>
