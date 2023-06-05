<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Lora&display=swap"
	rel="stylesheet">
<title>index</title>
<script>
	function validateFileExtension(event) {
		var files = event.target.files;
		var file = files[0];
		var fileName = file.name;
		var status = fileName.endsWith(".jpg");
		if (status == false) {
			alert("Upload a JPG file only otherwise you won't get the perfect output");
			event.currentTarget.value = "";
		}
		else if(file.size>2097152)
			{
			alert("Maximum size allowed is 2MB only");
			event.currentTarget.value = "";
			}
	}
</script>

<style>
* {
	box-sizing: border-box;
	margin: 0px;
	font-family: 'Lora', serif;
}

body {
	background:
		url('https://images.unsplash.com/photo-1527402858-36f052d83df4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80');
	background-repeat: no-repeat;
	background-size: cover;
}

#card {
	border-radius: 10px;
	background-color: #f1ebeb;
	width: 50rem;
	height: auto;
	margin: auto;
}

input[type="text"], [type="email"], [type="submit"], textarea {
	display: block;
	margin: 2rem auto;
	width: 80%;
	height: 2rem;
	border: 0.1rem solid black;
	border-radius: 5px;
	text-align: center;
}

#logoandprofilecontainer {
	border: 0.1rem black solid;
	border-radius: 5px;
	background-color: white;
	text-align: center;
	width: 80%;
	margin: auto;
}
</style>
</head>

<body>

	<div id="card">
		<h1 style="text-align: center; padding: 1rem; color: blueviolet;">Enter
			your details correctly...</h1>
		<form action="getdetails" method="post" enctype="multipart/form-data">
			<input type="text" name="name" placeholder="Enter name" required /> <input
				type="email" name="emailId" placeholder="Enter email" required /> <input
				type="text" name="linkedin"
				placeholder="Enter you linkedIn profile link. Format: https://***"
				required /> <input type="text" name="facebook"
				placeholder="Enter you facebook profile link. Format: https://***"
				required /> <input type="text" name="work"
				placeholder="GitHub/Gitlab/Mercurial/other. Format: https://***"
				required />
			<textarea name="bio" placeholder="Enter your bio here"
				style="height: 5rem; resize: none;" required></textarea>
			<textarea name="career"
				placeholder="Enter a short summary of your career"
				style="height: 5rem; resize: none;" required></textarea>
			<textarea name="skills"
				placeholder="Enter your skills here and separate each skill with a comma"
				style="height: 3rem; resize: none;" required></textarea>
			<textarea name="about" placeholder="About yourself in 130 words"
				style="height: 7rem; resize: none;" required></textarea>
			<div id="logoandprofilecontainer">
				<label for="logo" style="font-weight: bold;">LOGO (JPG only 2MB Max):</label>
				<input type="file" name="logo" id="logo"
					onchange="validateFileExtension(event)" required /><br> <br>
				<label for="profilepic" style="font-weight: bold;">Profile
					Picture (JPG only 2MB Max): </label> <input type="file" name="profilepic"
					id="profilepic" onchange="validateFileExtension(event)" required />
			</div>
			<input type="submit"
				style="background-color: #111142; color: white; font-weight: bold; margin-bottom: 2rem;"></input>
		</form>
	</div>
</body>

</html>