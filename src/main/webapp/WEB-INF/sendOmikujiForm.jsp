<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Omikuji Send Form</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="bg-image position-relative" 
	style="
    background-image: url('images/omikuji_2.jpg');
	height: 100vh;
	filter: blur(.1rem);
    ">
	</div>
    <main class="container w-75 h-75 d-flex flex-column align-items-center pt-4 position-absolute top-50 start-50 translate-middle"
	style="z-index: 10;"
	>
		<h1 class="p-2 text-success font-weight-bold bg-warning rounded-top">Send an Omikuji!</h1>
		<form action="/submit" method="POST" 
		class="form-control mt-4 p-4 w-75 d-flex justify-content-center gap-4
		bg-warning" > 
			<div class="w-50 d-flex flex-column gap-2 ">
			
			<label for="number">Pick any number from 5 to 25</label>
			<div class="form-group input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text h-100 rounded-0"><i class="fa-solid fa-hashtag"></i></span>
                </div>
                <input type="number" name="number" id="number" min="5" max="25" 
				class="form-control" placeholder="Number from 5 to 25" />
            </div>

			<label for="city">Enter the name of any city</label>
			<div class="form-group input-group ">
                <div class="input-group-prepend">
                    <span class="input-group-text h-100 rounded-0"><i class="fa-solid fa-location-dot"></i></span>
                </div>
				<input type="text" name="city" id="city" class="form-control rounded-left" 
				placeholder="Any city"/>
            </div>

			<label for="city">Enter the name of any real person</label>
			<div class="form-group input-group ">
                <div class="input-group-prepend">
                    <span class="input-group-text h-100"><i class="fa-solid fa-person"></i></span>
                </div>
				<input type="text" name="person" id="person" class="form-control" 
				placeholder="Any real person"/>
            </div>

			<label for="hobby">Enter professional endeavour or hobby:</label>
			<div class="form-group input-group ">
                <div class="input-group-prepend">
                    <span class="input-group-text h-100"><i class="fa-solid fa-user-tie"></i></span>
                </div>
				<input type="text" name="activity" id="activity" class="form-control" placeholder="Work or hobby"/>
            </div>
		</div>
		<div class="d-flex w-50 flex-column gap-2">
			<label for="being">Enter any type of living thing</label>
			<div class="form-group input-group ">
                <div class="input-group-prepend">
                    <span class="input-group-text h-100"><i class="fa-solid fa-dna"></i></span>
                </div>
				<input type="text" name="being" id="being" class="form-control" 
				placeholder="Any living being"/>
            </div>

			<label for="niceWords">Say something nice to someone:</label>
			<textarea name="niceWords" id="niceWords" rows="3" class="w-100"
			placeholder="Something nice"></textarea>
			
			<p class="font-weight-bold text-secondary cursor-pointer"><i>Send and show a friend</i></p>

			<input type="submit" class="btn btn-success" value="Send"/>
		</div>
		</form>
	</main>
</body>
</html>