<!-- #include file=conexion.asp -->

<html>
	<body>
		<%
			'recibimos el id de la ciudad a modificar mediante get
			id_recibido=request.querystring("id")

			'seleccionamos el vuelo que tiene dicho id
			set consulta = Conexion.execute("select IDAVION,AVION,N_PLAZAS,PRECIO_BASE from AVION where IDAVION=" & id_recibido )

			idd = consulta("IDAVION")
			avion = consulta("AVION")
			plazas = consulta("N_PLAZAS")
			precio = consulta("PRECIO_BASE")
		%>

		<form action="avion_update.asp" method="post">
			<table border="2">
				<tr>
					<td>Codigo Avión: </td>
					<td>
						<input type=text name=id_avion readonly value="<% response.write(consulta("IDAVION")) %>" >
					</td>
				</tr>
				<tr>
					<td>Avión: </td>
					<td><input type=text name=avion readonly value= "<% response.write(avion) %>" > </td>
				</tr>
				<tr>
					<td>Nº plazas: </td>
					<td><input type=text name=n_plazas readonly value= "<% response.write(plazas) %>" > </td>
				</tr>
				<tr>
					<td>Precio Base: </td>
					<td><input type=text name=precio_base readonly value= "<% response.write(precio) %>" > </td>
				</tr>
				<tr>
					<td colspan=2>
						<center><input type=button name=eliminar  value="Eliminar" onclick="window.location='avion_eliminar.asp?id=<% response.write(idd) %>';" />
					
						<input type=submit name=modificar  value="Modificar"></center>
					</td>
				</tr>
					<td colspan=2>
						<center><input type=button name=volver  value="Volver" onclick="window.location='avion_listar.asp';" /></center>
					</td>
				<tr>
				</tr>
			</table>
		</form>
	</body>
</html>
