<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="allcssjs.jsp" %>
</head>
<body>
<div class = "container-fluid">
    	<%@include file="navbar.jsp" %>
    <style>
      .inline-h1 {
        display: inline;
      }
    </style>
    
    <h2 class="inline-h1">Please, fill your note details:</h2>
    <pre style="color: green; font-weight: bold; font-size: 20px;" class="inline-h1"><%
String name = request.getParameter("title");
out.println("  "+name + " is added successfully!");
%></pre>
    <!--This is add note form -->
    <form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input required 
    		name = "title"
    		type="text" 
    		class="form-control" 
    		id="title" 
    		aria-describedby="emailHelp" 
    		placeholder="Enter here" />
  </div>
  
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea required 
    			name = "content"
    			id="content" 
    			placeholder="Enter your note here..." 
    			class="form-control" 
    			style="height:300px"></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">ADD</button>
  </div>
</form>
</div>
</body>
</html>