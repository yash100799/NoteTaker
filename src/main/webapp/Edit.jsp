<%@page import="org.hibernate.Session"%>
<%@page import="com.Entities.*"%>
<%@page import="com.Helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NoteTaker : Edit Page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h1>Edit your note.</h1>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">

			<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=note.getTitle()%>" />
			</div>
			<div class="form-group">
				<label for="content">Note Content(Characters not more than 1500)</label>
				<textarea name="content" required id="content" class="form-control"
					style="height: 300px;" placeholder="Enter your content here"><%=note.getContent()%>
					</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save your
					note</button>
			</div>

		</form>

	</div>

</body>
</html>