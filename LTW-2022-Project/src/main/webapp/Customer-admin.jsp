﻿<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Area | Users</title>
    <!-- Bootstrap core CSS -->
    <link href="css-admin/bootstrap.min.css" rel="stylesheet">
    <link href="css-admin/style.css" rel="stylesheet">
    <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
</head>

<body>

    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="logoadmin">
                    <a  href="index-admin.jsp"><img class="logo" src="image-admin/logo.jpg" alt=""></a>
                    <a class="navbar-brand" href="#">Admin - RollPlus</a>
                  </div>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index-admin.jsp">Trang quản trị</a></li>
            <li><a href="pages-admin.jsp">Quản lý trang</a></li>
            <li><a href="posts-admin.jsp">Quản lý bài viết</a></li>
            <li><a href="users-admin.jsp">Quản lý tài khoản</a></li>
            <li class="active"><a href="Customer-admin.jsp">Quản lý khách hàng</a></li>
            <li><a href="product-admin.jsp">Quản lý sản phẩm</a></li>
            <li><a href="hoadon-admin.jsp">Quản lý hóa đơn</a></li>
            <li><a href="lienhe-admin.jsp">Liên hệ</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Chào bạn, RollPlus</a></li>
                    <li><a href="login-admin.jsp">Đăng xuất</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>

    <header id="header">
        <div class="container">
            <div class="row">
                <div class="col-md-10">
                    <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Khách hàng <small> Manage Site Customer
                            </small></h1>
                </div>
                <div class="col-md-2">
                    <div class="dropdown create">
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            Thêm nội dung
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a type="button" data-toggle="modal" data-target="#addPage">Thêm trang</a></li>
                            <li><a href="blog_add-admin.jsp">Thêm bài viết</a></li>
                            <li><a href="user_add-admin.jsp">Thêm tài khoản</a></li>
                            <li><a href="product_add-admin.jsp" type="button" >Thêm sản phẩm</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section id="breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="index-admin.jsp">Trang quản trị </a></li>
                <li class="active">Quản lý khách hàng</li>
            </ol>
        </div>
    </section>

    <section id="main">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="list-group">
                        <a href="index-admin.jsp" class="list-group-item ">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Trang quảng trị
                        </a>
                        <a href="pages-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Quản lý trang <span class="badge">4</span></a>
              <a href="posts-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Quản lý bài viết <span class="badge">6</span></a>
              <a href="users-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Quản lý tài khoản <span class="badge">4</span></a>
              <a href="Customer-admin.jsp" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Quản lý khách hàng <span class="badge">8</span></a>
              <a href="product-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Quản lý sản phẩm <span class="badge">6</span></a>
              <a href="hoadon-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Quản lý hóa đơn<span class="badge">5</span></a>
              <a href="lienhe-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Liên hệ <span class="badge">6</span></a>

                            </div>

                   
                </div>
                <div class="col-md-9">

                    <!-- Website Overview -->
                    <div class="panel panel-default">
                        <div class="panel-heading main-color-bg">
                            <h3 class="panel-title">Quản lý khách hàng</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <input class="form-control" type="text" placeholder="Tìm khách hàng...">
                                </div>
                            </div>
                            <br>
                            <table class="table table-striped table-hover">
                                <tr>
                                    <th>STT</th>
                                    <th>Mã khách hàng</th>
                                    <th>Tên khách hàng</th>
                                    <th>Địa chỉ</th>
                                    <th>Số điện thoại</th>
                                    <th>Email</th>

                                </tr>
                                <tr>
                                    <td>01</td>
                                    <td>KH-S162636</td>
                                    <td>Trần Thị Sa</td>
                                    <td>Phú Yên</td>
                                    <td>098765432 </td>
                                    <td>Sabg@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>02</td>
                                    <td>KH-K16636</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>TPHCM</td>
                                    <td>01235343</td>
                                    <td>Nguyenvana@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>03</td>
                                    <td>KH-P162636</td>
                                    <td>Hoàng Quốc Cẩn</td>
                                    <td>Đà Nẵng</td>
                                    <td>048484932</td>
                                    <td>cangb@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>04</td>
                                    <td>KH-Q162636</td>
                                    <td>Nguyễn Thị Bé</td>
                                    <td>TPHCM</td>
                                    <td>00000000000</td>
                                    <td>nguyenbe@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>05</td>
                                    <td>KH-S162636</td>
                                    <td>Trần Thị Sa</td>
                                    <td>Phú Yên</td>
                                    <td>098765432 </td>
                                    <td>Sabg@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>06</td>
                                    <td>KH-K16636</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>TPHCM</td>
                                    <td>01235343</td>
                                    <td>nguyenvana@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>07</td>
                                    <td>KH-P162636</td>
                                    <td>Hoàng Quốc Cẩn</td>
                                    <td>Đà Nẵng</td>
                                    <td>048484932</td>
                                    <td>cangb@gmail.com</td>
                                </tr>
                                <tr>
                                    <td>08</td>
                                    <td>KH-Q162636</td>
                                    <td>Trần Thị Sa </td>
                                    <td>TPHCM</td>
                                    <td>0000000000</td>
                                    <td>Sabg@gmail.com</td>
                                </tr>
                                
                            </table>
                        </div>
                    </div>

                </div>
            </div>
    </section>



    <footer id="footer">
        <p>Admin - RollPlus &copy; 2022</p>
      </footer>

    <!-- Modals -->

    <!-- Add Page -->
    <div class="modal fade" id="addPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Add Page</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Page Title</label>
                            <input type="text" class="form-control" placeholder="Page Title">
                        </div>
                        <div class="form-group">
                            <label>Page Body</label>
                            <textarea name="editor1" class="form-control" placeholder="Page Body"></textarea>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Published
                            </label>
                        </div>
                        <div class="form-group">
                            <label>Meta Tags</label>
                            <input type="text" class="form-control" placeholder="Add Some Tags...">
                        </div>
                        <div class="form-group">
                            <label>Meta Description</label>
                            <input type="text" class="form-control" placeholder="Add Meta Description...">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        CKEDITOR.replace('editor1');
    </script>

    <!-- Bootstrap core JavaScript
  ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js-admin/bootstrap.min.js"></script>
</body>

</html>