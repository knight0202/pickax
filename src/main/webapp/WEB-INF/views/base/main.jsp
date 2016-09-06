<!-- 
	팀명		:	광부들(Miner)
	작성자	:	유상현
	날짜		:	2016.08.17
	페이지명	:	메인화면 화면 백그라운드
	상세		:	메인화면에서 사용하는 JS, CSS 등 Import
	타입		:	tiles : template (호출명)
 -->
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<script type='text/javascript' src='http://d3js.org/d3.v3.min.js'></script>
<script type='text/javascript' src='http://d3js.org/topojson.v1.min.js'></script>
<script src="http://d3js.org/queue.v1.min.js"></script>

<!-- CSS import 영역 -->

<!-- smart admin ELEMENT CC -->
<link href="${pageContext.request.contextPath}/resources/css/smartadmin-production.min.css" rel="stylesheet" media="screen">

<!-- BOOTSTRAP CSS import -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

<!-- RELATED CSS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">

<!-- FONT 영역 -->
<!-- GOOGLE FONT -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<style>
	.no-padding{
		padding:0;
	}
	body{
		background:url("${pageContext.request.contextPath}/resources/img/background/main-background.jpg");
	}
	#rotatingGlobe{
		width: 100%;
		height:80%;
	}
	#content{
		padding:0px;
	}
	#main_div{
		padding:0px;
	}
	#right_nav_div{
		position:absolute;
		width: 0;
		top: 0;
		right: -300px;
		height: 100%;
		overflow: scroll;
		display: block;
		background-color: rgba(250,250,250,0.7);
	}
	#left_block{
		position:absolute;
		top: 0;
		width: 100%;
		height: 100%;
		background-color: rgba(10,10,10,0.6);
		cursor:pointer;
	}
</style>

<title><tiles:getAsString name="title"/></title>
</head>
<body>
		<div id="content" class="col-lg-12">
			<tiles:insertAttribute name="header"/>
			<tiles:insertAttribute name="left-side"/>
			<div id="main_div" class="col-lg-12">
				<tiles:insertAttribute name="body"/>
			</div>
		</div>
		<div id="right_nav_div">
			<tiles:insertAttribute name="right-side"/>		
		</div>
		<footer class="footer">
	      <div class="container">
	        <tiles:insertAttribute name="footer"/>
	      </div>
	    </footer>
	    <div id="left_block" style="display: none;" onclick="right_side()"></div>
</body>	
	<!-- JS import 영역 -->
	
	<!-- JQUERY import -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		
		<script>
		//resize test
		
		 
  var width = 1000,
  height = 900,
  sens = 0.25,
  focused;

  //Setting projection

  var projection = d3.geo.orthographic()
  .scale(400)
  .rotate([0, 0])
  .translate([width / 2, height / 2])
  .clipAngle(90);

  var path = d3.geo.path()
  .projection(projection);

  //SVG container

  var svg = d3.select(".globe-div").append("svg")
  .attr("width", width)
  .attr("height", height);
  

  //Adding water

  svg.append("path")
  .datum({type: "Sphere"})
  .attr("class", "water")
  .attr("d", path)
	
  var countryTooltip = d3.select("globe-div").append("div").attr("class", "countryTooltip"),
  countryList = d3.select("globe-div").append("select").attr("name", "countries");

  queue()
  .defer(d3.json, "${pageContext.request.contextPath}/resources/js/planet/world-110m.json")
  .defer(d3.tsv, "${pageContext.request.contextPath}/resources/js/planet/world-110m-country-names.tsv")
  .await(ready);

  //Main function

  function ready(error, world, countryData) {

    var countryById = {},
    countries = topojson.feature(world, world.objects.countries).features;

    //Adding countries to select

    countryData.forEach(function(d) {
      countryById[d.id] = d.name;
      option = countryList.append("option");
      option.text(d.name);
      option.property("value", d.id);
    });

    //Drawing countries on the globe

    var world = svg.selectAll("path.land")
    .data(countries)
    .enter().append("path")
    .attr("class", "land")
    .attr("d", path)

    //Drag event

    .call(d3.behavior.drag()
      .origin(function() { var r = projection.rotate(); return {x: r[0] / sens, y: -r[1] / sens}; })
      .on("drag", function() {
        var rotate = projection.rotate();
        projection.rotate([d3.event.x * sens, -d3.event.y * sens, rotate[2]]);
        svg.selectAll("path.land").attr("d", path);
        svg.selectAll(".focused").classed("focused", focused = false);
      }))

    //Mouse events

    .on("mouseover", function(d) {
      countryTooltip.text(countryById[d.id])
      .style("left", (d3.event.pageX + 7) + "px")
      .style("top", (d3.event.pageY - 15) + "px")
      .style("display", "block")
      .style("opacity", 1);
    })
    .on("click",function(d){
    	alert(d.id);
    })
    .on("mouseout", function(d) {
      countryTooltip.style("opacity", 0)
      .style("display", "none");
    })
    .on("mousemove", function(d) {
      countryTooltip.style("left", (d3.event.pageX + 7) + "px")
      .style("top", (d3.event.pageY - 15) + "px");
    });
  	      
    //Country focus on option select

    d3.select("select").on("change", function() {
      var rotate = projection.rotate(),
      focusedCountry = country(countries, this),
      p = d3.geo.centroid(focusedCountry);

      svg.selectAll(".focused").classed("focused", focused = false);

    //Globe rotating

    (function transition() {
      d3.transition()
      .duration(1500)
      .tween("rotate", function() {
        var r = d3.interpolate(projection.rotate(), [-p[0], -p[1]]);
        return function(t) {
          projection.rotate(r(t));
          svg.selectAll("path").attr("d", path)
          .classed("focused", function(d, i) { return d.id == focusedCountry.id ? focused = d : false; });
        };
      })
      })();
    });

    function country(cnt, sel) { 
      for(var i = 0, l = cnt.length; i < l; i++) {
        if(cnt[i].id == sel.value) {return cnt[i];}ja
      }
    };

  };
  
  //auto centering
   function autocenter(options) {
				options = options || {};
				var needsCentering = true;
				var globe = null;

				var resize = function() {
					var width = window.innerWidth + (options.extraWidth || 0);
					var height = window.innerHeight
							+ (options.extraHeight || 0);
					globe.canvas.width = width;
					globe.canvas.height = height;
					globe.projection.translate([ width / 2, height / 2 ]);
				};

				return function(planet) {
					globe = planet;
					planet.onInit(function() {
						needsCentering = true;
						d3.select(window).on('resize', function() {
							needsCentering = true;
						});
					});

					planet.onDraw(function() {
						if (needsCentering) {
							resize();
							needsCentering = false;
						}
					});
				};
			};
	//auto scaling
	function autoscale(options) {
				  options = options || {};
				  return function(planet) {
					  planet.onInit(function() {
						  var width = window.innerWidth
									+ (options.extraWidth || 0);
							var height = window.innerHeight
									+ (options.extraHeight || 0);
							planet.projection.scale(Math.min(width, height) / 2);
						});
					};
				}
				;
	
	
		</script>
		
		<!-- header control JS -->
		<script>
			var right_nav = 0	
		
			function right_side(){
				if(right_nav == 0){
					$("#left_block").css("display","");
					$("#right_nav_div").css("width","300");
					$("#left_block").animate({
						right: "+=300"
					},400,function(){
					});
					
					$("#right_nav_div").animate({
					    right: "+=300"
					  }, 400, function() {
					  });
					$(".navbar-fixed-top").animate({
					    opacity: 0.7,
					    left: "-=300",
					    right: "+=300"
					  }, 400, function() {
					  });
					right_nav += 1;
				}else{
					$("#left_block").css("display","none");
					$("#left_block").animate({
						right: "-=300"
					},400,function(){
					});
					
					$("#right_nav_div").animate({
					    right: "-=300"
					  }, 400, function() {
					  });
					$(".navbar-fixed-top").animate({
					    opacity: 1,
					    left: "+=300",
					    right: "-=300"
					  }, 400, function() {
						  $("#right_nav_div").css("width","");
					  });
					right_nav -= 1;
				}
			}
		</script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="js/libs/jquery-2.0.2.min.js"><\/script>');
			}
		</script>

		<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>
	<!-- bootstrap import -->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</html>