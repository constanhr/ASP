<!-- #include file=conexion.asp -->


<html>
	<body>
		<%
			'recibimos el id de la ciudad a modificar mediante get
			id_recibido=request.querystring("id")

			'seleccionamos la ciudad que tiene dicho id
			set consulta = Conexion.execute("select IDAVION,AVION,N_PLAZAS,PRECIO_BASE from AVION where IDAVION=" & id_recibido )

			idd = consulta("IDAVION")
			avion = consulta("AVION")
			nplazas = consulta("N_PLAZAS")
			precio = consulta("PRECIO_BASE")

			response.write("Se va a proceder a eliminar este avión.")
		%>

		<form action="avion_eliminar_ok.asp" method="post">
			<table border="2">
				<tr>
					<td>Codigo Avión: </td>
					<td>
						<input type=text name=id_avion readonly value="<% response.write(idd) %>" >
					</td>
				</tr>
				<tr>
					<td>Avión: </td>
					<td><input type=text name=avion readonly value= "<% response.write(avion) %>" > </td>
				</tr>
				<tr>
					<td>Nº plazas: </td>
					<td><input type=text name=n_plazas readonly value= "<% response.write(nplazas) %>" > </td>
				</tr>
				<tr>
					<td>Precio Base: </td>
					<td><input type=text name=precio_base readonly value= "<% response.write(precio) %>" > </td>
				</tr>
				<tr>
					<td colspan=2> 
						<center>
							<input type=button name=cancelar  value="Cancelar" onclick="window.location='avion_detalles.asp?id=<% response.write(id_recibido) %>';" />
							<input type=submit name=modificar  value="Eliminar">
						</center> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>