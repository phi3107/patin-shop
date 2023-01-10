<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.entity.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<% List<Product> list = (List<Product>) request.getAttribute("listP");
    for (Product p : list) {
%>
    <p><%=p.getTensp()%></p>
<%}%>
<h2>Hello</h2>



</body>
</html>
