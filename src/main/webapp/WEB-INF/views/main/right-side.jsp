<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
	#right_nav_header{
		width:100%;
		height:51px;
		border-bottom: 1px solid rgba(100,100,100,0.8);
		padding-left:10px;
		padding-top: 13px;
		cursor: pointer;
	}
	#right_nav_header p{
		margin:0;
		font-size: 17px;
	}
	#right_nav_body ul{
		list-style:none;
	}
	#right_nav_body ul li{
		width: 100%;
		height: 45px;
	}
	.nav-li{
		height:100%;
		border-bottom: 1px solid rgba(100,100,100,0.8);
	}
</style>
<div id="right_nav_wrapper" class="col-lg-12 no-padding">
	<div id="right_nav_header" onclick="right_side()">
		<p>설 정 &nbsp;<span class="glyphicon glyphicon-chevron-right"></span></p>
	</div>
	<div id="right_nav_body" class="col-lg-12 no-padding">
		<ul class="no-padding">
			<li>
				<div class="col-lg-12 nav-li">
					
				</div>
			</li>
			<li>
				<div class="col-lg-12 nav-li">
				
				</div>
			</li>
			<li>
				<div class="col-lg-12  nav-li">
				
				</div>
			</li>
			<li>
				<div class="col-lg-12 nav-li">
				
				</div>
			</li>
			<li>
				<div class="col-lg-12 nav-li">
				
				</div>
			</li>
			<li>
				<div class="col-lg-12 nav-li">
				
				</div>
			</li>
		</ul>
	</div>
</div>