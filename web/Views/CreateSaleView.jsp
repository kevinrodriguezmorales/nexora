<%-- 
    Document   : CreateSales
    Created on : 13 may. 2025, 8:37:00 p. m.
    Author     : kevin
--%>

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
            <div class="inner-header header-sticky">
                <div class="secondary-container flex-container full-width flex-justify-between">
                    <h2 class="headline-2">Crear venta</h2>
                    <a href="Controller?menu=Main" class="button elevated-button">Guardar Venta</a>
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
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Tipo de documento</label>
                                            <select>
                                                <option>Boleta</option>
                                                <option>Rebibo interno</option>
                                                <option>Factura</option>
                                            </select>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Número de documento</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Fecha de emisión</label>
                                            <input type="date"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Moneda</label>
                                            <select>
                                                <option>Sol</option>
                                                <option>Dolar</option>
                                                <option>Euro</option>
                                            </select>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Condición</label>
                                            <select>
                                                <option>Efectivo</option>
                                                <option>Crédito</option>
                                                <option>Euro</option>
                                            </select>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="grid-container">
                        <div class="col-4 flex-container flex-align-start">
                            <div class="flex-container flex-column spacing-minimum">
                                <span class="body">Cliente</span>
                                <p class="body-small color-neutral-60">Agrega la información de tu cliente o busca desde la lista de contactos</p>
                            </div>
                            <div class="icon-button">
                                <span class="material-icons">search</span>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="grid-container gutter-horizontal-voided">
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Tipo de documento</label>
                                            <select>
                                                <option>DNI</option>
                                                <option>RUC</option>
                                                <option>Pasaporte</option>
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
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Nombre, Nombre comercial o Razón Social</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Dirección</label>
                                            <input type="text"/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Ciudad</label>
                                            <select>
                                                <option>La Libertad, Trujillo, Trujillo</option>
                                                <option>Piura, Piura, Sullana</option>
                                                <option>Lambayaque, Chiclayo, Chiclayo</option>
                                            </select>
                                            <div class="control-group-outline"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="secondary-container">
                        <div class="spacing-bottom">
                            <span class="body">Detalle de venta</span>
                        </div>
                        <div class="table-container">
                            <table class="data-table compact-table">
                                <thead>
                                    <tr>
                                        <th>Código</th>
                                        <th class="big-column">Nombre</th>
                                        <th>Medida</th>
                                        <th>Cantidad</th>
                                        <th class="text-align-right">Precio</th>
                                        <th class="text-align-right">Descuento</th>
                                        <th>Impuesto</th>
                                        <th class="text-align-right">Importe</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="hover-row">
                                        <td>
                                            1234343234
                                        </td>
                                        <td>
                                            Espejo retrovisor negro
                                        </td>
                                        <td>
                                            Par
                                        </td>
                                        <td class="text-align-center">
                                            1
                                        </td>
                                        <td class="text-align-right">
                                            85.70
                                        </td>
                                        <td class="text-align-right">
                                            2.50
                                        </td>
                                        <td class="text-align-center">
                                            18%
                                        </td>
                                        <td class="text-align-right">
                                            84.75
                                        </td>
                                        <td>
                                            <button class="icon-button element-justify-center compact-button">
                                                <span class="material-icons">more_vert</span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr class="hover-row">
                                        <td>
                                            1234343234
                                        </td>
                                        <td>
                                            Espejo retrovisor negro
                                        </td>
                                        <td>
                                            Par
                                        </td>
                                        <td class="text-align-center">
                                            1
                                        </td>
                                        <td class="text-align-right">
                                            85.70
                                        </td>
                                        <td class="text-align-right">
                                            2.50
                                        </td>
                                        <td class="text-align-center">
                                            18%
                                        </td>
                                        <td class="text-align-right">
                                            84.75
                                        </td>
                                        <td>
                                            <button class="icon-button element-justify-center compact-button">
                                                <span class="material-icons">more_vert</span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr class="hover-row">
                                        <td>
                                            1234343234
                                        </td>
                                        <td>
                                            Espejo retrovisor negro
                                        </td>
                                        <td>
                                            Par
                                        </td>
                                        <td class="text-align-center">
                                            1
                                        </td>
                                        <td class="text-align-right">
                                            85.70
                                        </td>
                                        <td class="text-align-right">
                                            2.50
                                        </td>
                                        <td class="text-align-center">
                                            18%
                                        </td>
                                        <td class="text-align-right">
                                            84.75
                                        </td>
                                        <td>
                                            <button class="icon-button element-justify-center compact-button">
                                                <span class="material-icons">more_vert</span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr class="hover-row">
                                        <td>
                                            1234343234
                                        </td>
                                        <td>
                                            Espejo retrovisor negro
                                        </td>
                                        <td>
                                            Par
                                        </td>
                                        <td class="text-align-center">
                                            1
                                        </td>
                                        <td class="text-align-right">
                                            85.70
                                        </td>
                                        <td class="text-align-right">
                                            2.50
                                        </td>
                                        <td class="text-align-center">
                                            18%
                                        </td>
                                        <td class="text-align-right">
                                            84.75
                                        </td>
                                        <td>
                                            <button class="icon-button element-justify-center compact-button">
                                                <span class="material-icons">more_vert</span>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr class="outline-row-top text-bold">
                                        <td></td>
                                        <td colspan="5">
                                            <button class="button outline-button compact-button">
                                                Añadir item
                                                <span class="material-icons">add</span>
                                            </button>
                                        </td>
                                        <td class="uppercase text-align-right">Subtotal</td>
                                        <td class="text-align-right">84.75</td>
                                        <td></td>
                                    </tr>
                                    <tr class="text-bold">
                                        <td colspan="6">
                                        </td>
                                        <td class="outline-row-top uppercase text-align-right">IGV</td>
                                        <td class="text-align-right outline-row-top">84.75</td>
                                        <td class="outline-row-top"></td>
                                    </tr>
                                    <tr class="text-bold">
                                        <td colspan="6"></td>
                                        <td class="outline-row-top uppercase text-align-right">Total</td>
                                        <td class="text-align-right outline-row-top">84.75</td>
                                        <td class="outline-row-top"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

