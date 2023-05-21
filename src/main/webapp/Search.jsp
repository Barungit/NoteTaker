<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcssjs.jsp" %>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp" %>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>
		
		<div class ="row">
		<div class ="col-12">
		<%
		Session s = FactoryProvider.getFactory().openSession();
		String st = request.getParameter("search");
		char c = '"';
		String que = " '%" + st + "%'";
		String search = "from Note where title like" + que;
			Query<Note> q = s.createQuery(search);
			//List<Note> list = q.list();
			List<Note> list = q.getResultList();
			
			for(Note note:list)
			{
			%>
			<div class="card mt-3" >
			<img class="card-img-top ms-5 mt-3" style="max-width:100px;" src="img/notes.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title font-size" style="font-size:150%;"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <p><b class="text-primary"><%= note.getAddedDate() %> </b> </p>
   <div class="container p-2">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
   </div>
  </div>
</div>
			
			
			 <%	//out.println(note.getId() + " = " + note.getTitle() + "<br>");
			}
			s.close();
		%>
		
		</div>
		
		</div>
				
	</div>
</body>
</html>