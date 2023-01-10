<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Area | Edit Page</title>
    <!-- Bootstrap core CSS -->
    <link href="css-admin/bootstrap.min.css" rel="stylesheet">
    <link href="css-admin/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-productadd.css">
    <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
  </head>
  <body>

    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
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
                    <li><a href="Customer-admin.jsp">Quản lý khách hàng</a></li>
                    <li class="active"><a href="product-admin.jsp">Quản lý sản phẩm</a></li>
                    <li><a href="hoadon-admin.jsp">Quản lý hóa đơn</a></li>
                    <li><a href="lienhe-admin.jsp">Liên hệ</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Chào bạn, RollPlus</a></li>
            <li><a href="login-admin.jsp">Đăng xuất</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <header id="header">
      <div class="container">
        <div class="row">
          <div class="col-md-10">
            <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Chỉnh sửa sản phẩm <small> Manage Site Product </small></h1>
          </div>
          <div class="col-md-2">
            <div class="dropdown create">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
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
          <li><a href="index-admin.jsp">Quản lý trang</a></li>
          <li><a href="product-admin.jsp">Quản lý sản phẩm</a></li>
          <li class="active">Chỉnh sửa sản phẩm</li>
        </ol>
      </div>
    </section>

    <section id="main">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="list-group">
              <a href="index-admin.jsp" class="list-group-item ">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Trang quản trị
              </a>
              <a href="pages-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Quản lý trang <span class="badge">4</span></a>
              <a href="posts-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Quản lý bài viết <span class="badge">6</span></a>
              <a href="users-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Quản lý tài khoản <span class="badge">4</span></a>
              <a href="Customer-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Quản lý khách hàng <span class="badge">8</span></a>
              <a href="product-admin.jsp" class="list-group-item active main-color-bg"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Quản lý sản phẩm <span class="badge">6</span></a>
              <a href="hoadon-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Quản lý hóa đơn<span class="badge">5</span></a>
              <a href="lienhe-admin.jsp" class="list-group-item"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Liên hệ <span class="badge">6</span></a>
   </div>

     
          </div>
          <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Thêm - sửa sản phẩm</h3>
              </div>
              <div class="panel-body">
                <table id="product_add" class="form">
                    <!-- BEGIN block_error -->
                    <tr>
                        <th>
                            Mã sản phẩm  :<span class="note">*</span>
                            <input value="FE FAST FOWARD">
                        </th>
                        <td>
                            <asp:TextBox runat="server" type="text" size="70" ID="txtName"></asp:TextBox>

                        </td>
                        
                    </tr>
                    <!-- END block_error -->
                    <tr>
                        <th>
                            Tên sản phẩm :<span class="note">*</span>
                            <input class="name" value="MŨ BẢO HỘ PATIN FAST FOWARD" >
                        </th>
                        <td>
                            <asp:TextBox runat="server" type="text" size="70" ID="txtName"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Giá sản phẩm :<span class="note">*</span>
                            <input class="email" value="970.00 VND">
                        </th>
                        <td>
                            <asp:TextBox runat="server" type="text" size="10" ID="txtGiaMoi"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Loại sản phẩm :<span class="note">*</span>
                            <input class="phone" value="MBH-1">
                        </th>
                        <td>
                            <asp:TextBox runat="server" type="text" size="10" ID="txtLoai"></asp:TextBox>
                        </td>
                    </tr>
                    
                   
                   
                    <tr>
                        <th valign="top">
                            Hình ảnh :
                        </th>
                        <td>
                            <CKEditor:CKEditorControl ID="CKEditor_ThongTin" runat="server"></CKEditor:CKEditorControl>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top">
                            
                        </th>
                        <td>
                            <asp:CheckBox id="ChkHot" runat="server" Text="Sản phẩm nổi bật"></asp:CheckBox>
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:Panel ID="PnImg1" runat="server" Visible="false">
                                <asp:Label ID="LblImg1" runat="server"></asp:Label>
                                <img src="image-admin/sp5.jpg" /><a></a>
                            </asp:Panel>
                        </td>
                        <td>
                          
                        </td>
                    </tr>
                  
                    
                    
                </table>
                <br>
                <table id="btn_add_edit" class="page">
                    <tr>
                        <td>
                            <asp:Panel ID="PnAdd" runat="server">
                                <input type="submit" class="button" runat="server" id="BtnSubmit" value="Thêm mới"
                                    onserverclick="BtnSubmit_ServerClick">
                                        </asp:Panel>
                            <asp:Panel ID="PnEdit" runat="server">
                                <input type="submit" class="button" runat="server" id="BtnEdit" value="Cập nhập" onserverclick="BtnEdit_ServerClick">
                            </asp:Panel>
                            <asp:Panel ID="PnQuayLai" runat="server">
                                <input type="button" value="Quay lại" onclick="javascript:history.go(-1)" class="button">
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
              </div>
              </div>

          </div>
        </div>
      </div>
    </section>

    <footer id="footer">
      <p>Admin - RollPlus, &copy; 2022</p>
    </footer>

    <!-- Modals -->

    <!-- Add Page -->
    <div class="modal fade" id="addPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form>
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
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
     CKEDITOR.replace( 'editor1' );
 </script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js-admin/bootstrap.min.js"></script>
  </body>
</html>
