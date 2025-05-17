<%-- 
    Document   : Employees
    Created on : 10 may. 2025, 5:47:04 p. m.
    Author     : kevin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/styles/main.css?v=1.0.2">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div class="inner-wrapper">
            <div class="inner-header">
                <div class="secondary-container flex-container full-width flex-justify-between">
                    <h2 class="headline-2">Usuarios</h2>
                    <a href="Controller?menu=CreateUserView" class="button elevated-button">Crear empleado <span class="material-icons">add</span></a>
                </div>
            </div>
            <div class="inner-body">
                <div class="secondary-container">
                    <div class="table-container">
                        <script>
                            console.log("hello");
                        </script>
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Identificación</th>
                                    <th class="big-column">Nombre</th>
                                    <th>Cargo</th>
                                    <th>Email</th>
                                    <th>Número telefónico</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${empty users}">
                                <p>La lista de usuarios está vacía o no existe</p>
                            </c:if>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td>
                                        <div class="flex flex-column spacing-voided">
                                            <span class="body-small">
                                                ${user.getNumberIdentification()}
                                            </span>
                                            <span class="caption color-neutral-40">
                                                <c:choose>
                                                    <c:when test="${user.getTypeIdentification() == '1'}">DNI</c:when>
                                                    <c:when test="${user.getTypeIdentification() == '2'}">Pasaporte</c:when>
                                                    <c:when test="${user.getTypeIdentification() == '3'}">Carné de Extranjería</c:when>
                                                    <c:otherwise>Otro</c:otherwise>
                                                </c:choose>
                                            </span>
                                        </div>
                                    </td>
                                    <td>
                                        ${user.getFullname()}
                                    </td>
                                    <td>
                                        ${user.getJobPosition()}
                                    </td>
                                    <td>
                                        ${user.getEmail()}
                                    </td>
                                    <td>
                                        ${user.getPhoneNumber()}
                                    </td>
                                    <td>
                                        <button class="icon-button element-justify-center compact-button">
                                            <span class="material-icons">more_vert</span>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
