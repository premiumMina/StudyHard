<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<body>

	<div class="slideshow-container">
		<div class="mySlides">
			<img src="./image/study1.jpg" style="width: 100%">
		</div>

		<div class="mySlides">
			<img src="./image/study2.jpg" style="width: 100%">
		</div>

		<div class="mySlides">
			<img src="./image/study3.jpg" style="width: 100%">
		</div>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			slides[slideIndex - 1].style.display = "block";
			setTimeout(showSlides, 1000); // 3초마다 사진 바뀜
		}
	</script>

</body>
</html> 