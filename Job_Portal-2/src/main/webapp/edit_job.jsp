<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="false"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Job Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBConnect.getConn());
						Jobs j = dao.getJobById(id);
						%>

						<h5>Edit Job</h5>
					</div>

					<form action="update" method="post">

						<input type="hidden" value="<%=j.getId()%>" name="id">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required="required" class="form-control"
								value="<%=j.getTitle()%>">
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected="selected" value="<%=j.getLocation()%>"><%=j.getLocation()%></option>
									<option value="Odisha">Odisha</option>
									<option value="Tp. Ho Chi Minh">Tp. Ho Chi Minh</option>
									<option value="Tp. Ha Noi">Tp. Ha Noi</option>
									<option value="Tp. Hue">Tp. Hue</option>
									<option value="Tp. Da Nang">Tp. Da Nang</option>
									<option value="Hydrabad">Hydrabad</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Category</label> <select name="category"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected="selected" value="<%=j.getCategory()%>"><%=j.getCategory()%></option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Teacher">Teacher</option>
									<option value="Engineer">Engineer</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Status</label> <select name="status" class="form-control">
									<option class="Active" value="<%=j.getStatus()%>"><%=j.getStatus()%></option>
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea required="required" rows="6" cols="" name="desc"
								class="form-control"><%=j.getDescription()%></textarea>
						</div>
						<button class="btn btn-success">Update Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>