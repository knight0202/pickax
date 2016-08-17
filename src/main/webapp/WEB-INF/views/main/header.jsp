<!-- 
	팀명		:	광부들(Miner)
	작성자	:	유상현
	날짜		:	2016.08.09
	페이지명	:	login-header 화면
	상세		:	front 화면 및 login 화면 상단 
	타입		:	tiles : header (호출명)
	수정		:	css 상단 bar 고정 및 디자인 변경
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
	<style>
		
	</style>
	<div class="container">
		<nav class="sh-header navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="header-div">
				<div class="navbar-header">
			        <div class="logo">
			        	<div class="navbar-brand">
			        		<div class="col-lg-3 col-md-3 col-sm-3 ">
			        			<a id="logo-link" href="${pageContext.request.contextPath}" style="color:white;">P.KAX</a>
			        		</div>
			        		<div class="col-lg-9 col-md-9 col-sm-9 hidden-xs">
			        			<a href="${pageContext.request.contextPath}/login" class="right-group">
				        			<i class="fa fa-sign-in"></i> 로그인
				        		</a>
				        		<a class="right-group">
				        			<i class="fa fa-reorder"></i>메뉴
				        		</a>
			        		</div>
			        		<div class="hidden-lg hidden-md hidden-sm col-xs-3 col-xs-offset-6">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse" style="margin:0px; margin-top:-7px; border:1px solid rgba(0,0,0,0); background-color:rgba(0,0,0,0.2);">
					            	<span class="sr-only">Toggle navigation</span>
					            	<span class="icon-bar" style="background-color:white;"></span>
					            	<span class="icon-bar" style="background-color:white;"></span>
					            	<span class="icon-bar" style="background-color:white;"></span>
					        	</button>			        		
			        		</div>
			        	</div>
			        </div>
				</div>
			</div>
		</nav>	
	</div>
