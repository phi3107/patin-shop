<%@ page import="java.util.HashMap" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.ProductCart" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: Phi
  Date: 1/10/2023
  Time: 6:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        class="page-template-default page page-id-8 theme-sneaker woocommerce-cart woocommerce-page woocommerce-js wpb-js-composer js-comp-ver-6.10.0 vc_responsive mmm mega_main_menu-2-2-2">
<div class="wrapper">
    <div class="page-wrapper">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="main-container default-page">
            <div class="breadcrumb-container">
                <div class="container">
                    <div class="breadcrumbs"><a href="https://www.patinchinhhang.com/">Home</a><span
                            class="separator">/</span><span> Giỏ hàng</span></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12  ">
                        <header class="entry-header">
                            <h2 class="entry-title">Giỏ hàng</h2>
                        </header>
                        <div class="page-content default-page">
                            <article id="post-8" class="post-8 page type-page status-publish hentry">
                                <div class="entry-content">
                                    <div class="woocommerce">
                                        <div class="woocommerce-notices-wrapper"></div>
                                        <form class="woocommerce-cart-form"
                                              action="https://www.patinchinhhang.com/gio-hang/" method="post">

                                            <table
                                                    class="shop_table shop_table_responsive cart woocommerce-cart-form__contents"
                                                    cellspacing="0">
                                                <thead>
                                                <tr>
                                                    <th class="product-remove">&nbsp;</th>
                                                    <th class="product-thumbnail">&nbsp;</th>
                                                    <th class="product-name">Product</th>
                                                    <th class="product-price">Giá</th>
                                                    <th class="product-quantity">Số lượng</th>
                                                    <th class="product-subtotal">Tổng</th>
                                                </tr>
                                                </thead>
                                                <tbody>

                                                <% HashMap<String, ProductCart> cart = (HashMap<String, ProductCart>) session.getAttribute("cart");
                                                long totalPrice = 0;
                                                for (Map.Entry<String,ProductCart> item: cart.entrySet()){
                                                    ProductCart productCart = item.getValue();
                                                %>

                                                <tr class="woocommerce-cart-form__cart-item cart_item">

                                                    <td class="product-remove">
                                                        <a href="https://www.patinchinhhang.com/gio-hang/?remove_item=03b3de6f4ce899debebd54b572f54bf1&amp;_wpnonce=4e8df54b6f"
                                                           class="remove" aria-label="Remove this item"
                                                           data-product_id="5004" data-product_sku="">×</a>
                                                    </td>

                                                    <td class="product-thumbnail">
                                                        <a
                                                                href="https://www.patinchinhhang.com/balo-dung-giay-patin-flying-eagle-portech/?attribute_pa_mau-sac=den"><img
                                                                width="300" height="300"
                                                                src="<%=productCart.getProduct().getMain_img()%>"
                                                                class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                                                                alt="" decoding="async" loading="lazy"
                                                                srcset="https://www.patinchinhhang.com/wp-content/uploads/2021/08/Balo-Patin-Flying-Eagle-Portech-2-lon-den-300x300.jpg 300w, https://www.patinchinhhang.com/wp-content/uploads/2021/08/Balo-Patin-Flying-Eagle-Portech-2-lon-den-1024x1024.jpg 1024w, https://www.patinchinhhang.com/wp-content/uploads/2021/08/Balo-Patin-Flying-Eagle-Portech-2-lon-den-150x150.jpg 150w, https://www.patinchinhhang.com/wp-content/uploads/2021/08/Balo-Patin-Flying-Eagle-Portech-2-lon-den-768x768.jpg 768w, https://www.patinchinhhang.com/wp-content/uploads/2021/08/Balo-Patin-Flying-Eagle-Portech-2-lon-den-700x700.jpg 700w, https://www.patinchinhhang.com/wp-content/uploads/2021/08/Balo-Patin-Flying-Eagle-Portech-2-lon-den-600x600.jpg 600w, https://www.patinchinhhang.com/wp-content/uploads/2021/08/Balo-Patin-Flying-Eagle-Portech-2-lon-den.jpg 1100w"
                                                                sizes="(max-width: 300px) 100vw, 300px"></a>
                                                    </td>

                                                    <td class="product-name" data-title="Product">
                                                        <a
                                                                href="https://www.patinchinhhang.com/balo-dung-giay-patin-flying-eagle-portech/?attribute_pa_mau-sac=den"><%=productCart.getProduct().getTensp()%></a>
                                                    </td>

                                                    <td class="product-price" data-title="Giá">
                                                                <span class="woocommerce-Price-amount amount"><bdi><%=productCart.getProduct().getPrice()%>&nbsp;<span
                                                                        class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                                                    </td>

                                                    <td class="product-quantity" data-title="Số lượng">
                                                        <div class="quantity">
                                                            <label class="screen-reader-text"
                                                                   for="quantity_63bb465746983">Balo đựng giày
                                                                patin Flying Eagle Portech 2.0 - Đen số
                                                                lượng</label>
                                                            <input type="number" id="quantity_63bb465746983"
                                                                   class="input-text qty text" step="1" min="0"
                                                                   max=""
                                                                   name="cart[03b3de6f4ce899debebd54b572f54bf1][qty]"
                                                                   value="<%=productCart.getQuantity()%>" title="SL" size="4" placeholder=""
                                                                   inputmode="numeric" autocomplete="off">
                                                        </div>
                                                    </td>

                                                    <td class="product-subtotal" data-title="Tổng">
                                                                <span class="woocommerce-Price-amount amount"><bdi><%=productCart.getQuantity()*productCart.getProduct().getPrice()%>&nbsp;<span
                                                                        class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                                                    </td>
                                                </tr>
                                                <%
                                                totalPrice+=productCart.getQuantity()*productCart.getProduct().getPrice();
                                                }%>
                                                <tr>
                                                    <td colspan="6" class="actions">

                                                        <button type="submit" class="button" name="update_cart"
                                                                value="Cập nhật" disabled=""
                                                                aria-disabled="true">Cập nhật</button>


                                                        <input type="hidden" id="woocommerce-cart-nonce"
                                                               name="woocommerce-cart-nonce"
                                                               value="4e8df54b6f"><input type="hidden"
                                                                                         name="_wp_http_referer" value="/gio-hang/">
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>
                                            <div class="row">
                                                <div class="col-12 col-lg-6">
                                                    <div class="coupon">
                                                        <h3 for="coupon_code">Coupon</h3>
                                                        <p>Enter your coupon code if you have one.</p>
                                                        <input type="text" name="coupon_code" class="input-text"
                                                               id="coupon_code" value="" placeholder="Coupon code">
                                                        <input type="submit" class="button" name="apply_coupon"
                                                               value="Apply coupon">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <div class="cart_totals ">


                                                        <h2>Cộng giỏ hàng</h2>

                                                        <table cellspacing="0"
                                                               class="shop_table shop_table_responsive">

                                                            <tbody>
                                                            <tr class="cart-subtotal">
                                                                <th>Tạm tính</th>
                                                                <td data-title="Tạm tính"><span
                                                                        class="woocommerce-Price-amount amount"><bdi><%=totalPrice%>&nbsp;<span
                                                                        class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                                                                </td>
                                                            </tr>






                                                            <tr class="order-total">
                                                                <th>Tổng</th>
                                                                <td data-title="Tổng"><strong><span
                                                                        class="woocommerce-Price-amount amount"><bdi><%=totalPrice%>>&nbsp;<span
                                                                        class="woocommerce-Price-currencySymbol">₫</span></bdi></span></strong>
                                                                </td>
                                                            </tr>


                                                            </tbody>
                                                        </table>

                                                        <div class="wc-proceed-to-checkout">

                                                            <a href="https://www.patinchinhhang.com/thanh-toan/"
                                                               class="checkout-button button alt wc-forward wp-element-button">
                                                                Tiến hành thanh toán</a>
                                                        </div>


                                                    </div>
                                                </div>
                                            </div>
                                        </form>

                                        <div class="cart-collaterals">
                                        </div>

                                    </div>
                                </div>
                            </article>
                            <div id="comments" class="comments-area">
                            </div><!-- #comments .comments-area -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- brand logo -->
            <!-- end brand logo -->
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
