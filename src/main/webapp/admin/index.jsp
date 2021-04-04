<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Homepage</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
</head>
<body>
	<%@ include file="header.jsp"%>
	<main class="py-5 px-3">
		<div class="row">
			<div class="col-md-3">
				<div class="nav flex-column nav-pills" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
						href="users" role="tab" aria-controls="v-pills-home"
						aria-selected="true">Users</a> <a class="nav-link"
						id="v-pills-profile-tab" data-toggle="pill" href="categories"
						role="tab" aria-controls="v-pills-profile" aria-selected="false">Categories</a>
					<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
						href="books" role="tab" aria-controls="v-pills-messages"
						aria-selected="false">Books</a> <a class="nav-link"
						id="v-pills-settings-tab" data-toggle="pill" href="customers"
						role="tab" aria-controls="v-pills-settings" aria-selected="false">Customers</a>
					<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill"
						href="reviews" role="tab" aria-controls="v-pills-settings"
						aria-selected="false">Reviews</a> <a class="nav-link"
						id="v-pills-settings-tab" data-toggle="pill" href="orders"
						role="tab" aria-controls="v-pills-settings" aria-selected="false">Orders</a>
				</div>
				<div class="quick-action mt-3">
					<h4>Quick actions:</h4>
					<div class="list-group">
						<a href="#" class="list-group-item list-group-item-action"
							style="border: none;"> New User </a> <a href="#"
							class="list-group-item list-group-item-action"
							style="border: none;">New Book</a> <a href="#"
							class="list-group-item list-group-item-action"
							style="border: none;">New Category</a> <a href="#"
							class="list-group-item list-group-item-action"
							style="border: none;">New Customer</a>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="row">
					<table class="table table-hover">
						<caption>Recent Sales</caption>
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
								<th scope="col">Handle</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry</td>
								<td>the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<table class="table table-hover">
						<caption>Recent Reviews</caption>
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
								<th scope="col">Handle</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry</td>
								<td>the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<h4>Statistics:</h4>
					
				</div>
			</div>
		</div>
	</main>
	<jsp:directive.include file="footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>