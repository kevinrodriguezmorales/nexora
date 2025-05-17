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
                                <span class="body">Información básica</span>
                                <p class="body-small color-neutral-60">Mantén actualizado los datos de tus contactos como una estretegía de negocio</p>
                            </div>
                            <div class="col-8">
                                <div class="grid-container gutter-horizontal-voided">
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Tipo de identificación</label>
                                                <select name="userIdentificationTypeControl">
                                                    <option value="1">DNI</option>
                                                    <option value="2">RUC</option>
                                                    <option value="3">Carnet de extranjería</option>
                                                    <option value="4">Pasaporte</option>
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
                                                <label>Número de identificación</label>
                                                <input type="text" name="userNumberIdentificationControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Nombre completo</label>
                                                <input type="text" name="userFullnameControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Número telefónico</label>
                                                <input type="text" name="userPhoneNumberControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Email</label>
                                                <input type="text" name="userEmailControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Dirección</label>
                                                <input type="text" name="userAddressControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Ciudad</label>
                                                <select name="userCityControl">
                                                    <option value="Trujillo">Trujillo</option>
                                                    <option value="Piura">Piura</option>
                                                    <option value="Lambayeque">Lambayeque</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Fecha de nacimiento</label>
                                                <input type="date" name="userDateBirthControl"/>
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
                                <span class="body">Información de contrato</span>
                                <p class="body-small color-neutral-60">Agrega información de tus colaboradores y ten el control desde un solo lugar</p>
                            </div>
                            <div class="col-8">
                                <div class="grid-container gutter-horizontal-voided">
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Cargo</label>
                                                <select name="userPositionControl">
                                                    <option value="1">Administrador</option>
                                                    <option value="2">Vendedor</option>
                                                    <option value="3">Cajero</option>
                                                    <option value="4">Mécanico</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Asignar locación</label>
                                                <select name="userAssignedLocationControl">
                                                    <option value="Tinda central">Tienda central</option>
                                                    <option value="Tienda norte">Tienda norte</option>
                                                    <option value="Tienda sur">Tienda sur</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="divider-small"></div>
                                        <label for="allLocations" class="flex-container flex-align-center flex-justify-between">
                                            <span class="body-variant">Asignar a todas las locaciones</span>
                                            <div class="slider-form">
                                                <input type="checkbox" id="allLocations" name="userAllLocationsControl">
                                                <div class="slider-form__track"></div>
                                                <div class="slider-form__target"></div>
                                            </div>
                                        </label>
                                        <div class="divider-component-section"></div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Inicio de contrato</label>
                                                <input type="date" name="userContractStartDateControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Fin de contrato</label>
                                                <input type="date" name="userContractEndDateControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Jornada laboral</label>
                                                <select name="userWorkingHoursControl">
                                                    <option value="Dia">Día</option>
                                                    <option value="Tarde">Tarde</option>
                                                    <option value="Nocturno">Nocturno</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Frecuencia de pago</label>
                                                <select name="userPaymentFrequencyControl">
                                                    <option value="Mensual">Mensual</option>
                                                    <option value="Quincenal">Quincenal</option>
                                                    <option value="Diario">Diario</option>
                                                </select>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Salario</label>
                                                <input type="number" step="0.01" name="userSalaryControl"/>
                                                <div class="control-group-outline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="control-form">
                                            <div class="control-group">
                                                <label>Número de cuenta bancaria</label>
                                                <input type="text" name="userBackAccountControl"/>
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
