<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.Session"%>
<%@ page import="com.entities.Note"%>
<%@ page import="com.helper.FactoryProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcssjs.jsp" %>
</head>
<body>

	<div class = "container">
    	<%@include file="navbar.jsp" %>
    	<h2 style="color:red">Edit Page :</h2>
    	<%
    		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    	Session s = FactoryProvider.getFactory().openSession();
    	Note note = (Note)s.get(Note.class, noteId);
    	%>
    	
    	<form action="UpdateServlet" method="post">
    	
    	<input value="<%= note.getId() %>" name="noteId" type="hidden" />
    	
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input required 
    		name = "title"
    		type="text" 
    		class="form-control" 
    		id="title" 
    		aria-describedby="emailHelp" 
    		value= "<%= note.getTitle() %>" />
  </div>
  
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea required 
    			name = "content"
    			id="content" 
    			class="form-control" 
    			style="height:300px"><%= note.getContent() %></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">SAVE</button>
  </div>
</form>
    	
    </div>
</body>
</html>