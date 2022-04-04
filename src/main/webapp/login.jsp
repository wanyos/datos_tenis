
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Datos tenis inicio sesión...</h1>
        <form action="${pageContext.request.contextPath}/ServletLogin?accion=login" method="post">
            <button type="submit" name="btn_login" value="inicio">Inicio</button>
        </form>
    </body>
</html>
