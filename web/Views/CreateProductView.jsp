<%-- 
    Document   : CreateProductView
    Created on : 17 may. 2025, 10:26:36 a. m.
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
            <form action="Controller?menu=ListUsersView&action=ListUsers" method="POST">
                <div class="inner-header header-sticky">
                    <div class="secondary-container flex-container full-width flex-justify-between">
                        <h2 class="headline-2">Crear producto</h2>
                        <button class="button elevated-button" type="submit" name="action" value="CreateUser">Guardar producto</button>
                    </div>
                </div>
                <div class="inner-body">
                    <div class="secondary-container">
                        <div class="grid-container">
                            <div class="col-4">
                                <span class="body spacing-bottom-minimum block">Información básica</span>
                                <p class="body-small color-neutral-60">Datos básicos de tus productos que te permitiran a identificarlos de manera sencilla</p>
                            </div>
                            <div class="col-8">
                                <div class="grid-container gutter-horizontal-voided">
                                    <div class="col-12 grid-container">
                                        <div class="col-6">
                                            <div class="control-form">
                                                <div class="control-group">
                                                    <label>Tipo</label>
                                                    <select name="productTypeControl">
                                                        <option value="producto">Producto</option>
                                                        <option value="servicio">Servicio</option>
                                                        <option value="paquete">Paquete</option>
                                                        <option value="obsequio">Obsequio</option>
                                                    </select>
                                                    <div class="control-group-outline"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Código</label>
                                                <input type="text" name="productCodeControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                            <div class="control-help">
                                                <span>Colocar * para autogener código</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Código SUNAT</label>
                                                <input type="text" name="sunatProductCodeControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Nombre</label>
                                                <input type="text" name="productNameControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Categoría</label>
                                                <select name="productCategoryControl">
                                                    <option value="respuestos">Repuestos</option>
                                                    <option value="adhesivos">Adhesivos</option>
                                                    <option value="accesorio">Accesorios</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Marca</label>
                                                <select name="productBrandControl">
                                                    <option value="honda">Honda</option>
                                                    <option value="m3">M3</option>
                                                    <option value="mitsubishi">Mitsubishi</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Descripción</label>
                                                <textarea name="productDescriptionControl"></textarea>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="divider"></div>
                        <div class="grid-container">
                            <div class="col-4">
                                <span class="body spacing-bottom-minimum block">Costo y precio</span>
                                <p class="body-small color-neutral-60">Establece un costo y precio para mantener un control en tus finanzas y realizar proyecciones</p>
                            </div>
                            <div class="col-8">
                                <div class="grid-container gutter-horizontal-voided">
                                    <div class="col-12 grid-container">
                                        <div class="col-6">
                                            <div class="control-form">
                                                <div class="control-group">
                                                    <label>Unidad de medida</label>
                                                    <select name="unitMeasurementProduct">
                                                        <option value="1">Unidad</option>
                                                        <option value="2">Par</option>
                                                        <option value="12">Docena</option>
                                                        <option value="6">Media docena</option>
                                                    </select>
                                                    <div class="control-group-outline"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Impuesto</label>
                                                <select name="productTaxControl">
                                                    <option value="0.18">IGV 18%</option>
                                                    <option value="0.04">IGV 4%</option>
                                                    <option value="0">Exonerado</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Moneda</label>
                                                <select name="productCurrencyControl">
                                                    <option value="soles">Soles</option>
                                                    <option value="dolares">Dolares</option>
                                                    <option value="euros">Euros</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Precio base</label>
                                                <input type="number" step="0.01" name="productPriceControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Precio venta</label>
                                                <input type="number" step="0.01" name="productSalesPriceControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="divider"></div>
                        <div class="grid-container">
                            <div class="col-4">
                                <span class="body spacing-bottom-minimum block">Stock</span>
                                <p class="body-small color-neutral-60">Registra el stock de tus productos y recibe alertas de stock mínimo</p>
                            </div>
                            <div class="col-8">
                                <div class="grid-container gutter-horizontal-voided">
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Ubicación en almacén</label>
                                                <input type="text" name="productUbicationControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Stock</label>
                                                <input type="number" name="productStockControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Stock mínimo</label>
                                                <input type="number" name="productMinimumStockControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
