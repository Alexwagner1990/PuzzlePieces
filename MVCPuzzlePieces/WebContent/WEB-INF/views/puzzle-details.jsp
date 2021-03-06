<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" />
<body>
	<jsp:include page="logged-in-navbar.jsp" />
	<h1 class="header">Puzzle Details</h1>
	<div class="container bg-3 text-center">
		<img src="${puzzle.imageUrl}" width="295" height="260"
			alt="${puzzle.name}">
		</p>

		<p>
		<h2>About this puzzle:</h2>
		</p>


		<p>Puzzle Name: ${puzzle.name}</p>



		<p>
			Puzzle Category:
			<c:forEach var="cat" items="${puzzle.categories}">
											${cat.name }
											</c:forEach>
		</p>


		<p>Puzzle size: ${puzzle.size}</p>


		<p>Condition: ${ii.condition}</p>


		<p>Puzzle Owner: ${user.userName}</p>


		<p>Puzzle Rating: ${rating}</p>


		<c:if test="${user.id != userLoggedIn.id }">
			<div class="Request">
				<form action="makeRequest.do" method="get">
					<input type="hidden" value="${ii.id }" name="id"> <input
						type="submit" class="btn btn-outline-info"
						value="Request This Puzzle!">
				</form>
				<br>
			</div>
		</c:if>
		<div class="Rate Puzzle">
			<form action="puzzleRatingPage.do" method="get">
				<input type="hidden" value="${ii.id }" name="id"> <input
					type="submit" class="btn btn-outline-info" value="Rate">
			</form>
			<br>
		</div>
		<div class="SeeOwnerProfile">
			<c:if test="${user.id != userLoggedIn.id }">
				<form action="otherUserProfile.do" method="get">
					<input type="hidden" value="${user.id }" name="userId"> <input
						type="submit" class="btn btn-outline-info" value="See Owner">
					<br>
				</form>
			</c:if>
		</div>
		<div>
			<c:if test="${userLoggedIn.id == 5 }">
				<a href="updateInventoryPage.do?itemId=${puzzle.id }">
					<button type="submit" class="btn btn-outline-info">Update</button>
				</a>
				<a href="deleteInventory.do?itemId=${puzzle.id }">
					<button type="submit" class="btn btn-outline-danger"
						onclick=" return confirm('Are you sure you want to delete this puzzle?')">Delete</button>
				</a>
			</c:if>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<jsp:include page="script.jsp" />
</body>
</html>