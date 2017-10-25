<!-- #include file=conexion.asp -->

<html>
	<body>
		<%
		idavion=request.form("id_avion")
		avion=request.form("avion")
		nplazas=request.form("n_plazas")
		precio=request.form("precio_base")
		SentenciaSQL = "update AVION set AVION = '" & avion & "', N_PLAZAS = " & nplazas & ", PRECIO_BASE = " & precio & " where IDAVION=" & idavion

		'response.write( "update AVION set AVION = '" & avion & "', N_PLAZAS = " & nplazas & ", PRECIO_BASE = " & precio & " where IDAVION=" & idavion)

		set rs = Conexion.Execute(SentenciaSQL)

		response.write("El avión se modificado con exito")

		Conexion.close
		Set conexion = nothing

		%>


		<form action="avion_listar.asp" method="post">
			<table border="2">
				<tr>
					<td>Codigo Avión: </td>
					<td>
						<input type=text name=id_avion readonly value="<% response.write(idavion) %>" >
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
						<center><input type=submit name=modificar  value="Volver">
						</center> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>