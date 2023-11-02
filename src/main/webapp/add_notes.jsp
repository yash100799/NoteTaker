<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NoteTaker : Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>Please fill your note detail.</h1>

		<!-- This is add form -->

		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here" />
			</div>
			<div class="form-group">
				<label for="content">Note Content(Characters not more than 1500)</label>
				<textarea name="content" required id="content" class="form-control"
					style="height: 300px;" placeholder="Enter your content here"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>

		</form>

	</div>

</body>
</html>