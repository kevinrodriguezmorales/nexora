
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NEXORA</title>
        <link rel="stylesheet" href="resources/styles/home.css?v=1.0.3">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body class="wrapper-main">
        <div class="overall-wrapper">
            <div class="menu outline flex-container flex-column flex-justify-between">
                <div class="menu-top">
                    <div class="logo content-center">
                        <img src="resources/images/nexora.svg" alt="alt"/>
                    </div>
                    <div class="menu-content">
                        <a class="menu-item" href="Controller?menu=DashboardView" target="innerWindow">
                            <div class="menu-item__icon">
                                <span class="material-icons">dashboard</span>
                            </div>
                            <span>Dashboard</span>
                        </a>
                        <a class="menu-item" href="Controller?menu=UserListView&action=ListUsers" target="innerWindow">
                            <div class="menu-item__icon">
                                <span class="material-icons">badge</span>
                            </div>
                            <span>Usuarios</span>
                        </a>
                        <a class="menu-item" href="Controller?menu=ContactListView" target="innerWindow">
                            <div class="menu-item__icon">
                                <span class="material-icons">groups</span>
                            </div>
                            <span>Contactos</span>
                        </a>
                        <a class="menu-item" href="Controller?menu=ProductListView" target="innerWindow">
                            <div class="menu-item__icon">
                                <span class="material-icons">sell</span>
                            </div>
                            <span>Productos</span>
                        </a>
                        <a class="menu-item" href="Controller?menu=SalesView" target="innerWindow">
                            <div class="menu-item__icon">
                                <span class="material-icons">receipt</span>
                            </div>
                            <span>Ventas</span>
                        </a>
                    </div>
                </div>
                <div class="menu-bottom">
                    <div class="user-summary flex-container flex-align-center spacing-medium" id="userSummaryElement">
                        <div class="user-photo"><img src="${user.getPhoto()}"></div>
                        <div class="user-account flex-container flex-column spacing-voided">
                            <span class="user-name caption text-weight-500">${user.getFullname()}</span>
                            <span class="user-email text-weight-500 caption-minimum">${user.getEmail()}</span>
                        </div>
                        <div class="user-detail">
                            <div class="user-detail__item flex-container flex-justify-between">
                                <span class="user-detail__item-label caption">Cargo</span>
                                <span class="user-detail__item-description uppercase text-weight-500 caption">
                                    <c:choose>
                                        <c:when test="${user.getJobPosition() == '1'}">Administrador</c:when>
                                        <c:when test="${user.getJobPosition() == '2'}">Vendedor</c:when>
                                        <c:when test="${user.getJobPosition() == '3'}">Cajero</c:when>
                                        <c:when test="${user.getJobPosition() == '4'}">Mecánico</c:when>
                                        <c:otherwise>Otro</c:otherwise>
                                    </c:choose>
                                </span>
                            </div>
                            <div class="user-detail__item flex-container flex-justify-between">
                                <span class="user-detail__item-label caption">Asignado a</span>
                                <span class="user-detail__item-description uppercase text-weight-500 caption">${user.getAssignedLocation()}</span>
                            </div>
                        </div>
                        <div class="user-deploy icon-button" id="userDeployElement">
                            <span class="material-icons">keyboard_control_key</span>
                        </div>
                    </div>
                    <form method="POST" action="Validate">
                        <button class="logout-button" type="submit" name="action" value="Logout">
                            <span class="logout-button__description">Cerrar sesión</span>
                            <span class="material-icons">logout</span>
                        </button>
                    </form>
                </div>
            </div>
            <iframe class="inner-window" id="innerWindow" name="innerWindow" frameBorder="0"></iframe>
        </div>

        <script src="resources/scripts/Home.js"></script>
    </body>
</html>
