<!-- #include file=conexion.asp -->


<html>
	<body>
		<table border="2">
			<tr>
				<td>ID</td>
				<td>AVIÓN</td>
				<td>PLAZAS</td>
				<td>PRECIO BASE</td>
			</tr>
			<%
				set resultado = Conexion.Execute("select IDAVION,AVION,N_PLAZAS, PRECIO_BASE from AVION")
				'recorremos el recordset
				do while not resultado.EOF
					response.write("<tr style=""cursor: pointer;"" onclick=document.location='avion_detalles.asp?id=" & resultado("IDAVION") &  "'><td><center>" & resultado("IDAVION") & "</a></center></td><td> " & resultado("AVION") & " </td><td><center>" & resultado("N_PLAZAS") & "</center></td><td><center>" & resultado("PRECIO_BASE") & "</center></td></tr> ")
					'nos desplazamos por el recordset
					resultado.movenext
				loop
			%>
			<tr>
			</tr>
			<tr>
			</tr>
			<tr>
			</tr>
			<tr>
				<td colspan=4> 
					<center>
						<input type="button" onclick="window.location.href='inicio.asp'" value="Salir">
				
						<input type="button" onclick="window.location.href='avion_nuevo.asp'" value="Nuevo">
					</center> 
				</td>
			</tr>
		</table>
	</body>
</html>