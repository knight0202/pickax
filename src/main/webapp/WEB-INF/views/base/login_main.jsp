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
		
<!-- CSS import 영역 -->

<!-- BOOTSTRAP CSS import -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/front/css/extralayers.css" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/front/css/settings.css" media="screen">

<!-- RELATED CSS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/resources/front/css/nivo-lightbox.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/resources/front/css/nivo-lightbox-theme/default/default.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/resources/front/css/animate.css" rel="stylesheet">

<!-- SMARTADMIN LANDING CSS -->
<link type="text/css" href="${pageContext.request.contextPath}/resources/front/css/main.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/resources/front/color/default.css" rel="stylesheet">

<!-- FONT 영역 -->
<!-- GOOGLE FONT -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- custom css -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/front/css/front.css">


<title><tiles:getAsString name="title"/></title>
</head>
<body data-spy="scroll">
	<c:if test="${pageInfo == 'index'}">
		<tiles:insertAttribute name="header"/>
	</c:if>
	<tiles:insertAttribute name="body"/>	
</body>	
	
	
	
	<!-- JS import 영역 -->
	
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

		<!-- #PAGE SCRIPT -->
		<script type="text/javascript">
			jQuery(document).ready(function() {

				jQuery('.tp-banner').show().revolution({
					dottedOverlay : "none",
					delay : 8000,
					startwidth : 1170,
					startheight : 700,
					hideThumbs : 200,

					thumbWidth : 100,
					thumbHeight : 50,
					thumbAmount : 5,

					navigationType : "bullet",
					navigationArrows : "solo",
					navigationStyle : "preview4",

					touchenabled : "on",
					onHoverStop : "off",

					swipe_velocity : 0.7,
					swipe_min_touches : 1,
					swipe_max_touches : 1,
					drag_block_vertical : false,

					parallax : "mouse",
					parallaxBgFreeze : "on",
					parallaxLevels : [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],

					keyboardNavigation : "off",

					navigationHAlign : "center",
					navigationVAlign : "bottom",
					navigationHOffset : 0,
					navigationVOffset : 20,

					soloArrowLeftHalign : "left",
					soloArrowLeftValign : "center",
					soloArrowLeftHOffset : 20,
					soloArrowLeftVOffset : 0,

					soloArrowRightHalign : "right",
					soloArrowRightValign : "center",
					soloArrowRightHOffset : 20,
					soloArrowRightVOffset : 0,

					shadow : 0,
					fullWidth : "off",
					fullScreen : "on",

					spinner : "spinner4",

					stopLoop : "off",
					stopAfterLoops : -1,
					stopAtSlide : -1,

					shuffle : "off",

					autoHeight : "off",
					forceFullWidth : "off",

					hideThumbsOnMobile : "off",
					hideNavDelayOnMobile : 1500,
					hideBulletsOnMobile : "off",
					hideArrowsOnMobile : "off",
					hideThumbsUnderResolution : 0,

					hideSliderAtLimit : 0,
					hideCaptionAtLimit : 0,
					hideAllCaptionAtLilmit : 0,
					startWithSlide : 0,
					fullScreenOffsetContainer : ""
				});

			});
			//ready
			$(function($){
				$.scrollUp();				
			});
		</script>
		
	<!-- JS PLUGINS -->
	<script src="${pageContext.request.contextPath}/resources/front/js/plugins/classie.js"></script>
	<script src="${pageContext.request.contextPath}/resources/front/js/plugins/gnmenu.js"></script>
	<script src="${pageContext.request.contextPath}/resources/front/js/plugins/jquery.scrollUp.js"></script>
	<script src="${pageContext.request.contextPath}/resources/front/js/plugins/nivo-lightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/front/js/plugins/smoothscroll.js"></script>
	<script src="${pageContext.request.contextPath}/resources/front/js/plugins/jquery.themepunch.plugins.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/front/js/plugins/jquery.themepunch.revolution.min.js"></script>
	
	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/front/js/custom.js"></script>
	
	<!-- BOOTSTRAP JS import -->
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</html>