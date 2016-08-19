<!-- 
	팀명		:	광부들(Miner)
	작성자	:	유상현
	날짜		:	2016.08.18
	페이지명	:	header 화면
	상세		:	메인 화면 
	타입		:	tiles : header (호출명)
	수정		:	css 상단 bar 고정 및 디자인 변경
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
	<style>
		.container-fluid{
			background-color:rgba(200,200,200,0.3);
			border-bottom: white;
		}
		.navbar-fixed-top{
			background:none;
		}
	</style>
	<div class="container">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container-fluid">
	          <div class="navbar-header">
	            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	              <span class="sr-only">Toggle navigation</span>
	              <span class="icon-bar"></span>
	              <span class="icon-bar"></span>
	              <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="#" style="color:white;">P.KAX</a>
	          </div>
	          <div id="navbar" class="navbar-collapse collapse">
	            <ul class="nav navbar-nav">
	              <li><a href="#" style="color:white;">About</a></li>
	              <li><a href="#" style="color:white;">Contact</a></li>
	              <li class="dropdown">
	                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color:white;">Dropdown <span class="caret"></span></a>
	                <ul class="dropdown-menu">
	                  <li><a href="#">Action</a></li>
	                  <li><a href="#">Another action</a></li>
	                  <li><a href="#">Something else here</a></li>
	                  <li role="separator" class="divider"></li>
	                  <li class="dropdown-header">Nav header</li>
	                  <li><a href="#">Separated link</a></li>
	                  <li><a href="#">One more separated link</a></li>
	                </ul>
	              </li>
	            </ul>
	            <ul class="nav navbar-nav navbar-right">
	              <li><a href="../navbar-fixed-top/" style="font-size:20px; color:white;"><i class="fa fa-cog"></i> </a></li>
	            </ul>
	          </div><!--/.nav-collapse -->
	        </div>
		</nav>	
	</div>
