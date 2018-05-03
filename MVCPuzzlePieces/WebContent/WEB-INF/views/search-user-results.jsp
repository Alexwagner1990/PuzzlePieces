<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" />
<body>
	<jsp:include page="logged-in-navbar.jsp" />
	<h1 class="header">Users according to your search results</h1>
	<div class="container" align="center">
		<c:if test="${not empty users }">
			<c:forEach var="user" items="${users }">
				<c:if test="${user.id != userLoggedIn.id}">
					<h3>
						<a href="otherUserProfile.do?userId=${user.id }">${user.userName }</a>
					</h3>
				</c:if>
				<c:if test="${user.id == userLoggedIn.id }">
					<p>You searched for yourself, silly.</p>
					<a href="userProfile.do?userId=${userLoggedIn.id }">
						<button type="submit" class="btn btn-outline-info">Go back to your profile</button>
					</a>
				</c:if>
			</c:forEach>
		</c:if>
		<c:if test="${empty users }">No Users with this Username</c:if>
	</div>
		<jsp:include page="footer.jsp" />	
		<jsp:include page="script.jsp" />
</body>
</html>