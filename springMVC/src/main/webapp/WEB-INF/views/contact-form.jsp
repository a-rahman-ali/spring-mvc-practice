<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Contact Form</title>
  </head>
  <body>
  
    <h1 class="text-center">${ Header }</h1> 
    <!-- <h1 class="text-center">Contact Form</h1> -->
    <div class="container mt-5 p-3 border border-secondary rounded">
	    <form action="processform" method="post">
		  <div class="form-group">
		    <label for="exampleInputEmail1">Email address</label>
		    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="userEmail">
		  </div>
		  
		  <div class="form-group">
		    <label for="userName">User name</label>
		    <input type="text" class="form-control" id="userName" aria-describedby="userNameHelp" name="userName">
		  </div>
		  
		  <div class="form-group">
		    <label for="note">Note</label>
		    <input 
		    	type="text" 
		    	class="form-control" 
		    	id="note" 
		    	aria-describedby="noteHelp"
		    	name="note"
		    	>
		  </div>
		  
		  <div class="container text-center">
			  <button type="submit" class="btn btn-success mb-3">Submit</button>
		  </div>
		</form>    	
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

  </body>
</html>
