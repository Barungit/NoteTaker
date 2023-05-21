<!doctype html>
<html lang="en">
  <head>
    <title>Note taker : Homepage</title>
    <%@include file="allcssjs.jsp" %>
    </head>
  <body>
    <div class = "container-fluid">
    	<%@include file="navbar.jsp" %>
    
    		<div class="card py-5">
    		<img alt="" class="img-fluid mx-auto" style="max-width:400px;" src="img/notes.png" />
    		<h1 class="text-primary text-uppercase text-center mt-3">Start taking Your Notes here!</h1>
    		<div class="container text-center">
    			<a href = "add_notes.jsp"><button class="btn btn-outline-primary text-center">Start Here</button>
    			</a>
    		</div>
    		</div>
    </div>
    
    </body>
</html>