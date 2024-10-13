<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Home Page</title>
  </head>
  <body>
    <div class="container">
    	<div class="card mx-auto mt-5 bg-secondary" style="width: 50%;">
	    <h1 class="text-center text-white">Complex Form</h1>
	    
<!-- 	    <div class="alert alert-danger" role="alert">This is danger alert</div>
 -->	    
    		<div class="card-body">
    			<form action="handleform" method="post">
    				<div class="from-group">
    					<label>Your name</label>
    					<input type="text" name="name" 
    							placeholder="Enter your name"
    							class="form-control"
    							/>
    				</div>
    				
    				<div class="from-group">
    					<label>Your ID</label>
    					<input type="text" name="id" 
    							placeholder="Enter your ID"
    							class="form-control"
    							/>
    				</div>
    				
    				<div class="from-group">
    					<label>Your DOB</label>
    					<input type="text" name="dob" 
    							placeholder="Enter your DOB(dd/mm/yyyy)"
    							class="form-control"
    							/>
    				</div>
    				
    				<div class="from-group">
    					<label>Select Courses</label>
    					<select name="courses" class="form-control" multiple>
    						<option>Java</option>
    						<option>Python</option>
    						<option>C++</option>
    						<option>Django</option>
    						<option>Spring</option>
    					</select>
    				</div>
    				
    				<div class="form-group">
    					<span>Select Gender</span>
    					<div class="form-check form-check-inline">
    						<input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male"/>
    						<label for="inlineRadio1">Male</label>
    					</div>
    					<div class="form-check form-check-inline">
    						<input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="female"/>
    						<label for="inlineRadio1">Female</label>
    					</div>
    				</div>
    				
    				<div class="form-group">
    					<label>Select Type</label>
    					<select class="form-control" name="type">
    						<option value="oldStudent">Old Student</option>
    						<option value="normalStudent">Normal Student</option>    						
    					</select>
    				</div>
    				
    				<div class="card">
    					<div class="card-body">
    						<p>Your Address</p>
		    				<div class="form-group">
		    					<input name="address.street" type="text" class="form-control" placeholder="Enter street" />
		    				</div>						
		    				<div class="form-group">
		    					<input name="address.city" type="text" class="form-control" placeholder="Enter city" />
		    				</div>						
    					</div>
    				</div>
    				
    				<div class="container text-center">
    					<button class="btn btn-outline-light mt-2">Submit</button>
    				</div>
    			</form>
    		</div>
    	</div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
  </body>
</html>
