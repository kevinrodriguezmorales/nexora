<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/styles/main.css?v=1.0.3">
        <link rel="stylesheet" href="resources/styles/login.css?v=1.1.2">
    </head>
    <body class="wrapper-main">
        <div class="login-wrapper color-primary-0 border-radious-default">
            <div class="flex-container full-height">
                <div class="login-form col-6 content-center flex-column">
                    <div class="login-form__header">
                        <div class="login-form__header-upper">
                            <img src="resources/images/nexora.svg" alt="nexora">
                        </div>
                        <div class="login-form__header-lower">
                            <span class="headline-3 uppercase text-bold">Iniciar sesión</span>
                        </div>
                    </div>
                    <form class="login-form__body full-width" method="POST" action="Validate">
                        <div class="secondary-container">
                            <div class="grid-container grid-justify-center">
                                <div class="col-2"></div>
                                <div class="col-8">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Correo</label>
                                            <input type="text" name="loginEmail" required/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                                <div class="col-2"></div>
                                <div class="col-2"></div>
                                <div class="col-8 spacing-bottom-x2">
                                    <div class="control-form">
                                        <div class="control-group">
                                            <label>Password</label>
                                            <input type="password" name="loginPassword" required/>
                                            <div class="control-group-outline"></div>
                                        </div>
                                        <!--<div class="control-help">
                                            <span>Colocar * para autogener código</span>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                            <div class="content-center">
                                <button class="button elevated-button" type="submit" name="action" value="getInto">Iniciar sesión</button>
                            </div>
                        </div>
                    </form>  
                </div>
                <div class="login-image border-radious-default col-6">
                    <img src="https://images.pexels.com/photos/4483609/pexels-photo-4483609.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="alt"/>
                </div>
            </div>
        </div>
    </body>
</html>
