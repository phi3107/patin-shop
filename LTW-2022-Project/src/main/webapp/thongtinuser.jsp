<%@ page import="vn.edu.hcmuaf.fit.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Phi
  Date: 1/10/2023
  Time: 6:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi"
      class="yes-js js_active js js csstransforms csstransforms3d csstransitions js_active vc_desktop vc_transform vc_transform">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script>document.documentElement.className = document.documentElement.className + ' yes-js js_active js'</script>





  <!-- THIS LINK IS IMPORTANT -->
  <link rel="stylesheet" id="wpo_min-header-2-css"
        href="css/wpo-minify-header-530c7ebf.min.css"
        type="text/css" media="all">





  <!-- IMPORTANT -->
  <script type="text/javascript"
          src="js/wpo-minify-header-22b48a6.min.js"
          id="wpo_min-header-0-js"></script>

  <!-- cart slide down js -->
  <script type="text/javascript" src="js/wpo-minify-footer-d91c3b92.min.js" id="wpo_min-footer-1-js"></script>


  <script type="text/javascript" src="js/wpo-minify-footer-95d610c0.min.js" id="wpo_min-footer-3-js"></script>
  <!-- move to top js -->
  <script type="text/javascript" src="js/wpo-minify-footer-44ea1f3d.min.js" id="wpo_min-footer-1-js"></script>


  <link rel="icon" href="https://www.patinchinhhang.com/wp-content/uploads/2019/03/cropped-rp_logo_onwhite-32x32.png"
        sizes="32x32">
  <link rel="icon"
        href="https://www.patinchinhhang.com/wp-content/uploads/2019/03/cropped-rp_logo_onwhite-192x192.png"
        sizes="192x192">
  <link rel="apple-touch-icon"
        href="https://www.patinchinhhang.com/wp-content/uploads/2019/03/cropped-rp_logo_onwhite-180x180.png">
  <meta name="msapplication-TileImage"
        content="https://www.patinchinhhang.com/wp-content/uploads/2019/03/cropped-rp_logo_onwhite-270x270.png">

  <!-- IMPORTANT -->
  <style type="text/css" id="wp-custom-css">
    .swatch-72mm,
    .swatch-76mm,
    .swatch-80mm {
      min-width: 50px;
    }

    .sticky-mobile-menu {
      display: none;
    }

    @media screen and (max-width: 768px) {
      .mobile-hide {
        display: none !important;
      }

      #home-slider {
        max-height: 100% !important;
      }

      #home-carousel-mobile .vc_carousel-slideline,
      #home-carousel-mobile .vc_carousel-slideline-inner,
      #home-carousel-mobile .vc_item {
        height: 100% !important;
        width: 100%;
      }

      .sticky-mobile-menu {
        display: block;
        position: fixed;
        width: 100%;
        margin: 0;
        z-index: 10000;
        top: 0;
        left: 0;
        margin: 0px !important;
      }

      .sticky-mobile-menu .logo {
        position: absolute;
        width: 60px;
        top: 3px;
        left: 5px;
        z-index: 10;
        background: #343a40;
      }

      .sticky-mobile-menu .mobile-menu {
        background: #343a40 !important;
      }

      .header-content .container {
        padding: 0;
        height: 50px
      }

      .main-container .product-view .single-product-image.slider {
        padding-right: 0px;
      }

      .main-container .product-view .single-product-image .thumbnails.slider .caroufredsel_wrapper ul li a {
        max-width: 70px;
        max-height: 70px
      }

      .main-container .product-view .single-product-image .thumbnails.slider #slider-next,
      .main-container .product-view .single-product-image .thumbnails.slider #slider-prev {
        top: 30px !important
      }
    }

    .small-body .page-wrapper .footer {
      position: relative;
    }

    .header-1 {
      margin-bottom: 0 !important;
    }

    .woocommerce .product-wrapper .onsale:after,
    .woocommerce .single-product-image .onsale:after {
      border-right: 4px solid #e84039;
    }

    .onsale {
      -webkit-animation: spin 2s linear infinite;
      -moz-animation: spin 2s linear infinite;
      animation: spin 2s linear infinite;
    }

    @-moz-keyframes spin {
      0% {
        -moz-transform: rotate(0deg);
      }

      50% {
        -moz-transform: rotate(45deg);
      }

      100% {
        -moz-transform: rotate(0deg);
      }
    }

    @-webkit-keyframes spin {
      0% {
        -webkit-transform: rotate(0deg);
      }

      50% {
        -webkit-transform: rotate(45deg);
      }

      100% {
        -webkit-transform: rotate(0deg);
      }
    }

    @keyframes spin {
      0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }

      50% {
        -webkit-transform: rotate(45deg);
        transform: rotate(45deg);
      }

      100% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
      }
    }

    #billing_first_name_field {
      width: 100%
    }
  </style>

  <noscript>
    <style>
      .wpb_animate_when_almost_visible {
        opacity: 1;
      }
    </style>
  </noscript>
  <style type="text/css">
    .fancybox-margin {
      margin-right: 17px;
    }
  </style>
  <link rel="stylesheet" href="css/style-register-form.css">
  <script src="js/register-form-script.js"></script>
</head>

<body
        class="archive post-type-archive post-type-archive-product theme-sneaker woocommerce-shop woocommerce woocommerce-page woocommerce-js woo-variation-swatches wvs-behavior-blur wvs-theme-sneaker-child wvs-show-label wvs-tooltip wpb-js-composer js-comp-ver-6.10.0 vc_responsive mmm mega_main_menu-2-2-2">
<div id="yith-wcwl-popup-message" style="display: none;">
  <div id="yith-wcwl-message"></div>
</div>
<div class="wrapper">
  <div class="page-wrapper">
    <jsp:include page="header.jsp"></jsp:include>
    <div class="main-container">
      <div class="breadcrumb-container">
        <div class="container">

          <nav class="woocommerce-breadcrumb">


            <a href="https://www.patinchinhhang.com">Trang ch???</a>

            <span class="separator">/</span>


            Th??ng tin t??i kho???n



          </nav>
        </div>
      </div>
      <div class="shop_content">
        <div class="container shop_content-inner">
          <div class="row">
            <div id="archive-product"
                 class="page-content col-12 col-lg-9 grid-view main-column order-lg-last">

              <!-- form th??ng tin user  -->
              <div id="grid" style="margin-bottom: 50px; grid-template-columns: 20% auto 20%;">

                <div></div>
                <% User user = (User) request.getAttribute("user");%>
                <div id="grid__content">
                  <div id="card">
                    <form class="form" action="update-user" method="post">

                      <h1 id="title">Th??ng tin ng?????i d??ng</h1>
                      <p style="margin: auto; color: red"></p>
                      <div class="signup__field">
                        <label for="fullname" class="label">H??? t??n</label>
                        <input type="text" name="fullname" id="fullname" class="input-field"
                               autofocus value="<%=user.getFullName()%>">
                      </div>

                      <div class="signup__field">
                        <label for="phone" class="label">S??? ??i???n tho???i</label>
                        <input type="tel" name="phone" id="phone" class="input-field" value="<%=user.getPhone()%>">
                      </div>

                      <div class="signup__field">
                        <label for="email" class="label">Email</label>
                        <input type="email" name="email" id="email" class="input-field" required value="<%=user.getEmail()%>">
                      </div>
                      <%String address = user.getAddress();
                      address = (address==null)?"":address;%>
                      <div class="signup__field">
                        <label for="address" class="label">?????a ch???</label>
                        <input type="text" name="address" id="address" class="input-field"
                               required value="<%=address%>">
                      </div>
                      <input type="hidden" name="uid" value="<%=user.getId()%>">

                      <!-- <div class="signup__amazing">
                         <input type="checkbox" id="amazing" name="amazing">
                         <label for="amazing">I'm amazing</label>
             </div> -->

                      <div class="signup__button">
                        <button id="submit" class="button" type="submit">C???p nh???t</button>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- end th??ng tin user -->
              </div>

              <div class="shop_tabs">
                <div class="row">
                  <!-- <li class="active"><a href="https://www.patinchinhhang.com/shop/">All</a></li> -->
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/danh-muc-san-pham/banh-xe/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2021/07/matter-g13-110mm_3.jpg"
                            width="400" height="400" alt=" B??nh xe"> </a> <a
                          href="https://www.patinchinhhang.com/danh-muc-san-pham/banh-xe/">B??nh
                    xe</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href="https://www.patinchinhhang.com/danh-muc-san-pham/custom-ten-giay/">Custom
                      t??n gi???y</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/danh-muc-san-pham/giay-patin/">
                      <img src="https://www.patinchinhhang.com/wp-content/uploads/2021/07/custom-leader-giay-patin-dua.jpg"
                           width="400" height="400" alt=" Gi??y patin"> </a> <a
                          href="https://www.patinchinhhang.com/danh-muc-san-pham/giay-patin/">Gi??y
                    patin</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/danh-muc-san-pham/linh-kien/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2021/05/frame-giay-patin-3-banh-flying-eagle-ultrasonic-tren-tay-roll-plus.jpeg"
                            width="400" height="400" alt=" Linh ki???n"> </a> <a
                          href="https://www.patinchinhhang.com/danh-muc-san-pham/linh-kien/">Linh
                    ki???n</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/danh-muc-san-pham/phu-kien/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2019/04/bao-ho-flying-eagle-V5-HONG.jpg"
                            width="400" height="400" alt=" Ph??? ki???n"> </a> <a
                          href="https://www.patinchinhhang.com/danh-muc-san-pham/phu-kien/">Ph???
                    ki???n</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href="https://www.patinchinhhang.com/danh-muc-san-pham/thuong-hieu/">Th????ng
                      hi???u</a>
                  </div>
                </div>

              </div>

            </div>
            <div id="secondary" class="col-12 col-lg-3 sidebar-shop order-lg-first">
              <aside id="woocommerce_product_categories-1"
                     class="widget woocommerce widget_product_categories">
                <h3 class="widget-title"><span>Danh m???c</span></h3>
                <ul class="product-categories">
                  <li class="cat-item cat-item-245"><a
                          href="thongtinUser.html" style="font-weight: bold;">Th??ng tin t??i kho???n</a></li>
                  <li class="cat-item cat-item-123"><a
                          href="doimk.html">?????i m???t kh???u</a></li>
                  <li class="cat-item cat-item-15"><a
                          href="">Danh s??ch ????n h??ng</a></li>
                </ul>
              </aside>



            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- brand logo -->
    <!-- end brand logo -->
    <jsp:include page="footer.jsp"></jsp:include>
</body>

</html>