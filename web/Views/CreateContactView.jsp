<%-- 
    Document   : RegisterContact
    Created on : 11 may. 2025, 2:35:22 p. m.
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/styles/main.css?v=1.0.2">
    </head>
    <body>
        <div class="inner-wrapper">
            <div class="inner-header header-sticky">
                <div class="secondary-container flex-container full-width flex-justify-between">
                    <h2 class="headline-2">Crear contacto</h2>
                    <a href="Controller?menu=Main" class="button elevated-button">Guardar contacto</a>
                </div>
            </div>
            <div class="inner-body">
                <div class="secondary-container">
                    <div class="grid-container">
                        <div class="col-4">
                            <span class="body">Información básica</span>
                            <p class="body-small color-neutral-60">Mantén actualizado los datos de tus contactos como una estretegía de negocio</p>
                        </div>
                        <div class="col-8">
                            <div class="grid-container gutter-horizontal-voided">
                                <div class="col-12">
                                    <div class="grid-container">
                                        <div class="col-6">
                                            <div class="control-form">
                                                <div class="control-group">
                                                    <label>Tipo de contacto</label>
                                                    <select>
                                                        <option>Cliente</option>
                                                        <option>Proveedor</option>
                                                    </select>
                                                    <div class="control-group-outline"></div>
                                                </div>
                                                <!--<div class="control-help">
                                                    <span>Colocar * para autogener código</span>
                                                </div>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Tipo de identificación</label>
                                            <select>
                                                <option>DNI</option>
                                                <option>Value 1</option>
                                                <option>Value 1</option>
                                            </select>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Número de identificación</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Nombre completo</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Número telefónico</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Email</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Dirección</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Ciudad</label>
                                            <select>
                                                <option>Value 1</option>
                                                <option>Value 1</option>
                                                <option>Value 1</option>
                                            </select>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Fecha de nacimiento</label>
                                            <input type="date"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="grid-container">
                        <div class="col-4">
                            <span class="body">Datos de empesa</span>
                            <p class="body-small color-neutral-60">Datos de empresa</p>
                        </div>
                        <div class="col-8">
                            <div class="grid-container gutter-horizontal-voided">
                                <div class="col-12">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Nombre comercial o razón social</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Email</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
