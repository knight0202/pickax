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
		height:200px;
		overflow:auto;
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
		height: 200px;
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
	.show-div{
		background-color:rgba(150,150,150,0.2);
		border-top: 1px solid white;
		height:140px;
	}
	.show-div-head{
		border-bottom:1px solid white;
		padding-top:10px;
		padding-bottom:10px;
	}
	.show-div-head p{
		margin:0;
		font-size:15px;
	}
	.show-div-body p{
		margin:0;
	}
</style>
<script>
	var timeInterval;
	
	function startTime() {
		$("#show-date").text(moment().locale('ko').tz(timeZone).format('LL'));
	    $("#show-time").text(moment().tz(timeZone).format('LTS'));
	}
	function checkTime(i) {
	    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
	    return i;
	}
</script>
<div id="header-content" class="col-lg-12 no-padding">
	<div class="col-lg-12" align="right" style="padding:5px;">
		<a class="btn no-padding"><i class="fa fa-crosshairs pickax-btn-fa"></i></a>
		<a class="btn no-padding"><i class="fa fa-square-o pickax-btn-fa"></i></a>
		<a class="btn no-padding"  href="javascript:fn_close()" rel="tooltip" data-placement="bottom" data-original-title="Tooltip Bottom" ><i class="fa fa-times pickax-btn-fa"></i></a>	
	</div>
	<div class="col-lg-12 no-padding">
		<div class="col-lg-4" style="padding:0; padding-left:5px; padding-right:10px;">
			<div class="col-lg-12 no-padding show-div" style="min-height:140px;">
				<div class="col-lg-12 show-div-body padding-10">
					<div class="col-lg-4 detFlag" style="height:110px; padding:0; padding-top:10px;">
						<img src="" style="width:100%; height:100%;"/>
					</div>
					<div class="col-lg-6" style="padding:0; padding-top:20px;" align="center">
						<p class="show-text" style="font-size:30px;"></p>
						<p class="show-text" style="font-size:25px;"></p>
					</div>
					<div class="col-lg-2" style="padding:0; padding-top:10px;">
						<p style="text-align:center; font-size:25px;" class="show-text"></p>
						<p style="text-align:center; font-size:10px;">2 digit ISO</p>
						<p style="text-align:center; font-size:25px;" class="show-text"></p>
						<p style="text-align:center; font-size:10px;">3 digit ISO</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-5" style="padding:0; padding-left:10px; padding-right:10px;">
			<div class="col-lg-12 no-padding show-div">
				<div class="col-lg-12 show-div-body" style="min-height:140px;">
					<div class="col-lg-2" align="center" style="padding:0; padding-top:20px; font-weight:bold;">
						<p id="show-num" style="font-size:50px;"></p>
						<p><i class="fa fa-phone"></i>&nbsp;국제 전화 코드</p>
					</div>
					<div class="col-lg-5 padding-5">
						<div class="col-lg-12 padding-10">
							<p style="text-align:center;"><i class="fa fa-globe"></i>&nbsp;대륙</p>
						</div>
						<p style="text-align:center; font-size:18px;" id="show-cont"></p>
						<div class="col-lg-12 padding-5">
							<p style="text-align:center;"><i class="fa fa-money"></i>&nbsp;통화</p>
						</div>
						<p style="text-align:center; font-size:18px;" id="show-currency"></p>
					</div>
					<div class="col-lg-5 padding-5">
						<div class="col-lg-12 padding-10">
							<p style="text-align:center;"><i class="fa fa-clock-o"></i>&nbsp;현지시간</p>
						</div>
						<p style="text-align:center; font-size:18px; color:rgba(250,250,250,0.7);" id="show-date"></p>
						<p style="text-align:center; font-size:25px;" id="show-time"></p>
						<p style="text-align:center; font-size:18px; color:rgba(250,250,250,0.7);" id="show-standard"></p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3" style="padding:0; padding-left:10px; padding-right:5px;">
			<div class="col-lg-12 no-padding show-div">
				<div class="col-lg-6">
					<div class="col-lg-12 padding-10">
						<p style="text-align:center;"><i class="fa fa-cloud"></i>&nbsp;날씨</p>
					</div>
					<p style="text-align:center; font-size:18px;" id="show-cont"></p>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="footer-content" class="col-lg-12">
	
</div>
