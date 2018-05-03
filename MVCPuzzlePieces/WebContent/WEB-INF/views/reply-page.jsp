<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" />

<body>
	<jsp:include page="logged-in-navbar.jsp" />
	<h3 class="header">User: ${userLoggedIn.userName}</h3>
	<h2>Reply to your request</h2>
	<br> ${request.requester.userName} ${request.message}
	<form action="acceptingOrRejectingRequest.do" method="post">
		<input type="hidden" value="${request.id }" name="id"> <br>
		<label for="reply">Reply:</label> <select name="choice">
			<option value="1">Reject Request</option>
			<option value="2">Accept Request</option>
			<option value="3">Gift Puzzle</option>
		</select> <br>
		<textarea name="message" rows="10" cols="30"
			placeholder="Reply here..."></textarea>
		<input type="submit" class="btn btn-outline-info" value="Send">
	</form>

	<jsp:include page="footer.jsp" />
	<jsp:include page="script.jsp" />
</body>
</html>