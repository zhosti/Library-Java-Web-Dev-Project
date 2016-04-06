<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form name="add-user" class="form-add-user" id="add-user-form" action="/libraries/registerUser" modelAttribute="user" method="POST">
        <h2 class="form-signin-heading">Add user</h2>
        <label for="username">Username</label>
        <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
        <label for="user_status">Status</label>
        <select class="form-control" name="status" id="user_status">
		    <option value="0">Inactiv</option>
  			<option value="1" selected="selected">Active</option>
		</select>
		<label for="user_role">Role</label>
	 	<select class="form-control" name="role" id="user_role">
		    <option value="2" selected="selected">User</option>
  			<option value="3">Admin</option>
		</select>
		<label for="password">Password</label>
        <input type="password" id="password" name="password" class="form-control" required>
        
        <label for="pid">PID</label>
        <input type="text" id="pid" name="pid" class="form-control" placeholder="PID" required>
        <label for="date_of_birth">Date of birth</label>
        <input type="date" id="date_of_birth" name="dateOfBirth" class="form-control">

        <input class="btn btn-lg btn-primary btn-block" name="submit" type="submit" value="Add"/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
   	</form:form>
</body>
</html>