<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bigdeal - Multi-purpopse E-commerce Html Template</title>

    <style>
        .error {
            color: red;
        }
    </style>

    <jsp:include page="common/meta.jsp"/>

    <jsp:include page="common/css.jsp"/>
</head>
<body>

<jsp:include page="common/loader.jsp"/>
<jsp:include page="common/header.jsp"/>

<!-- breadcrumb start -->
<div class="breadcrumb-main ">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="breadcrumb-contain">
                    <div>
                        <h2>register</h2>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                            <li><a href="#">register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb End -->

<!--section start-->
<section class="login-page section-big-py-space bg-light">
    <div class="custom-container">
        <div class="row">
            <div class="col-lg-4 offset-lg-4">
                <div class="theme-card">
                    <h3 class="text-center">Create account</h3>
                    <form:form modelAttribute="customerRegister" method="post" cssClass="theme-form">
                        <div class="form-row">
                            <div class="col-md-12 form-group">
                                <label for="name">Name</label>
                                <form:input path="name" cssClass="form-control" id="name" placeholder="Name" required=""/>
                                <span><form:errors path="name" cssClass="error"/></span>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="surname">Surname</label>
                                <form:input path="surname" cssClass="form-control" id="surname" placeholder="Surname" required=""/>
                                <span><form:errors path="surname" cssClass="error"/></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 form-group">
                                <label for="email">email</label>
                                <form:input path="email" cssClass="form-control" id="email" placeholder="Email" required=""/>
                                <span><form:errors path="email" cssClass="error"/></span>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="password">Password</label>
                                <form:password path="password" class="form-control" id="password" placeholder="Enter your password" required=""/>
                                <span><form:errors path="password" cssClass="error"/></span>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="passwordConfirmation">Password</label>
                                <form:password path="passwordConfirmation" cssClass="form-control" id="passwordConfirmation" placeholder="Enter your password again" required=""/>
                                <span><form:errors path="passwordConfirmation" cssClass="error"/></span>
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="submit" class="btn btn-normal">Create Account</input>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 ">
                                <p >Have you already account? <a href="/login" class="txt-default">click</a> here to &nbsp;<a href="login.html" class="txt-default">Login</a></p>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Section ends-->

<jsp:include page="common/footer.jsp"/>

<jsp:include page="common/goto.jsp"/>
<jsp:include page="common/my-account.jsp"/>


<jsp:include page="common/js.jsp"/>
</body>
</html>
