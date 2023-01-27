<%@ page import="java.util.*, com.vehiculos.vehiculos.models.*" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vehiculos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <img src="https://scontent-mty2-1.xx.fbcdn.net/v/t39.30808-6/301885698_503442548450926_7310079897676107044_n.png?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=gNuC3fTPbywAX_xcUUh&_nc_ht=scontent-mty2-1.xx&oh=00_AfDbH125Y6TzV3_DOiREhdU4uH4VL2TmkT36zTgoi4yykg&oe=63D77004" width="50" style="margin:0px 10px">
        <a class="navbar-brand" href="index.jsp">Java Academy</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="PersonaControllerServlet">Personas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="VehiculoControllerServlet">Vehiculos</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<%
    // get the persons from the request object (sent by servlet)
    List<Persona> personasList=
            (List<Persona>) request.getAttribute("PERSONAS_LIST");
%>
<body>
<div id="container" style="margin: 40px 40px">
    <h3>Add Vehiculo</h3>

    <form action="VehiculoControllerServlet" method="GET">

        <input type="hidden" name="command" value="ADD" />

        <table>
            <tbody>
            <tr>
                <td><label>ID Duenio:</label></td>
                <td><input  class="form-control" type="text" name="idPersona" /></td>
            </tr>

            <tr>
                <td><label>Marca:</label></td>
                <td><input  class="form-control" type="text" name="marca" /></td>
            </tr>

            <tr>
                <td><label>Color:</label></td>
                <td><input class="form-control" type="text" name="color" /></td>
            </tr>
            <tr>
                <td><label>Matricula:</label></td>
                <td><input class="form-control" type="text" name="matricula" /></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Guardar" class="btn btn-primary"/></td>
            </tr>
            </tbody>
        </table>
    </form>
    <div style="clear: both;"></div>

</div>
</body>
</html>