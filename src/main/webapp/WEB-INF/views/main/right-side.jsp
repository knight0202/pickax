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
		color: rgba(100,100,100,0.8);
		border-bottom: 1px solid rgba(100,100,100,0.9);
	}
</style>
<div id="right_nav_wrapper" class="col-lg-12 no-padding">
	<div id="right_nav_header" onclick="right_side()">
		<p>내 정보 &nbsp;<span class="glyphicon glyphicon-chevron-right"></span></p>
	</div>
	<div id="right_nav_body" class="col-lg-12 no-padding">
		<ul class="no-padding">
			<li>
				<div class="col-lg-12 nav-li">
					<div class="col-lg-12" align="center" style="display:block; padding-top:50px;">
						<img src="${pageContext.request.contextPath}/resources/img/profile/default.jpg" class="img-circle" style="width:120px; border: 5px solid rgba(100,100,100,0.8);"/>
						<br>
						<div class="col-lg-12 padding-10">
							<h3><c:out value="${name}"/> 님</h3>
						</div>
						<br>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>