<!-- 
	팀명		:	광부들(Miner)
	작성자	:	유상현
	날짜		:	2016.08.08
	페이지명	:	로그인,front 화면 백그라운드
	상세		:	로그인,front화면의 백그라운드로 페이지에서 포함하는 CDN 및 import
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

<!-- CSS import 영역 -->

<!-- BOOTSTRAP CSS import -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

<!-- RELATED CSS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">

<!-- FONT 영역 -->
<!-- GOOGLE FONT -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<title><tiles:getAsString name="title"/></title>
</head>
<body>
	<div class="container">
		<tiles:insertAttribute name="header"/>
		<tiles:insertAttribute name="left-side"/>
		<tiles:insertAttribute name="body"/>	
		<tiles:insertAttribute name="right-side"/>
		<tiles:insertAttribute name="footer"/>
	</div>
</body>	
	<!-- JS import 영역 -->
	
	<!-- planet 표현하기 위한 JS파일 import -->
	<script src="${pageContext.request.contextPath}/resources/js/planet/planetaryjs.js"></script>
	<c:if test="${pageInfo == 'index'}">
		<script>
		(function() {
			  var globe = planetaryjs.planet();
			  // Load our custom `autorotate` plugin; see below.
			  globe.loadPlugin(autocenter({extraHeight: -50}));
			  globe.loadPlugin(autoscale({extraHeight: -50}));
			  globe.loadPlugin(autorotate(2));
			  // The `earth` plugin draws the oceans and the land; it's actually
			  // a combination of several separate built-in plugins.
			  //
			  // Note that we're loading a special TopoJSON file
			  // (world-110m-withlakes.json) so we can render lakes.
			  globe.loadPlugin(planetaryjs.plugins.earth({
			    topojson: { file:   '${pageContext.request.contextPath}/resources/js/planet/world-110m.json' },
			    oceans:   { fill:   '#eee' },
			    land:     { fill:   '#ccc' },
			    borders:  { stroke: '#bbb' }
			  }));
			  globe.loadPlugin(lakes({
			    fill: '#eee'
			  }));
			  globe.loadPlugin(planetaryjs.plugins.pings());
			  globe.loadPlugin(planetaryjs.plugins.zoom({
				  scaleExtent: [50, 5000]
			  }));
			  globe.loadPlugin(planetaryjs.plugins.drag({
			    // Dragging the globe should pause the
			    // automatic rotation until we release the mouse.
			    onDragStart: function() {
			      this.plugins.autorotate.pause();
			    },
			    onDragEnd: function() {
			      this.plugins.autorotate.resume();
			    }
			  }));
			  globe.projection.scale(175).translate([175, 175]).rotate([0, -10, 0]);
	
			  var colors = ['red', 'yellow', 'white', 'orange', 'green', 'cyan', 'pink'];
			  setInterval(function() {
			    var lat = Math.random() * 170 - 85;
			    var lng = Math.random() * 360 - 180;
			    var color = colors[Math.floor(Math.random() * colors.length)];
			    globe.plugins.pings.add(lng, lat, { color: color, ttl: 2000, angle: Math.random() * 10 });
			  }, 150);
	
			  var canvas = document.getElementById('rotatingGlobe');
			  // Draw that globe!
			  globe.draw(canvas);
			
			  function autocenter(options) {
				    options = options || {};
				    var needsCentering = false;
				    var globe = null;
	
				    var resize = function() {
				      var width  = window.innerWidth + (options.extraWidth || 0);
				      var height = window.innerHeight + (options.extraHeight || 0);
				      globe.canvas.width = width;
				      globe.canvas.height = height;
				      globe.projection.translate([width / 2, height / 2]);
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
				        if (needsCentering) { resize(); needsCentering = false; }
				      });
				    };
				  };
				  
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
	
				function autorotate(degPerSec) {
					// Planetary.js plugins are functions that take a `planet` instance
					// as an argument...
					return function(planet) {
						var lastTick = null;
						var paused = false;
						planet.plugins.autorotate = {
							pause : function() {
								paused = true;
							},
							resume : function() {
								paused = false;
							}
						};
						// ...and configure hooks into certain pieces of its lifecycle.
						planet.onDraw(function() {
							if (paused || !lastTick) {
								lastTick = new Date();
							} else {
								var now = new Date();
								var delta = now - lastTick;
								// This plugin uses the built-in projection (provided by D3)
								// to rotate the globe each time we draw it.
								var rotation = planet.projection.rotate();
								rotation[0] += degPerSec * delta / 1000;
								if (rotation[0] >= 180)
									rotation[0] -= 360;
								planet.projection.rotate(rotation);
								lastTick = now;
							}
						});
					};
				}
				;
	
				// This plugin takes lake data from the special
				// TopoJSON we're loading and draws them on the map.
				function lakes(options) {
					options = options || {};
					var lakes = null;
	
					return function(planet) {
						planet.onInit(function() {
							// We can access the data loaded from the TopoJSON plugin
							// on its namespace on `planet.plugins`. We're loading a custom
							// TopoJSON file with an object called "ne_110m_lakes".
							var world = planet.plugins.topojson.world;
							lakes = topojson.feature(world,
									world.objects.ne_110m_lakes);
						});
	
						planet.onDraw(function() {
							planet.withSavedContext(function(context) {
								context.beginPath();
								planet.path.context(context)(lakes);
								context.fillStyle = options.fill || 'black';
								context.fill();
							});
						});
					};
				}
				;
			})();
		</script>
	</c:if>
	<!-- JQUERY import -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
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