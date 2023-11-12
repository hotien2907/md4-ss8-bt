<%--
  Created by IntelliJ IDEA.
  User: Admin 88
  Date: 11/12/2023
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
</head>
<body>
<h2>Product List</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Manufacturer</th>
        <th>Action</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.manufacturer}</td>
            <td>
                <a href="product?action=view&id=${product.id}">View</a>
                <a href="product?action=edit&id=${product.id}">Edit</a>
                <a href="product?action=delete&id=${product.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="product?action=add">Add Product</a>
</body>
</html>
