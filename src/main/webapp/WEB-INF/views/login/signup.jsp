
<!-- 
	팀명		:	광부들(Miner)
	작성자	:	유상현
	날짜		:	2016.08.08
	페이지명	:	로그인 화면
	상세		:	로그인 작성 화면으로 front화면에서 로그인 클릭시 전환되는 화면으로 세션이 만료될 때도 현재 페이지로 연결되도록 함 login-main에 포함
	타입		:	tiles : body (호출명)
 -->
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <style>
		.sh-header{
			border-radius:0px;
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
			margin-top:-7px;
			float:right;
			color:white;
			margin-left:15px;
			padding:5px;
			background-color: rgba(0,0,0,0.2);
    		border-radius: 5px;
    		cursor:pointer;
		}
		.right-group:hover{
			margin-top:-9px;
			color:white;
			background-color: rgba(0,0,0,0.5);
		}
		#logo-link{
			font-weight:900;
			font-size:40px;
		}
		.navbar-toggle:hover{
			background-color: rgba(0,0,0,0.4);
			margin-top: -9px;
		}
		body{
			background-image: url('${pageContext.request.contextPath}/resources/front/img/background/login_wallpaper.jpg');
			min-height: 528.8px;
			background-size: cover;
		    background-position: center top;
		    position: relative;
		    z-index: 99;
		    padding-bottom: 2rem;
		    overflow:auto;
		    display:block;
		}
		.panel-heading{
			border-top-left-radius:15px;
			border-top-right-radius:15px;
		}
		.panel{
			border-radius: 15px;
			border:none;
			box-shadow:  0px 0px 13px #333, inset 0px 0px 10px #333;
			background-color: rgba(3,3,3,0.7);
		}
		.panel-body{
			color: white;
		}
	</style>
	<div class="container" style="width:100%; padding:0;">
		<nav class="sh-header navbar navbar-default" role="navigation">
			<div class="header-div">
				<div class="navbar-header">
			        <div class="logo">
			        	<div class="navbar-brand">
			        		<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
			        			<a id="logo-link" href="${pageContext.request.contextPath}" style="color:white;">P.KAX</a>
			        		</div>
			        		<div class="col-lg-9 col-md-9 col-sm-9 hidden-xs">
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
    
	<div id="signupbox" style="margin-top:10px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading" style="background-image: none; background: none; border-bottom:1px solid white; color:white;">
                            <div class="panel-title">회원가입</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onClick="location.href='${pageContext.request.contextPath}/login'">로그인</a></div>
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/member_add">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">이름</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="userNm" placeholder="이름">
                                    </div>	
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">이메일(사용자ID)</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="userID" placeholder="이메일(아이디로 사용)">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">비밀번호</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="userPW" placeholder="비밀번호">
                                    </div>
                                </div>
                                <c:if test="${info_message != null}">
									<div class="col-lg-12">
										<p><i class="fa fa-ban"></i>&nbsp;<c:out value="${info_message}"/></p>
									</div>
								</c:if>
                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="button" onclick="$('form').submit();" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp;가입하기</button> 
                                    </div>
                                </div>
                                
                                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">
                                    
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-fbsignup" type="button" class="btn btn-primary"><i class="icon-facebook"></i>  페이스북 계정으로 가입</button>
                                    </div>                                           
                                </div>
                            </form>
                         </div>
                    </div>
         </div> 
