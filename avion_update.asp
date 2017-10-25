<!-- #include file=conexion.asp -->

<html>
	<body>
		<%
			idavion=request.form("id_avion")
			avion=request.form("avion")
			nplazas=request.form("n_plazas")
			precio=request.form("precio_base")

			response.write("Se va a proceder a modificar los datos del avión. Revise los datos antes de continuar")
		%>
		<form action="avion_update_ok.asp" method="post">
			<table border="2">
				<tr>
					<td>Codigo Avión: </td>
					<td>
						<input type=text name=id_avion readonly value="<% response.write(idavion) %>" >
					</td>
				</tr>
				<tr>
					<td>Avión: </td>
					<td><input type=text name=avion value= "<% response.write(avion) %>" > </td>
				</tr>
				<tr>
					<td>Nº plazas: </td>
					<td><input type=text name=n_plazas value= "<% response.write(nplazas) %>" > </td>
				</tr>
				<tr>
					<td>Precio Base: </td>
					<td><input type=text name=precio_base value= "<% response.write(precio) %>" > </td>
				</tr>
				<tr>
					<td colspan=2> 
						<center>
							<input type=button name=cancelar  value="Cancelar" onclick="window.location='avion_detalles.asp?id=<% response.write(idavion) %>';" />
							<input type=submit name=modificar  value="Continuar">
						</center> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>