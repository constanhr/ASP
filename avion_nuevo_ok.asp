<!-- #include file=conexion.asp -->

<html>
	<body>
		<%
			idavion=request.form("id_avion")
			avion=request.form("avion")
			nplazas=request.form("n_plazas")
			precio=request.form("precio_base")

			SentenciaSQL = "insert into AVION values (" & idavion & ", '" & avion & "', " & nplazas & ", " & precio & " )"

			Set rs = Conexion.Execute(SentenciaSQL)
			'response.write("insert into AVION values (" & idavion & ", '" & avion & "', " & nplazas & ", " & precio & " )")
			'response.write("<br>")
			response.write("El avión se ha introducido correctamente en la Base de Datos")
			Conexion.close
			Set Conexion = nothing
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