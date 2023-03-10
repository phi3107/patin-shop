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


            <a href="https://www.patinchinhhang.com">Trang ch???</a>

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
                            width="400" height="400" alt=" B??nh xe"> </a> <a
                          href="https://www.patinchinhhang.com/banh-xe/">B??nh xe</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href="https://www.patinchinhhang.com/custom-ten-giay/">Custom t??n
                      gi???y</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/giay-patin/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2021/07/custom-leader-giay-patin-dua.jpg"
                            width="400" height="400" alt=" Gi??y patin"> </a> <a
                          href="https://www.patinchinhhang.com/giay-patin/">Gi??y patin</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/linh-kien/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2021/05/frame-giay-patin-3-banh-flying-eagle-ultrasonic-tren-tay-roll-plus.jpeg"
                            width="400" height="400" alt=" Linh ki???n"> </a> <a
                          href="https://www.patinchinhhang.com/linh-kien/">Linh ki???n</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href=" https://www.patinchinhhang.com/phu-kien/"> <img
                            src="https://www.patinchinhhang.com/wp-content/uploads/2019/04/bao-ho-flying-eagle-V5-HONG.jpg"
                            width="400" height="400" alt=" Ph??? ki???n"> </a> <a
                          href="https://www.patinchinhhang.com/phu-kien/">Ph??? ki???n</a>
                  </div>
                  <div class="category-tab col-12 col-sm-6 col-xl-3">
                    <a href="https://www.patinchinhhang.com/thuong-hieu/">Th????ng hi???u</a>
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
                  <h1>Gi??y tr?????t patin v?? ph??? ki???n patin ch??nh h??ng t???i TP.HCM</h1>
                  <h2>10 n??m kinh nghi???m ??n n???m c??ng patin</h2>
                  <p>H??n 10 n??m l??m vi???c trong ng??nh <strong>gi??y tr?????t</strong>,&nbsp;t??? ph??t
                    tri???n phong tr??o, tham gia c??c gi???i ?????u patin trong v?? ngo??i n?????c, ?????n ph??t
                    tri???n gi??y tr?????t ch???t l?????ng, v?? l?? m???t th??nh vi??n trong <strong>li??n ??o??n
                      tr?????t b??ng Vi???t Nam SFV</strong>, <strong>Roll Plus</strong> cam k???t
                    c??ng c???p <span style="color: #ff9900"><strong>gi??y tr?????t patin ch??nh
                                                    h??ng</strong></span> ch???t l?????ng c??ng v???i ???? l?? nh???ng ??u ????i qu?? t???ng
                    cao nh???t th??? tr?????ng. Hi???n Roll Plus l?? nh?? b??n l??? tr???c tuy???n ch??nh th???c cho
                    h??ng gi??y tr?????t n???i ti???ng <span style="color: #333399"><a
                            style="color: #333399"
                            href="https://rollplus.vn/gioi-thieu-hang-giay-patin-flying-eagle-skates/"><strong>Flying
                                                        Eagle Skates</strong></a></span></p>
                  <p>C??ng v???i ???? ch??ng t??i ??ang ph??t tri???n k??nh th??ng tin h???u ??ch v??? <strong>b???
                    m??n patin</strong> t???i <span style="color: #ff0000"><strong><a
                          style="color: #ff0000"
                          href="http://youtube.com/c/rolllplus">k??nh youtube Roll
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
<%--                      Hi???n th??? 1???16 c???a 95 k???t qu???</p>--%>
                    <form class="woocommerce-ordering hidden-xs" method="get">
                      <div class="orderby-wrapper">
                        <label>Sort By :</label>
                        <select name="orderby" class="orderby" style="display: none;">
                          <option value="menu_order" selected="selected">Th??? t??? m???c ?????nh
                          </option>
                          <option value="popularity">Th??? t??? theo m???c ????? ph??? bi???n</option>
                          <option value="date">M???i nh???t</option>
                          <option value="price">Th??? t??? theo gi??: th???p ?????n cao</option>
                          <option value="price-desc">Th??? t??? theo gi??: cao xu???ng th???p
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
                                      rel="tag">Ph??? ki???n</a>
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
                                                                            class="woocommerce-Price-currencySymbol">???</span></bdi></span>
                              </div>
                            </div>
                            <!-- end price -->
                            <div class="product-button">
                              <div class="add-to-cart">
                                <p class="product woocommerce add_to_cart_inline "
                                   style="border:4px solid #ccc; padding: 12px;">
                                                                        <span
                                                                                class="woocommerce-Price-amount amount"><bdi><%=p.getPrice()%><span
                                                                                class="woocommerce-Price-currencySymbol">???</span></bdi></span><a
                                        href="https://www.patinchinhhang.com/bo-bao-ho-patin-flying-eagle-armour-x/"
                                        data-quantity="1"
                                        class="button wp-element-button product_type_variable"
                                        data-product_id="2285" data-product_sku=""
                                        aria-label="L???a ch???n cho ???<%=p.getTensp()%>???"
                                        rel="nofollow">L???a ch???n c??c t??y ch???n</a></p>
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
                                      rel="tag">Ph??? ki???n</a>
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
                                                                                class="woocommerce-Price-currencySymbol">???</span></bdi></span>
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
                                                                                    class="woocommerce-Price-currencySymbol">???</span></bdi></span><a
                                          href="https://www.patinchinhhang.com/bo-bao-ho-patin-flying-eagle-armour-x/"
                                          data-quantity="1"
                                          class="button wp-element-button product_type_variable"
                                          data-product_id="2285"
                                          data-product_sku=""
                                          aria-label="L???a ch???n cho ???<%=p.getTensp()%>???"
                                          rel="nofollow">L???a ch???n c??c t??y ch???n</a>
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
                <h3 class="widget-title"><span>Danh m???c s???n ph???m</span></h3>
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
                  <h3 class="widget-title"><span>L???c gi?? ti???n</span></h3>
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
                              <label class="screen-reader-text" for="min_price">Gi?? th???p nh???t</label>
                              <input type="text" id="min_price" name="min_price" value="0"
                                  data-min="0" placeholder="Gi?? th???p nh???t" style="display: none;">
                              <label class="screen-reader-text" for="max_price">Gi?? cao nh???t</label>
                              <input type="text" id="max_price" name="max_price" value="15350000"
                                  data-max="15350000" placeholder="Gi?? cao nh???t"
                                  style="display: none;">
                              <button type="submit" class="button wp-element-button">L???c</button>
                              <div class="price_label" style="">
                                  Gi?? <span class="from">0&nbsp;???</span> ??? <span
                                      class="to">15.350.000&nbsp;???</span>
                              </div>
                              <div class="clear"></div>
                          </div>
                      </div>
                  </form>

              </aside> -->
              <aside id="woocommerce_layered_nav-1"
                     class="widget woocommerce widget_layered_nav woocommerce-widget-layered-nav">
                <h3 class="widget-title"><span>M??u s???c</span></h3>
                <form method="get" action="https://www.patinchinhhang.com/shop/"
                      class="woocommerce-widget-layered-nav-dropdown"><select
                        class="woocommerce-widget-layered-nav-dropdown dropdown_layered_nav_mau-sac select2-hidden-accessible"
                        tabindex="-1" aria-hidden="true">
                  <option value="">B???t k??? M??u s???c</option>
                  <option value="3-mau">3 m??u</option>
                  <option value="bo-12-cai">B??? 12 c??i</option>
                  <option value="bo-16-cai">B??? 16 c??i</option>
                  <option value="cam">Cam</option>
                  <option value="custom">Custom</option>
                  <option value="den">??en</option>
                  <option value="den-xanh-duong">??en - xanh d????ng</option>
                  <option value="den-do">??en ?????</option>
                  <option value="den-hong">??en h???ng</option>
                  <option value="do">?????</option>
                  <option value="hong">H???ng</option>
                  <option value="tim">T??m</option>
                  <option value="trang">Tr???ng</option>
                  <option value="trang-den">Tr???ng ??en</option>
                  <option value="trang-hong">Tr???ng h???ng</option>
                  <option value="trang-xanh">Tr???ng xanh</option>
                  <option value="vang">V??ng</option>
                  <option value="vang-gold">V??ng - Gold</option>
                  <option value="xam">X??m</option>
                  <option value="xanh-duong">Xanh d????ng</option>
                  <option value="xanh-la">Xanh l??</option>
                  <option value="xanh-reu">Xanh r??u</option>
                </select><input
                        type="hidden" name="filter_mau-sac" value=""></form>
              </aside>
              <aside id="woocommerce_product_tag_cloud-1"
                     class="widget woocommerce widget_product_tag_cloud">
                <h3 class="widget-title"><span>Tags</span></h3>
                <div class="tagcloud"><a
                        href="https://www.patinchinhhang.com/tu-khoa-san-pham/baoho/"
                        class="tag-cloud-link tag-link-225 tag-link-position-1"
                        style="font-size: 11.6pt;" aria-label="baoho (2 s???n ph???m)">baoho</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/baohopatin/"
                     class="tag-cloud-link tag-link-227 tag-link-position-2"
                     style="font-size: 11.6pt;"
                     aria-label="baohopatin (2 s???n ph???m)">baohopatin</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/flyingeagle/"
                     class="tag-cloud-link tag-link-226 tag-link-position-3"
                     style="font-size: 14pt;"
                     aria-label="flyingeagle (3 s???n ph???m)">flyingeagle</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin/"
                     class="tag-cloud-link tag-link-253 tag-link-position-4"
                     style="font-size: 8pt;" aria-label="giay patin (1 s???n ph???m)">giay patin</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin-chinh-hang/"
                     class="tag-cloud-link tag-link-254 tag-link-position-5"
                     style="font-size: 8pt;" aria-label="giay patin chinh hang (1 s???n ph???m)">giay
                    patin chinh hang</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin-flying-eagle-leader/"
                     class="tag-cloud-link tag-link-255 tag-link-position-6"
                     style="font-size: 8pt;"
                     aria-label="giay patin flying eagle leader (1 s???n ph???m)">giay patin flying
                    eagle leader</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/giay-patin-speed/"
                     class="tag-cloud-link tag-link-252 tag-link-position-7"
                     style="font-size: 8pt;" aria-label="giay patin speed (1 s???n ph???m)">giay
                    patin speed</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/patin/"
                     class="tag-cloud-link tag-link-251 tag-link-position-8"
                     style="font-size: 8pt;" aria-label="patin (1 s???n ph???m)">patin</a>
                  <a href="https://www.patinchinhhang.com/tu-khoa-san-pham/tuideo/"
                     class="tag-cloud-link tag-link-229 tag-link-position-9"
                     style="font-size: 22pt;" aria-label="tuideo (9 s???n ph???m)">tuideo</a>
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
