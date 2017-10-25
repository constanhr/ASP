<!-- #include file=conexion.asp -->

<html>
	<body>
		<%
			Set consulta = Conexion.Execute("select MAX (IDAVION) as ultimo_id from AVION")
			sig_id = consulta("ultimo_id") +1
		%>
		<form name="formulario_1" action="avion_nuevo_ok.asp" method="post">
			<table border="2">
				<tr>
					<td>Codigo Avión: </td>
					<td>
						<input type=text name=id_avion readonly value="<% response.write(sig_id) %>" >
					</td>
				</tr>
				<tr>
					<td>Avión: </td>
					<td><input type=text name=avion> </td>
				</tr>
				<tr>
					<td>Nº plazas: </td>
					<td><input type=text name=n_plazas> </td>
				</tr>
				<tr>
					<td>Precio Base: </td>
					<td><input type=text name=precio_base> </td>
				</tr>
				<tr>
					<td colspan=2> 
						<center>
							<input type=button name=cancelar  value="Cancelar" onclick="window.location='avion_listar.asp';"/>
							<input type=submit name=modificar  value="Añadir">
						</center> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>