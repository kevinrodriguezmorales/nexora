

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
                    <h2 class="headline-2">Productos</h2>
                    <a href="Controller?menu=CreateProductView" class="button elevated-button">Crear producto <span class="material-icons">add</span></a>
                </div>
            </div>
            <div class="inner-body">
                <div class="secondary-container">
                    <div class="table-container">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Código</th>
                                    <th class="big-column">Nombre</th>
                                    <th>Moneda</th>
                                    <th>Categoría</th>
                                    <th>Marca</th>
                                    <th>Stock</th>
                                    <th>Costo</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        DG0000134
                                    </td>
                                    <td>
                                        Espejo retrovisor para motos
                                    </td>
                                    <td>
                                        Par
                                    </td>
                                    <td>
                                        Repuestos
                                    </td>
                                    <td>
                                        GunBang
                                    </td>
                                    <td>
                                        4
                                    </td>
                                    <td>
                                        87.64
                                    </td>
                                    <td>
                                        <button class="icon-button element-justify-center compact-button">
                                            <span class="material-icons">more_vert</span>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
