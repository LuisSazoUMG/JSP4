<%-- 
    Document   : index
    Created on : 1/10/2023, 17:30:12
    Author     : Luis Sazo
--%>
<%@page import="modelo.Puesto" %>
<%@page import="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Empleados</h1>
        <div class = "container">
            <form action = "" method = "post" class = "form-group">
                <label for="lbl_codigo"><b>Codigo:<b></label>
                <input type="text" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="Ejemplo: E001" required>
                <label for="lbl_nombres"><b>Nombres:<b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: Nombre1, Nombre2" required>
                <label for="lbl_apellidos"><b>Apellidos:<b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ejemplo: Apelldo1, Apellido2" required>
                <label for="lbl_direccion"><b>Codigo:<b></label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: Calle, Zona, Ciudad" required>
                <label for="lbl_telefono"><b>Codigo:<b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 42586600" required>
                <label for="lbl_fn"><b>Fecha:<b></label>
                <input type="date" name="txt_fn" id="txt_fn" class="form-control" placeholder="" required>
                <label for="lbl_puesto"><b>Puesto:<b></label>
                <select name="drop_sangre" id="drop_sangre" class="form-control">
                   <%
                      Puesto puesto = new Puesto();
                       HashMap<String,String> drop = puesto.drop_sangre();
                       for(String i: drop.keySet()){
                            out.println("<option value= '" + i + "' > " + drop.get(i) + "</option>");
                       }
                   %>
                </select>
                 <br>
                 <button type="button" name="btn_agregar" id="btn_agregar" class="btn btn-primary">Agregar</button>
                            
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
