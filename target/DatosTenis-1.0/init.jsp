
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <!--Evitar que se guarde en cache para ver cambios en la página -->
        <meta http-equiv="Expires" content="0">
        <meta http-equiv="Last-Modified" content="0">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <meta http-equiv="Pragma" content="no-cache">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tenis</title>
        <!-- El parametro php del css evita que se guarde en cache la pagina par ver sus cambios en cada actualziación -->
        <link rel="stylesheet" href="principal/css/estilo.css?v=<?php echo(rand());?>" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@300&display=swap" rel="stylesheet">
        
    </head>
    <body>
        <!--Cabecero-->
       <jsp:include page="/principal/cabecero.jsp"/>
        
         <!--Cuerpo-->
         <!--Carga la página dependiendo valor atributo-->
            <c:choose>
                <c:when test= "${opcion == 'inicio'}">
                    <jsp:include page="/principal/cuerpo.jsp"/>
                </c:when>
                <c:when test="${opcion == 'jugador'}" >
                   <jsp:include page="/paginas/jugador.jsp"/>
                </c:when>
                <c:when test="${opcion == 'bono'}" >
                   <jsp:include page="/paginas/bono.jsp"/>
                </c:when>
                <c:when test="${opcion == 'partido'}" >
                   <jsp:include page="/paginas/partido.jsp"/>
                </c:when>
                <c:otherwise>
                    Opcion proporcionada desconocida: ${param.opcion}
                </c:otherwise>     
            </c:choose>
      
          <!--Footer-->
        <jsp:include page="/principal/pie_pagina.jsp"/>
        
        <script src="https://kit.fontawesome.com/078914b6d5.js" crossorigin="anonymous"></script>
</body>
</html>
