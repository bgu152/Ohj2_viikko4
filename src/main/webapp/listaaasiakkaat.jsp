<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
th {
	color:white;
	background:#4caf50;
	font-family: Arial;
	padding-left:10px;
	padding-right:10px;
}
.oikea{
	text-align:right;
}

th,td{
	text-align:left;
}

table{
	border-collapse: collapse;
}

td {
	border:1px solid #dddddd;
	
}
th {
	border:1px solid white;	
}

tr:nth-child(even){
	background: #f2f2f2;
}

</style>


</head>
<body>
<form>
<table id="listaus">

	<thead>	
		<tr>
			<th  colspan = "2" height = 30px class="oikea"> Hakusana: </th>
			<th  height = 40px > <input type="text" size ="20"> </th>
			<th> <input type="button" value="Hae"> </th>
		</tr>			
		<tr>
			<th>Etunimi</th>
			<th>Sukunimi</th>
			<th>Puhelin</th>
			<th>Sähköposti</th>							
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
</form>
<script>
$(document).ready(function(){
	$.ajax({url:"asiakkaat", type:"GET", dataType:"json", success:function(result){//Funktio palauttaa tiedot json-objektina		
		$.each(result.asiakkaat, function(i, field){  
        	var htmlStr;
        	htmlStr+="<tr>";
        	htmlStr+="<td>"+field.etunimi+"</td>";
        	htmlStr+="<td>"+field.sukunimi+"</td>";
        	htmlStr+="<td>"+field.puhelin+"</td>";
        	htmlStr+="<td>"+field.sposti+"</td>";
        	htmlStr+="</tr>";
        	$("#listaus tbody").append(htmlStr);
        });	
    }});
});	

</script>

</body>
</html>