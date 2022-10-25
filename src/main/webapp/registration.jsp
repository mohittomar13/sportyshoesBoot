<%@page import="com.sportyshoes.pojos.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<%@ include file="../includefiles/headandtitle.jspf"%>
</head>

<body>

	<%@ include file="../includefiles/header.jspf"%>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<br>
		<br>
		<div class="container">
			<h1>Registration Page</h1>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
<!-- 	<section class="login_box_area section_gap"> -->
	<section class="login_box_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="login_form_inner"
						style="box-shadow: 0px 0px 15px #cccccc;">
						
						<%
							/*
								For testing messaging system
							*/
							//Message msg = new Message("Register Success..!! :-)", "alert-success", "alert");
							//Message msg = null;
							
							Message msg = (Message) request.getAttribute("msg");
							if(msg != null) {
						%>
						<div class="alert <%= msg.getCssClass() %>" role="alert"><%= msg.getText() %></div>
						<%
							request.removeAttribute("msg");
							}
						%>
						
						
						
						
						
						
						
						
						<h3>Customer &nbsp;&nbsp; Registration &nbsp;&nbsp; Form</h3>


						<!-- 						CUSTOMER REGISTRATION FORM -->
						<form class="row login_form" action="registerNewCustomer"
							method="post" id="contactForm">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="Name" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Name'">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="address" name="address"
									placeholder="Street Address" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Street Address'">
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="Email" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Email'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="Password"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Password'">
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Register</button>
							</div>
						</form>
						
						
						
					</div>
				</div>
			</div>
		</div>
	</section>
<br><br><br>
	<!--================End Login Box Area =================-->


	<%@ include file="../includefiles/footer.jspf"%>
	<%@ include file="../includefiles/scripttags.jspf"%>
</body>

</html>