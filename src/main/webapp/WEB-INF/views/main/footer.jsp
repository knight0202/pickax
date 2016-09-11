<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
	#footer-content{
		background-color:rgba(200,200,200,0.3);
		border-top: 1px solid white;
		position: fixed;
		bottom: 0;
		display: none;
		height:25%;
		overflow:scroll;
	}
	#footer-content h1,h2,h3,h4,h5,h6,p,a{
		text-shadow: 0 1px 0 rgba(255,255,255,.25);
		color:white;
	}
	#header-content{
		background-color:rgba(200,200,200,0.3);
		border-bottom: 1px solid white;
		position: fixed;
		top: 0;
		display: none;
		height: 25%;
		overflow:auto;
	}
	#header-content h1,h2,h3,h4,h5,h6,p{
		text-shadow: 0 1px 0 rgba(255,255,255,.25);
		color:white;
	}
	#national-flag{
		width:100%;
	}
	.pickax-btn-fa{
		font-size:20px; 
		border:1px solid white; 
		padding:3px; 
		padding-right:5px; 
		padding-left:5px;
	}
	.btn:hover{
		background: rgba(50,50,50,0.5);
		color: rgb(206,206,206);
		border-color: rgb(206,206,206);
		text-decoration: none;
		cursor:pointer;
	}
	#detFlag{
		height:100%;
	}
</style>
<div id="header-content" class="col-lg-12 no-padding">
	<div class="col-lg-12 padding-10" align="right">
		<a class="btn no-padding"><i class="fa fa-crosshairs pickax-btn-fa"></i></a>
		<a class="btn no-padding"><i class="fa fa-square-o pickax-btn-fa"></i></a>
		<a class="btn no-padding"  href="javascript:fn_close()" rel="tooltip" data-placement="bottom" data-original-title="Tooltip Bottom" ><i class="fa fa-times pickax-btn-fa"></i></a>	
	</div>
	<div class="col-lg-12">
		<div class="col-lg-2 padding-5 detFlag">
			<img src="" style="display:none;"/>
		</div>
		<div class="col-lg-5">
		
		</div>
		<div class="col-lg-5">
		
		</div>
	</div>
</div>
<div id="footer-content" class="col-lg-12">
	
</div>
