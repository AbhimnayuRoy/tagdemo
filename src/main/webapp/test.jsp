<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

	<head>
	
	</head>

	<body>
	<!--Use of JSTL  tag  -->
	<c:set var="stuff" value="<%=new java.util.Date() %>"/>
	
	Time on the server is : ${stuff}
	</body>
</html>