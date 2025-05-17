<%-- 
    Document   : Main
    Created on : 10 may. 2025, 5:49:54 p. m.
    Author     : kevin
--%>

<%@ page import="Models.User" %>
<%
    User user = (User) session.getAttribute("user");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/styles/main.css?v=1.0.2">
        <link rel="stylesheet" href="resources/styles/dashboard.css?v=1.0.2">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <header class="main-header">
                <span class="subtitle">Buen día, ${user.getFirstName()}</span>
                <span>Echa un vistazo a la última actualización de tu empresa.</span>
            </header>
            <div class="cards">

                <div class="card">
                    <div class="card__icon background-support-05">
                        <span class="material-icons">payments</span>
                    </div>
                    <span class="card__title body-small text-bold">Total de gastos</span>
                    <div class="card__comparison">
                        <span class="headline-3 text-weight-500">S/ 12,500</span>
                    </div>
                    <div class="card__desciption">
                        <span class="color-support-05">15%</span>
                        <span>Con respecto al mes anterior</span>
                    </div>
                </div>
                <div class="card">
                    <div class="card__icon background-support-03">
                        <span class="material-icons">payments</span>
                    </div>
                    <span class="card__title body-small text-bold">Total de ventas</span>
                    <div class="card__comparison">
                        <span class="headline-3 text-weight-500">S/ 1,500</span>
                    </div>
                    <div class="card__desciption">
                        <span class="color-support-01">+5%</span>
                        <span>Con respecto al día anterior</span>
                    </div>
                </div>
                <div class="card">
                    <div class="card__icon background-support-04">
                        <span class="material-icons">payments</span>
                    </div>
                    <span class="card__title body-small text-bold">Margen ganancia</span>
                    <div class="card__comparison">
                        <span class="headline-3 text-weight-500">S/ 2,500</span>
                    </div>
                    <div class="card__desciption">
                        <span class="color-support-01">25%</span>
                        <span>Con respecto al mes actual</span>
                    </div>
                </div>
                <div class="card">
                    <div class="card__icon background-support-02">
                        <span class="material-icons">payments</span>
                    </div>
                    <span class="card__title body-small text-bold">Productos stock mínimo</span>
                    <div class="card__comparison">
                        <span class="headline-3 text-weight-500">12</span>
                    </div>
                    <div class="card__desciption">
                        <span class="color-danger">15%</span>
                        <span>Del total de productos</span>
                    </div>
                </div>
                <div class="card">
                    <div class="card__icon background-support-01">
                        <span class="material-icons">payments</span>
                    </div>
                    <span class="card__title body-small text-bold">Productos sin stock</span>
                    <div class="card__comparison">
                        <span class="headline-3 text-weight-500">3</span>
                    </div>
                    <div class="card__desciption">
                        <span class="color-danger">5%</span>
                        <span>Del total de productos</span>
                    </div>
                </div>
            </div>

            <div class="summaries">
                <div class="comming-soon content-center"><span>Proximamente</span></div>
                <div class="recent-contacts">
                    <div class="recent-contacts__header">
                        <span class="headline-1">Contactos recientes</span>
                        <button type="button" class="button outline-button">
                            <span>Agregar contacto</span>
                            <span class="material-icons">add</span>
                        </button>
                    </div>
                    <div class="contact-list flex flex-column gutter">
                        <div class="contact-summary outline border-radius-default">
                            <div class="contact-summary__photograph">
                                <img src="https://images.pexels.com/photos/31773527/pexels-photo-31773527/free-photo-of-hombre-caminando-junto-a-un-muro-de-celosia-rosa.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="alt"/>
                            </div>
                            <div class="contact-summary__description flex flex-column spacing-voided">
                                <span class="contact-summary__name body">Alvaro Turner</span>
                                <span class="contact-summary__type body-small color-neutral-60">Proveedor</span>
                            </div>
                        </div>
                        <div class="contact-summary outline border-radius-default">
                            <div class="contact-summary__photograph">
                                <img src="https://images.pexels.com/photos/31773527/pexels-photo-31773527/free-photo-of-hombre-caminando-junto-a-un-muro-de-celosia-rosa.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="alt"/>
                            </div>
                            <div class="contact-summary__description flex flex-column spacing-voided">
                                <span class="contact-summary__name body">Alvaro Turner</span>
                                <span class="contact-summary__type body-small color-neutral-60">Proveedor</span>
                            </div>
                        </div>
                        <div class="contact-summary outline border-radius-default">
                            <div class="contact-summary__photograph">
                                <img src="https://images.pexels.com/photos/31773527/pexels-photo-31773527/free-photo-of-hombre-caminando-junto-a-un-muro-de-celosia-rosa.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="alt"/>
                            </div>
                            <div class="contact-summary__description flex flex-column spacing-voided">
                                <span class="contact-summary__name body">Alvaro Turner</span>
                                <span class="contact-summary__type body-small color-neutral-60">Proveedor</span>
                            </div>
                        </div>
                        <div class="contact-summary outline border-radius-default">
                            <div class="contact-summary__photograph">
                                <img src="https://images.pexels.com/photos/31773527/pexels-photo-31773527/free-photo-of-hombre-caminando-junto-a-un-muro-de-celosia-rosa.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="alt"/>
                            </div>
                            <div class="contact-summary__description flex flex-column spacing-voided">
                                <span class="contact-summary__name body">Alvaro Turner</span>
                                <span class="contact-summary__type body-small color-neutral-60">Proveedor</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
