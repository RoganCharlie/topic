<%-- 
    Document   : register
    Created on : Mar 25, 2022, 5:29:01 PM
    Author     : ADMIN
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1 class="text-center text-info">REGISTER FOR USER</h1>

<c:if test="${errMsg != null}">
    <div class="alert alert-danger">
        ${errMsg}
    </div>
</c:if>

<c:url value="/register" var="action"/>
<form:form method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <div class="form-group">
        <label>Name</label>
        <form:input path="name" class="form-control" />
        <form:errors path="name" cssClass="text-danger"/>
    </div>
    <div class="form-group">
        <label>Email</label>
        <form:input path="email" class="form-control" />
        <form:errors path="email" cssClass="text-danger"/>
    </div>
    <div class="form-group">
        <label>Username</label>
        <form:input path="username" class="form-control" />
        <form:errors path="username" cssClass="text-danger"/>
    </div>
    <div class="form-group">
        <label>Password</label>
        <form:password path="password" class="form-control" />
        <form:errors path="password" cssClass="text-danger"/>
    </div>
    <div class="form-group">
        <label>Confirm Password</label>
        <form:password path="confirmPassword" class="form-control" />
    </div>
    <div class="form-group">
        <label>Avatar</label>
        <form:input type="file" path="file" class="form-control" />
    </div>
    <input type="submit" value="Register" class="btn btn-danger"/>
</form:form>