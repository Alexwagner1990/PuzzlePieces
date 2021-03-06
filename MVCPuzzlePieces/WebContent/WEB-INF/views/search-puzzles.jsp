<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" />
<body>
	<jsp:include page="logged-in-navbar.jsp" />


	<div class="container">
		<div class="wrapper">
			<form action="searchPuzzle.do" method="GET" class="form-signin">

				<h2 class="form-signin-heading">Search for Puzzles</h2>
				<hr class="colorgraph">

				<h4>
					Category: <select name="category">

						<option value="Pets">Pets</option>
						<option value="Ocean">Ocean</option>
						<option value="Under the sea">Under the sea</option>
						<option value="Landscape">Landscape</option>
						<option value="Flowers">Flowers</option>
						<option value="Space">Space</option>
						<option value="Animals">Animals</option>
						<option value="Jungle">Jungle</option>
						<option value="Futuristic">Futuristic</option>
						<option value="Food">Food</option>
						<option value="Architecture">Architecture</option>
						<option value="Superhero">Superhero</option>
						<option value="Cartoon">Cartoon</option>
						<option value="Sports">Sports</option>
						<option value="Miscellaneous">Miscellaneous</option>
					</select>
				</h4>
				<br>

				<h4>
					Size: <select name="size">
						<option value="350">350</option>
						<option value="500">500</option>
						<option value="1000">1000</option>
						<option value="1500">1500</option>
						<option value="3000">3000</option>
					</select>
				</h4>
				<br>
				<h4>
					Condition: <select name="condition">
						<option value="1">New</option>
						<option value="2">Like new</option>
						<option value="3">Used</option>
						<option value="4">Worn</option>
					</select>
				</h4>

				<br>

				<button class="btn btn-lg btn-primary btn-block" name="Submit"
					value="Submit" type="Submit">Submit</button>

			</form>
		</div>
	</div>
	<div class="container">
		<div class="wrapper">
			<form action="searchPuzzleByRating.do" method="GET"
				class="form-signin">
				<h2 class="form-signin-heading">Search for Puzzles</h2>
				<hr class="colorgraph">
				<h4>
					Puzzle Rating: <select name="puzzleRating">
						<option value="1">More than 1</option>
						<option value="2">More than 2</option>
						<option value="3">More than 3</option>
						<option value="4">More than 4</option>
						<option value="5">Perfect 5</option>
					</select>
				</h4>
				<br>
				<button class="btn btn-lg btn-primary btn-block" name="Submit"
					value="Submit" type="Submit">Submit</button>

			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<jsp:include page="script.jsp" />
</body>
</html>








