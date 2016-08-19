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
		.sh-header{
			height:150px;
			background:none;
			border:none;
			box-shadow:none;
			background: -webkit-linear-gradient(rgba(5,5,10,0.5), rgba(256,256,256,0)); /* For Safari 5.1 to 6.0 */
    		background: -o-linear-gradient(rgba(5,5,10,0.5), rgba(256,256,256,0)); /* For Opera 11.1 to 12.0 */
    		background: -moz-linear-gradient(rgba(5,5,10,0.5), rgba(256,256,256,0)); /* For Firefox 3.6 to 15 */
		    background: linear-gradient(rgba(5,5,10,0.5), rgba(256,256,256,0)); /* Standard syntax (must be last) */
		}
		.header-div{
			max-width:1200px;
			margin:auto;
		}
		section{
			padding-top:0px;
			padding-bottom: 0px;
		}
		.navbar-brand{
			position:absolute;
			top:0;
			bottom:0;
			margin-top:auto;
			margin-bottom:auto;
			width:100%;
			max-width:1200px;
		}
		.right-group{
			float:right;
			color:white;
			margin-left:15px;
			padding:5px;
			background-color: rgba(0,0,0,0.2);
    		border-radius: 5px;
    		cursor:pointer;
		}
		.right-group:hover{
			color:white;
			background-color: rgba(0,0,0,0.5);
		}
		#logo-link{
			font-weight:900;
			font-size:40px;
		}
	</style>
	<div class="container">
		<nav class="sh-header navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="header-div">
				<div class="navbar-header">
			        <div class="logo">
			        	<div class="navbar-brand">
			        		<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
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
