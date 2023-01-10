<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.TypeOfProduct" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.Brand" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Phi
  Date: 1/10/2023
  Time: 6:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi" prefix="og: https://ogp.me/ns#"
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
</head>

<body
        class="archive post-type-archive post-type-archive-product theme-sneaker woocommerce-shop woocommerce woocommerce-page woocommerce-js wpb-js-composer js-comp-ver-6.10.0 vc_responsive mmm mega_main_menu-2-2-2">
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


            <a href="https://www.patinchinhhang.com">Trang chủ</a>

            <span class="separator">/</span>


            Shop



          </nav>
        </div>
      </div>
      <div class="shop_content">
        <div class="container shop_content-inner">
          <div class="row">
            <div id="archive-product"
                 class="page-content col-12 col-lg-9 grid-view main-column order-lg-last">
              <div class="shop_tabs">
                <div class="row">
                  <!-- <li class="active"><a href="https://www.patinchinhhang.com/shop/">All</a></li> -->
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/banh-xe/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2021/07/matter-g13-110mm_3.jpg"
                            width="400" height="400" alt=" Bánh xe"> </a> <a
                          href="https://www.patinchinhhang.com/banh-xe/">Bánh xe</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href="https://www.patinchinhhang.com/custom-ten-giay/">Custom tên
                      giầy</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/giay-patin/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2021/07/custom-leader-giay-patin-dua.jpg"
                            width="400" height="400" alt=" Giày patin"> </a> <a
                          href="https://www.patinchinhhang.com/giay-patin/">Giày patin</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/linh-kien/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2021/05/frame-giay-patin-3-banh-flying-eagle-ultrasonic-tren-tay-roll-plus.jpeg"
                            width="400" height="400" alt=" Linh kiện"> </a> <a
                          href="https://www.patinchinhhang.com/linh-kien/">Linh kiện</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/phu-kien/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2019/04/bao-ho-flying-eagle-V5-HONG.jpg"
                            width="400" height="400" alt=" Phụ kiện"> </a> <a
                          href="https://www.patinchinhhang.com/phu-kien/">Phụ kiện</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href="https://www.patinchinhhang.com/thuong-hieu/">Thương hiệu</a>
                  </div>
                </div>

              </div>
              <div class="archive-border">
                <!-- shop banner -->
                <!-- end shop banner -->
                <header class="entry-header shop-title">
                  <h1 class="entry-title">Shop</h1>
                </header>
                <div class="page-description">
                  <h1>Giày trượt patin và phụ kiện patin chính hãng tại TP.HCM</h1>
                  <h2>10 năm kinh nghiệm ăn nằm cùng patin</h2>
                  <p>Hơn 10 năm làm việc trong ngành <strong>giày trượt</strong>,&nbsp;từ phát
                    triển phong trào, tham gia các giải đấu patin trong và ngoài nước, đến phát
                    triển giày trượt chất lựơng, và là một thành viên trong <strong>liên đoàn
                      trượt băng Việt Nam SFV</strong>, <strong>Roll Plus</strong> cam kết
                    cũng cấp <span style="color: #ff9900"><strong>giày trượt patin chính
                                                    hãng</strong></span> chất lượng cùng với đó là những ưu đãi quà tặng
                    cao nhất thị trường. Hiện Roll Plus là nhà bán lẻ trực tuyến chính thức cho
                    hãng giày trượt nổi tiếng <span style="color: #333399"><a
                            style="color: #333399"
                            href="https://rollplus.vn/gioi-thieu-hang-giay-patin-flying-eagle-skates/"><strong>Flying
                                                        Eagle Skates</strong></a></span></p>
                  <p>Cùng với đó chúng tôi đang phát triển kênh thông tin hữu ích về <strong>bộ
                    môn patin</strong> tại <span style="color: #ff0000"><strong><a
                          style="color: #ff0000"
                          href="http://youtube.com/c/rolllplus">kênh youtube Roll
                                                        Plus</a></strong></span></p>
                  <p>&nbsp;</p>
                </div>
                <div class="toolbar">
                  <div class="toolbar-inner">
                    <div class="view-mode">
                      <label>View on</label>
                      <a href="#" class="grid active" title="Grid">Grid</a>
                      <a href="#" class="list" title="List">List</a>
                    </div>
                    <div class="woocommerce-notices-wrapper"></div>
<%--                    <p class="woocommerce-result-count">--%>
<%--                      Hiển thị 1–16 của 95 kết quả</p>--%>
                    <form class="woocommerce-ordering hidden-xs" method="get">
                      <div class="orderby-wrapper">
                        <label>Sort By :</label>
                        <select name="orderby" class="orderby" style="display: none;">
                          <option value="menu_order" selected="selected">Thứ tự mặc định
                          </option>
                          <option value="popularity">Thứ tự theo mức độ phổ biến</option>
                          <option value="date">Mới nhất</option>
                          <option value="price">Thứ tự theo giá: thấp đến cao</option>
                          <option value="price-desc">Thứ tự theo giá: cao xuống thấp
                          </option>
                        </select>

                      </div>
                      <input type="hidden" name="paged" value="1">
                    </form>
                    <div class="clearfix"></div>
                  </div>
                </div>

                <!-- list product -->
                <div class="shop-products row products sidebar grid-view">
                  <div class="shop-products-inner">
                    <div class="row">
                      <% List<Product> list = (List<Product>)  request.getAttribute("listP");
                      for (Product p: list){%>
                      <div
                              class=" item-col col-6 col-sm-6 col-md-4 col-xl-3 post-2285 product type-product status-publish has-post-thumbnail product_cat-flying-eagle product_cat-phu-kien pa_kich-co-l-2 pa_kich-co-m-2 pa_kich-co-s-2 pa_kich-co-xl pa_mau-sac-den last outofstock shipping-taxable purchasable product-type-variable">
                        <div class="product-wrapper gridview">
                          <div class="list-col4">
                            <div class="product-image">
                              <a href="detail?pid=<%=p.getId()%>"
                                 class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
                                <img width="300" height="300"
                                     src="<%=p.getMain_img()%>"
                                     class="primary_image" alt=""><img width="300"
                                                                       height="300"
                                                                       src="<%=p.getSub_img()==null?"":p.getSub_img()%>"
                                                                       class="secondary_image" alt="" decoding="async"
                                                                       loading="lazy"
                                                                       srcset=""
                                                                       sizes="(max-width: 300px) 100vw, 300px">
                                <!-- end sale label -->
                              </a>
                              <div class="count-down">
                              </div>
                            </div>
                          </div>
                          <div class="list-col8">
                            <div class="product-category-rating">
                              <div class="product-category">
                                <a href="https://www.patinchinhhang.com/flying-eagle/"
                                   rel="tag">Flying Eagle</a>, <a
                                      href="https://www.patinchinhhang.com/phu-kien/"
                                      rel="tag">Phụ kiện</a>
                              </div>
                              <!-- hook rating -->
                            </div>
                            <div class="product-name">
                              <h2 class="woocommerce-loop-product__title"><%=p.getTensp()%></h2> <a
                                    href="https://www.patinchinhhang.com/bo-bao-ho-patin-flying-eagle-armour-x/"><%=p.getTensp()%></a>
                            </div>
                            <div class="price-box">
                              <div class="price-box-inner">
                                                                    <span class="woocommerce-Price-amount amount"><bdi><%=p.getPrice()%>&nbsp;<span
                                                                            class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                              </div>
                            </div>
                            <!-- end price -->
                            <div class="product-button">
                              <div class="add-to-cart">
                                <p class="product woocommerce add_to_cart_inline "
                                   style="border:4px solid #ccc; padding: 12px;">
                                                                        <span
                                                                                class="woocommerce-Price-amount amount"><bdi><%=p.getPrice()%><span
                                                                                class="woocommerce-Price-currencySymbol">₫</span></bdi></span><a
                                        href="https://www.patinchinhhang.com/bo-bao-ho-patin-flying-eagle-armour-x/"
                                        data-quantity="1"
                                        class="button wp-element-button product_type_variable"
                                        data-product_id="2285" data-product_sku=""
                                        aria-label="Lựa chọn cho “<%=p.getTensp()%>”"
                                        rel="nofollow">Lựa chọn các tùy chọn</a></p>
                              </div>

                            </div>
                          </div>
                        </div>
                        <div class="product-wrapper listview">
                          <div class="row">
                            <div class="list-col4">
                              <div class="product-image">
                                <a href="https://www.patinchinhhang.com/bo-bao-ho-patin-flying-eagle-armour-x/"
                                   class="woocommerce-LoopProduct-link woocommerce-loop-product__link">
                                  <img width="300" height="300"
                                       src="<%=p.getMain_img()%>>"
                                       class="primary_image" alt=""><img
                                        width="300" height="300"
                                        src="<%=p.getSub_img()%>"
                                        class="secondary_image" alt=""
                                        decoding="async" loading="lazy"
                                        srcset=""
                                        sizes="(max-width: 300px) 100vw, 300px">
                                  <!-- end sale label -->
                                </a>
                              </div>
                            </div>
                            <div class="list-col8">
                              <div class="product-category">
                                <a href="https://www.patinchinhhang.com/flying-eagle/"
                                   rel="tag">Flying Eagle</a>, <a
                                      href="https://www.patinchinhhang.com/phu-kien/"
                                      rel="tag">Phụ kiện</a>
                              </div>
                              <div class="product-name">
                                <h2 class="woocommerce-loop-product__title"><%=p.getTensp()%></h2> <a
                                      href="https://www.patinchinhhang.com/bo-bao-ho-patin-flying-eagle-armour-x/"><%=p.getTensp()%></a>
                              </div>
                              <!-- hook rating -->
                              <div class="price-box">
                                <div class="price-box-inner">
                                                                        <span
                                                                                class="woocommerce-Price-amount amount"><bdi><%=p.getPrice()%>&nbsp;<span
                                                                                class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                                </div>
                              </div>
                              <!-- end price -->
                              <div class="product-desc">
                                <p><%=p.getDesc()%></p>
                              </div>
                              <!-- end desc -->
                              <div class="product-button">
                                <div class="add-to-cart">
                                  <p class="product woocommerce add_to_cart_inline "
                                     style="border:4px solid #ccc; padding: 12px;">
                                                                            <span
                                                                                    class="woocommerce-Price-amount amount"><bdi><%=p.getPrice()%><span
                                                                                    class="woocommerce-Price-currencySymbol">₫</span></bdi></span><a
                                          href="https://www.patinchinhhang.com/bo-bao-ho-patin-flying-eagle-armour-x/"
                                          data-quantity="1"
                                          class="button wp-element-button product_type_variable"
                                          data-product_id="2285"
                                          data-product_sku=""
                                          aria-label="Lựa chọn cho “<%=p.getTensp()%>”"
                                          rel="nofollow">Lựa chọn các tùy chọn</a>
                                  </p>
                                </div>

                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <%}%>
<%--                      end loop here--%>
                    </div>
                  </div>
                </div>
                <nav class="woocommerce-pagination">
                  <ul class="page-numbers">
                    <li><span aria-current="page" class="page-numbers current">1</span></li>
                    <li><a class="page-numbers"
                           href="https://www.patinchinhhang.com/shop/page/2/">2</a></li>
                    <li><a class="page-numbers"
                           href="https://www.patinchinhhang.com/shop/page/3/">3</a></li>
                    <li><a class="page-numbers"
                           href="https://www.patinchinhhang.com/shop/page/4/">4</a></li>
                    <li><a class="page-numbers"
                           href="https://www.patinchinhhang.com/shop/page/5/">5</a></li>
                    <li><a class="page-numbers"
                           href="https://www.patinchinhhang.com/shop/page/6/">6</a></li>
                    <li><a class="next page-numbers"
                           href="https://www.patinchinhhang.com/shop/page/2/">next</a></li>
                  </ul>
                </nav>
                <div class="clearfix"></div>
              </div>
            </div>
            <% List< TypeOfProduct> listT = (List<TypeOfProduct>) request.getAttribute("listT");
              List< Brand> listB = (List<Brand>) request.getAttribute("listB");%>
            <div id="secondary" class="col-12 col-lg-3 sidebar-shop order-lg-first">
              <aside id="woocommerce_product_categories-1"
                     class="widget woocommerce widget_product_categories">
                <h3 class="widget-title"><span>Danh mục sản phẩm</span></h3>
                <ul class="product-categories">
                  <% for (TypeOfProduct t: listT){%>
                  <li class="cat-item cat-item-245"><a
                          href="Type?tid=<%=t.getId()%>"><%=t.getName()%></a></li> <%}%>
                  <% for (Brand b: listB){%>
                  <li class="cat-item cat-item-245"><a
                          href="Brand?bid=<%=b.getId()%>"><%=b.getName()%></a></li> <%}%>
                </ul>
              </aside>
              <!-- <aside id="woocommerce_price_filter-1" class="widget woocommerce widget_price_filter">
                  <h3 class="widget-title"><span>Lọc giá tiền</span></h3>
                  <form method="get" action="https://www.patinchinhhang.com/shop/">
                      <div class="price_slider_wrapper">
                          <div class="price_slider ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                              style="">
                              <div class="ui-slider-range ui-corner-all ui-widget-header"
                                  style="left: 0%; width: 100%;"></div><span tabindex="0"
                                  class="ui-slider-handle ui-corner-all ui-state-default"
                                  style="left: 0%;"></span><span tabindex="0"
                                  class="ui-slider-handle ui-corner-all ui-state-default"
                                  style="left: 100%;"></span>
                          </div>
                          <div class="price_slider_amount" data-step="10">
                              <label class="screen-reader-text" for="min_price">Giá thấp nhất</label>
                              <input type="text" id="min_price" name="min_price" value="0"
                                  data-min="0" placeholder="Giá thấp nhất" style="display: none;">
                              <label class="screen-reader-text" for="max_price">Giá cao nhất</label>
                              <input type="text" id="max_price" name="max_price" value="15350000"
                                  data-max="15350000" placeholder="Giá cao nhất"
                                  style="display: none;">
                              <button type="submit" class="button wp-element-button">Lọc</button>
                              <div class="price_label" style="">
                                  Giá <span class="from">0&nbsp;₫</span> — <span
                                      class="to">15.350.000&nbsp;₫</span>
                              </div>
                              <div class="clear"></div>
                          </div>
                      </div>
                  </form>

              </aside> -->
              <aside id="woocommerce_layered_nav-1"
                     class="widget woocommerce widget_layered_nav woocommerce-widget-layered-nav">
                <h3 class="widget-title"><span>Màu sắc</span></h3>
                <form method="get" action="https://www.patinchinhhang.com/shop/"
                      class="woocommerce-widget-layered-nav-dropdown"><select
                        class="woocommerce-widget-layered-nav-dropdown dropdown_layered_nav_mau-sac select2-hidden-accessible"
                        tabindex="-1" aria-hidden="true">
                  <option value="">Bất kỳ Màu sắc</option>
                  <option value="3-mau">3 màu</option>
                  <option value="bo-12-cai">Bộ 12 cái</option>
                  <option value="bo-16-cai">Bộ 16 cái</option>
                  <option value="cam">Cam</option>
                  <option value="custom">Custom</option>
                  <option value="den">Đen</option>
                  <option value="den-xanh-duong">Đen - xanh dương</option>
                  <option value="den-do">Đen đỏ</option>
                  <option value="den-hong">Đen hồng</option>
                  <option value="do">Đỏ</option>
                  <option value="hong">Hồng</option>
                  <option value="tim">Tím</option>
                  <option value="trang">Trắng</option>
                  <option value="trang-den">Trắng đen</option>
                  <option value="trang-hong">Trắng hồng</option>
                  <option value="trang-xanh">Trắng xanh</option>
                  <option value="vang">Vàng</option>
                  <option value="vang-gold">Vàng - Gold</option>
                  <option value="xam">Xám</option>
                  <option value="xanh-duong">Xanh dương</option>
                  <option value="xanh-la">Xanh lá</option>
                  <option value="xanh-reu">Xanh rêu</option>
                </select><input
                        type="hidden" name="filter_mau-sac" value=""></form>
              </aside>
              <aside id="woocommerce_product_tag_cloud-1"
                     class="widget woocommerce widget_product_tag_cloud">
                <h3 class="widget-title"><span>Tags</span></h3>
                <div class="tagcloud"><a
                        href="https://www.patinchinhhang.com/tu-khoa-san-pham/baoho/"
                        class="tag-cloud-link tag-link-225 tag-link-position-1"
                        style="font-size: 11.6pt;" aria-label="baoho (2 sản phẩm)">baoho</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/baohopatin/"
                     class="tag-cloud-link tag-link-227 tag-link-position-2"
                     style="font-size: 11.6pt;"
                     aria-label="baohopatin (2 sản phẩm)">baohopatin</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/flyingeagle/"
                     class="tag-cloud-link tag-link-226 tag-link-position-3"
                     style="font-size: 14pt;"
                     aria-label="flyingeagle (3 sản phẩm)">flyingeagle</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin/"
                     class="tag-cloud-link tag-link-253 tag-link-position-4"
                     style="font-size: 8pt;" aria-label="giay patin (1 sản phẩm)">giay patin</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin-chinh-hang/"
                     class="tag-cloud-link tag-link-254 tag-link-position-5"
                     style="font-size: 8pt;" aria-label="giay patin chinh hang (1 sản phẩm)">giay
                    patin chinh hang</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin-flying-eagle-leader/"
                     class="tag-cloud-link tag-link-255 tag-link-position-6"
                     style="font-size: 8pt;"
                     aria-label="giay patin flying eagle leader (1 sản phẩm)">giay patin flying
                    eagle leader</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin-speed/"
                     class="tag-cloud-link tag-link-252 tag-link-position-7"
                     style="font-size: 8pt;" aria-label="giay patin speed (1 sản phẩm)">giay
                    patin speed</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/patin/"
                     class="tag-cloud-link tag-link-251 tag-link-position-8"
                     style="font-size: 8pt;" aria-label="patin (1 sản phẩm)">patin</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/tuideo/"
                     class="tag-cloud-link tag-link-229 tag-link-position-9"
                     style="font-size: 22pt;" aria-label="tuideo (9 sản phẩm)">tuideo</a>
                </div>
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
