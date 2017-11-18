<!DOCTYPE HTML>
<html>

<head>
	<title>Forsho</title>
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="images/fav-icon.png" />
	<script type="application/x-javascript"> addEventListener("load", function() {
			setTimeout(hideURLbar, 0); 
		}, false);
		function hideURLbar(){
			window.scrollTo(0,1);
		} </script>
	</script>
	<!--webfonts-->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<!--//webfonts-->
	<!-- Global CSS for the page and tiles -->
	<link rel="stylesheet" href="css/main.css">
	<!-- //Global CSS for the page and tiles -->
	<!---start-click-drop-down-menu-->
	<script src="js/jquery.min.js"></script>
	<!--start-dropdown-->
	<script type="text/javascript">
		var $ = jQuery.noConflict();
		$(function () {
			$('#activator').click(function () {
				$('#box').animate({ 'top': '0px' }, 500);
			});
			$('#boxclose').click(function () {
				$('#box').animate({ 'top': '-700px' }, 500);
			});
		});
		$(document).ready(function () {
			//Hide (Collapse) the toggle containers on load
			$(".toggle_container").hide();
			//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
			$(".trigger").click(function () {
				$(this).toggleClass("active").next().slideToggle("slow");
				return false; //Prevent the browser jump to the link anchor
			});

		});
	</script>
	<!--//End-dropdown-->
	<!--//End-click-drop-down-menu-->
</head>

<body>
	<!---start-wrap-->
	<!---start-header-->
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="index.html">
					<img src="images/logo.png" title="pinbal" />
				</a>
			</div>
			<div class="nav-icon">
				<a href="#" class="right_bt" id="activator">
					<span> </span>
				</a>
			</div>
			<div class="box" id="box">
				<div class="box_content">
					<div class="box_content_center">
						<div class="form_content">
							<div class="menu_box_list">
								<ul>
									<li>
										<a href="#">
											<span>home</span>
										</a>
									</li>
									<li>
										<a href="#">
											<span>About</span>
										</a>
									</li>
									<li>
										<a href="#">
											<span>Works</span>
										</a>
									</li>
									<li>
										<a href="#">
											<span>Clients</span>
										</a>
									</li>
									<li>
										<a href="#">
											<span>Blog</span>
										</a>
									</li>
									<li>
										<a href="contact.html">
											<span>Contact</span>
										</a>
									</li>
									<div class="clear"> </div>
								</ul>
							</div>
							<a class="boxclose" id="boxclose">
								<span> </span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="top-searchbar">
				<form>
					<input type="text" />
					<input type="submit" value="" />
				</form>
			</div>
			<div class="userinfo">
				<div class="user">
					<ul>
						<li>
							<a href="#">
								<img src="images/user-pic.png" title="user-name" />
								<span>Ipsum</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="clear"> </div>
		</div>
	</div>
	<!---//End-header-->
	<!---start-content-->
	<div class="content">
		<div class="wrap">
			<div id="main" role="main">
				<ul id="tiles">
					<!-- These are our grid blocks -->
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<!--//-->
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<!--//-->
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<li onclick="location.href='single-page.html';">
						<img src="" width="282" height="auto">
						<div class="post-info">
							<div class="post-basic-info">
								<h3>
									<a href="#">Animation films</a>
								</h3>
								<span>
									<a href="#">
										<label> </label>Movies</a>
								</span>
								<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
							</div>
							<div class="post-info-rate-share">
								<div class="rateit">
									<span> </span>
								</div>
								<div class="post-share">
									<span> </span>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</li>
					<!-- End of grid blocks -->
				</ul>
			</div>
		</div>
	</div>
	<!---//End-content-->
	<!--wookmark-scripts-->
	<script src="js/jquery.imagesloaded.js"></script>
	<script src="js/jquery.wookmark.js"></script>

	<script type="text/javascript">
		var responseObject;
		var $tiles;
		var num = 12;

		function applyLayout() {
				$tiles.imagesLoaded(function () {
					// Destroy the old handler
					if ($handler.wookmarkInstance) {
						$handler.wookmarkInstance.clear();
					}

					// Create a new layout handler.
					$handler = $('li', $tiles);
					$handler.wookmark(options);
				});
			}

		(function ($) {
			$tiles = $('#tiles'),
				$handler = $('li', $tiles),
				$main = $('#main'),
				$window = $(window),
				$document = $(document),
				options = {
					autoResize: true, // This will auto-update the layout when the browser window is resized.
					container: $main, // Optional, used for some extra CSS styling
					offset: 20, // Optional, the distance between grid items
					itemWidth: 280 // Optional, the width of a grid item
				};
			
			function onScroll() {
				// Check if we're within 100 pixels of the bottom edge of the broser window.
				var winHeight = window.innerHeight ? window.innerHeight : $window.height(), // iphone fix
					closeToBottom = ($window.scrollTop() + winHeight > $document.height() - 100);

				if (closeToBottom) {
					// Get the first then items from the grid, clone them, and add them to the bottom of the grid
					var $items = $('li', $tiles),
						$firstTen = $items.slice(0, 1).clone(); //처음 10개의 item을 잘라낸다

					$firstTen.attr("onclick", "location.href='" + responseObject[num].link + "';");
					$("img", $firstTen).attr("src", responseObject[num].imageurl); //이미지 변경
					$("a:first", $firstTen).text(responseObject[num].title); //제목텍스트
					$("a:eq(1)", $firstTen).text(responseObject[num].postdate); //분야텍스트
					$("p", $firstTen).text(responseObject[num].description); //내용텍스트
					
					num += 1;
					$tiles.append($firstTen); //수정된 타일들 추가
					applyLayout(); //아마도 변경사랑 reload
				}
			};

			// Capture scroll event.
			$window.bind('scroll.wookmark', onScroll); //스크롤 변경이 감지되면 onScroll을 호출하라
		})(jQuery);


		$(document).ready(function () {
			var xhr = new XMLHttpRequest();
			xhr.onload = function () {
				if (xhr.status === 200) {
					responseObject = JSON.parse(xhr.responseText); //json가져와 js객체로 변경

					var $items = $('li', $tiles),
						$firstTen = $items.slice(0, 12); //처음 10개의 item을 잘라낸다
					for (var i = 0; i < 12; i++) {
						$item = $firstTen.eq(i);
						$item.attr("onclick", "location.href='" + responseObject[i].link + "';");
						$("img", $item).attr("src", responseObject[i].imageurl); //이미지 변경
						$("a:first", $item).text(responseObject[i].title); //제목텍스트
						$("a:eq(1)", $item).text(responseObject[i].postdate); //분야텍스트
						$("p", $item).text(responseObject[i].description); //내용텍스트
					}

					applyLayout();
				}
			};
			xhr.open('GET', 'http://localhost:8080/data', true); //요청 준비
			xhr.send(null); //요청 전송
		});
	</script>
	<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js">


	</script>
	<!--//wookmark-scripts-->
	<!--//End-wrap-->
</body>

</html>