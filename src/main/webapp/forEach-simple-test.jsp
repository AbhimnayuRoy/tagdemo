<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		//set some dummy data
		String [] cities = {"Kolkata", "Mumbai","Bandel", "Patna","Chappra"};
		pageContext.setAttribute("myCities",cities);
	%>
<html>

	<head>
	
	</head>

	<body>
	
		<h1>Hello This is called bisssnesss</h1>
		<ul>
		<c:forEach var="tempCities" items="${myCities}" >
			<h2><li>${tempCities} </li></h2> 
		
		</c:forEach>
		</ul>
		
	</body>
</html>