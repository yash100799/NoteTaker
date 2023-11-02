<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>NoteTaker : HomePage</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<div class="card my-6 p-3">
			<img alt="" class="img-fluid mx-auto" style="max-width: 300px;"
				src="img/notepad.png">
			<h1 class="text-primary text-uppercase text-center mt-3">Start
				Taking your notes</h1>

			<form action="add_notes.jsp">

				<div class="container text-center">
					<button href="add_notes.jsp" class="btn btn-outline-primary">Start
						here</button>

				</div>

			</form>

		</div>
	</div>


</body>
</html>