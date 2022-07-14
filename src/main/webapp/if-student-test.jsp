<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.* , com.love2code.jsp.tagdemo.Student" %>

<%
	//Cretae some dummy student data to show
	 List<Student> data = new ArrayList<Student>();
	 data.add(new Student("Abhimanyu","Roy",true));
	 data.add(new Student("Pankaj","Udas",false));
	 data.add(new Student("Arit","Ghosh",false));
	 data.add(new Student("Arit","Ghosh",false));
	
	 pageContext.setAttribute("StudentList", data);
%>

<html>
	<head>
	
	</head>
	<body>
	<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>IsGoldCustomer</th>
		
	</tr>	
		<c:forEach var="student" items="${StudentList}">
		<tr>
			<td>${student.firstName} </td>
			<td>${student.lastName}</td> 
			<td>
			<c:if test="${student.goldCustomer}">
				<h6 style="font-size:20px">Special Discount</h6>
			</c:if>
			
			<c:if test="${not student.goldCustomer}">
				<b style="font-size:50px"> - </b>
			</c:if>
			</td>
			
			<br>
		</tr>	
		</c:forEach>
	</table>
	
	
	</body>
</html>