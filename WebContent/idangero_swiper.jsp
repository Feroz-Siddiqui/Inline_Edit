<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Example of Bootstrap 3 Tabs Events</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>

<link rel="stylesheet" href="<%=baseURL%>css/swiper.min.css">


<style>
body {
	background: #eee;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 0;
	overflow-y: hidden;
	overflow-x: hidden;
}

.swiper-container {
	width: 500px;
	height: 300px;
	margin: 20px auto;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
</style>
<script type="text/javascript">
var swiper ;
</script>
<style type="text/css">
.bs-example {
	margin: 20px;
}
</style>
</head>
<body>
	<div class="bs-example">
		<ul class="nav nav-tabs" id="myTab">
			<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
			<li><a data-toggle="tab" href="#profile">Profile</a></li>

		</ul>
		<div class="tab-content" id="myTabContent">
			<div id="sectionA" class="tab-pane fade in active">
				<div class="swiper-container swiper1">
					<div class="swiper-wrapper">
						<div class="swiper-slide">Slide 1</div>
						<div class="swiper-slide">Slide 2</div>
						<div class="swiper-slide">Slide 3</div>
						<div class="swiper-slide">Slide 4</div>
						<div class="swiper-slide">Slide 5</div>
						<div class="swiper-slide">Slide 6</div>
						<div class="swiper-slide">Slide 7</div>
						<div class="swiper-slide">Slide 8</div>
						<div class="swiper-slide">Slide 9</div>
						<div class="swiper-slide">Slide 10</div>
					</div>
					<!-- Add Pagination -->
					<div class="swiper-pagination swiper-pagination1"></div>
					<!-- Add Arrows -->
					<div class="swiper-button-next swiper-button-next1"></div>
					<div class="swiper-button-prev swiper-button-prev1"></div>
				</div>
			</div>
			<div id="profile" class="tab-pane fade">
				<!-- Swiper -->
				<div class="swiper-container swiper2">
					<div class="swiper-wrapper">
						<div class="swiper-slide">Slide 1</div>
						<div class="swiper-slide">Slide 2</div>
						<div class="swiper-slide">Slide 3</div>
						<div class="swiper-slide">Slide 4</div>
						<div class="swiper-slide">Slide 5</div>
						<div class="swiper-slide">Slide 6</div>
						<div class="swiper-slide">Slide 7</div>
						<div class="swiper-slide">Slide 8</div>
						<div class="swiper-slide">Slide 9</div>
						<div class="swiper-slide">Slide 10</div>
					</div>
					<!-- Add Pagination -->
					<div class="swiper-pagination swiper-pagination2"></div>
					<!-- Add Arrows -->
					<div class="swiper-button-next swiper-button-next2"></div>
					<div class="swiper-button-prev swiper-button-prev2"></div>
				</div>

			</div>
			<hr>
			<p class="active-tab">
				<strong>Active Tab</strong>: <span></span>
			</p>
			<p class="previous-tab">
				<strong>Previous Tab</strong>: <span></span>
			</p>
		</div>
		<script src="<%=baseURL%>css/swiper.min.js"></script>

		<script>

var swiper1 = new Swiper('.swiper1', {
	
	initialSlide:0,
    pagination: '.swiper-pagination1',
    paginationClickable: true,
    spaceBetween: 30,
    nextButton: '.swiper-button-next1',
    prevButton: '.swiper-button-prev1',
    /*continous swiping*/
    loop:true,
    onSlideNextStart : function(swiper1) {
    	alert('swiper1 next');
    },onSlidePrevStart : function(swiper1) {
    	alert('swiper1 prev');	
    }
});
var swiper2 = new Swiper('.swiper2', {
	initialSlide:1,  
	pagination: '.swiper-pagination2',
    paginationClickable: true,
    spaceBetween: 30,
    nextButton: '.swiper-button-next2',
    prevButton: '.swiper-button-prev2',
    /*continous swiping*/
    loop:true,
    onSlideNextStart : function(swiper2) {
    	alert('swiper2 next');
    },onSlidePrevStart : function(swiper2) {
    	alert('swiper2 prev');	
    }
    
});

$('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
    var activeTab = $(e.target).text(); // Get the name of active tab
    var previousTab = $(e.relatedTarget).text(); // Get the name of previous tab
    alert(activeTab);
    //swiper2.update();
    if(activeTab=='Home'){
    	swiper1.onResize();	
    }else{
    	 swiper2.onResize(); 	
    }
   
    
}); 

/* jQuery('.swiper-container').each(function(){
	mySwiper = jQuery(this).swiper({
		onSlideNextStart : function(swiper) {
			alert($(this).html());
		}
	    });
}); */ 
/* var swiper  = new Swiper('.aaaa');
var swiper1= new Swiper('.bbbb');
 */
    </script>
</body>
</html>
