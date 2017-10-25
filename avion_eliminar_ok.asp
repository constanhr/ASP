<!-- #include file=conexion.asp -->




<html>
	<body>
		<%
			idavion=request.form("id_avion")

			SentenciaSQL = "delete from AVION where idavion=" & idavion

			Set rs = Conexion.Execute(SentenciaSQL)
			Conexion.close
			Set Conexion = nothing
			response.write("El avión se ha eliminado correctamente en la Base de Datos")
		%>
		<form action="avion_listar.asp" method="post">
			<table>
				<tr>
					<td> 
						<center><input type=submit name=modificar  value="Volver"></center> 
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>