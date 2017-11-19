<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>

<head>
	<title>ForSho</title>
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
	<!--진행바-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="css/progress_style.css">
	<!--//진행바-->
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
					<input type="text" id="strsearch"/>
					<input type="submit" id="submitsearch" />
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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
								<div class="post-share" id="sourse">
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

	<script type="text/javascript">var valuekey = "${usertable.key}";</script>
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
						$firstTen = $items.slice(0, 1).clone();
					if (responseObject[num].source == "google") {
						$("#sourse", $firstTen).removeClass();
						$("#sourse", $firstTen).addClass("post-google");
					} else {
						$("#sourse", $firstTen).removeClass();
						$("#sourse", $firstTen).addClass("post-share");
					}
					$firstTen.attr("onclick", "location.href='" + responseObject[num].link + "';");
					$("img", $firstTen).attr("src", responseObject[num].imageurl);
					$("a:first", $firstTen).text(responseObject[num].title);
					$("a:eq(1)", $firstTen).text(responseObject[num].postdate);
					$("p", $firstTen).text(responseObject[num].description);
					
					num += 1;
					$tiles.append($firstTen);
					applyLayout();
				}
			};

			// Capture scroll event.
			$window.bind('scroll.wookmark', onScroll);
			$('#submitsearch');
		})(jQuery);


		$(document).ready(function () {
			setInterval(dataload,  1000 * 15)
			dataload();
		});

		function dataload() {
			var xhr = new XMLHttpRequest();
			xhr.onload = function () {
				if (xhr.status === 200 && xhr.readyState === 4) {
					responseObject = JSON.parse(xhr.responseText);

					var $items = $('li', $tiles),
						$firstTen = $items.slice(0, 12);
					for (var i = 0; i < 12; i++) {
						$item = $firstTen.eq(i);

						if (responseObject[i].source === "google") {
							$("#sourse", $item).removeClass();
							$("#sourse", $item).addClass("post-google");
						} else {
							$("#sourse", $item).removeClass();
							$("#sourse", $item).addClass("post-share");
						}
						
						$item.attr("onclick", "location.href='" + responseObject[i].link + "';");
						$("img", $item).attr("src", responseObject[i].imageurl);
						$("a:first", $item).text(responseObject[i].title);
						$("a:eq(1)", $item).text(responseObject[i].postdate);
						$("p", $item).text(responseObject[i].description);
					}

					applyLayout();
				}
			};
			xhr.open('POST', 'http://localhost:8080/data', true);
			xhr.setRequestHeader("Content-Type", "application/json");
			xhr.send(JSON.stringify({search: $("#strsearch").val(), key: valuekey}));
		}
	</script>
	<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
	<!--//wookmark-scripts-->

	<!--진행 스크립트-->
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	
	  <script txt/javascipt>
		$(document).ready(function () {
		  var $pc = $('#progressController');
		  var $pCaption = $('.progress-bar p');
		  var iProgress = document.getElementById('inactiveProgress');
		  var aProgress = document.getElementById('activeProgress');
		  var iProgressCTX = iProgress.getContext('2d');
	
	
		  drawInactive(iProgressCTX);
	
		  var width = 1;
		  var id = setInterval(frame, 10);
		  function frame() {
			if (width >= 100) {
			  clearInterval(id);
			} else {
			  width++;
			  drawProgress(aProgress, width/100, $pCaption);
			}
		  }
	
		  function drawInactive(iProgressCTX) {
			iProgressCTX.lineCap = 'square';
	
			//outer ring
			iProgressCTX.beginPath();
			iProgressCTX.lineWidth = 15;
			iProgressCTX.strokeStyle = '#e1e1e1';
			iProgressCTX.arc(137.5, 137.5, 129, 0, 2 * Math.PI);
			iProgressCTX.stroke();
	
			//progress bar
			iProgressCTX.beginPath();
			iProgressCTX.lineWidth = 0;
			iProgressCTX.fillStyle = '#e6e6e6';
			iProgressCTX.arc(137.5, 137.5, 121, 0, 2 * Math.PI);
			iProgressCTX.fill();
	
			//progressbar caption
			iProgressCTX.beginPath();
			iProgressCTX.lineWidth = 0;
			iProgressCTX.fillStyle = '#fff';
			iProgressCTX.arc(137.5, 137.5, 100, 0, 2 * Math.PI);
			iProgressCTX.fill();
	
		  }
		  function drawProgress(bar, percentage, $pCaption) {
			var barCTX = bar.getContext("2d");
			var quarterTurn = Math.PI / 2;
			var endingAngle = ((2 * percentage) * Math.PI) - quarterTurn;
			var startingAngle = 0 - quarterTurn;
	
			bar.width = bar.width;
			barCTX.lineCap = 'square';
	
			barCTX.beginPath();
			barCTX.lineWidth = 20;
			barCTX.strokeStyle = '#76e1e5';
			barCTX.arc(137.5, 137.5, 111, startingAngle, endingAngle);
			barCTX.stroke();
	
			$pCaption.text((parseInt(percentage * 100, 10)) + '%');
		  }
	
		  var percentage = $pc.val() / 100;
		  drawProgress(aProgress, percentage, $pCaption);
	
	
		});
	  </script>
	  <!--//진행 스크립트-->
	<!--//End-wrap-->
</body>

</html>