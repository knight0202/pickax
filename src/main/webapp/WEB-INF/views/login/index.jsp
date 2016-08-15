<!-- 
	팀명		:	광부들(Miner)
	작성자	:	유상현
	날짜		:	2016.08.08
	페이지명	:	front 화면
	상세		:	front 화면으로 사용자가 접속 후 처음으로 들어오는 화면 
	타입		:	tiles : body (호출명)
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
		<!-- Section: #INTRO -->
		<section class="intro home-section text-center" style="padding-top:0px;">
			<div class="col-lg-12 no-padding front-back"
			style="background-image:url('${pageContext.request.contextPath}/resources/front/img/background/front_back_2.jpg');">
				<div class="col-lg-8 col-lg-offset-2 col-md-1 col-md-10 col-sm-12 front-div">
					
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 front-slider-box">
					<i class="fa fa-circle-o front-slider"></i>
					<i class="fa fa-circle-o front-slider"></i>
					<i class="fa fa-circle-o front-slider"></i>
				</div>
			</div>
		</section>
		<!-- /Section: INTRO -->

		<!-- Section: #TEAM -->
		<section id="team" class="home-section text-center bg-gray">
			<div class="heading-about marginbot-50">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">

							<div class="section-heading">
								<h2>SmartAdmin Team</h2>
								<p>
									Lorem ipsum dolor sit amet, no nisl mentitum recusabo per, vim at blandit qualisque dissentiunt. Diam efficiantur conclusionemque ut has
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="container">

				<div class="row">
					<div class="col-xs-12 col-sm-3 col-md-3">

						<div class="team boxed-grey">
							<div class="inner">
								<h5>John Doe</h5>
								<p class="subtitle">
									CEO
								</p>
								<div class="avatar"><img src="${pageContext.request.contextPath}/resources/front/img/team/1.jpg" alt="" class="img-responsive" />
								</div>
							</div>
						</div>

					</div>
					<div class="col-xs-12 col-sm-3 col-md-3">

						<div class="team boxed-grey">
							<div class="inner">
								<h5>Barley Kazurkth</h5>
								<p class="subtitle">
									Marketing Director
								</p>
								<div class="avatar"><img src="${pageContext.request.contextPath}/resources/front/img/team/2.jpg" alt="" class="img-responsive" />
								</div>
							</div>

						</div>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3">

						<div class="team boxed-grey">
							<div class="inner">
								<h5>Sadi Orlaf</h5>
								<p class="subtitle">
									Marketing Executive
								</p>
								<div class="avatar"><img src="${pageContext.request.contextPath}/resources/front/img/team/3.jpg" alt="" class="img-responsive" />
								</div>
							</div>
						</div>

					</div>
					<div class="col-xs-12 col-sm-3 col-md-3">

						<div class="team boxed-grey">
							<div class="inner">
								<h5>Tony Shark</h5>
								<p class="subtitle">
									Programmer
								</p>
								<div class="avatar"><img src="${pageContext.request.contextPath}/resources/front/img/team/4.jpg" alt="" class="img-responsive" />
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- /Section: TEAM -->

		<!-- Section: #FEATURES -->
		<section id="features" class="home-section text-center">

			<div class="heading-about marginbot-50">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">

							<div class="section-heading">
								<h2>The Power of SmartAdmin</h2>
								<p>
									Lorem ipsum dolor sit amet, no nisl mentitum recusabo per, vim at blandit qualisque dissentiunt. Diam efficiantur conclusionemque ut has
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-3 col-md-3">

						<div class="service-box">
							<div class="service-icon">
								<i class="fa fa-code fa-3x"></i>
							</div>
							<div class="service-desc">
								<h5>Localization</h5>
								<p>
									Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.
								</p>
							</div>
						</div>

					</div>
					<div class="col-sm-3 col-md-3">

						<div class="service-box">
							<div class="service-icon">
								<i class="fa fa-suitcase fa-3x"></i>
							</div>
							<div class="service-desc">
								<h5>Compact</h5>
								<p>
									Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.
								</p>
							</div>
						</div>

					</div>
					<div class="col-sm-3 col-md-3">

						<div class="service-box">
							<div class="service-icon">
								<i class="fa fa-cog fa-3x"></i>
							</div>
							<div class="service-desc">
								<h5>State of the Art</h5>
								<p>
									Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.
								</p>
							</div>
						</div>

					</div>
					<div class="col-sm-3 col-md-3">

						<div class="service-box">
							<div class="service-icon">
								<i class="fa fa-rocket fa-3x"></i>
							</div>
							<div class="service-desc">
								<h5>Cloud System</h5>
								<p>
									Vestibulum tincidunt enim in pharetra malesuada. Duis semper magna metus electram accommodare.
								</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- /Section: FEATURES -->

		<!-- Section: #SCREENSHOT -->
		<section id="screenshots" class="home-section text-center bg-gray">
			<div class="heading-works marginbot-50">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">

							<div class="section-heading">
								<h2>Screenshots</h2>
								<p>
									Lorem ipsum dolor sit amet, no nisl mentitum recusabo per, vim at blandit qualisque dissentiunt. Diam efficiantur conclusionemque ut has
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="container">

				<div class="row">
					<div class="col-sm-12 col-md-12 col-lg-12" >

						<div class="row gallery-item">
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/1.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/1.jpg" class="img-responsive" alt="img"> </a>
							</div>
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/2.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/2.jpg" class="img-responsive" alt="img"> </a>
							</div>
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/3.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/3.jpg" class="img-responsive" alt="img"> </a>
							</div>
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/4.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/4.jpg" class="img-responsive" alt="img"> </a>
							</div>
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/5.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/5.jpg" class="img-responsive" alt="img"> </a>
							</div>
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/6.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/6.jpg" class="img-responsive" alt="img"> </a>
							</div>
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/7.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/7.jpg" class="img-responsive" alt="img"> </a>
							</div>
							<div class="col-md-3">
								<a href="${pageContext.request.contextPath}/resources/front/img/works/8.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="${pageContext.request.contextPath}/resources/front/img/works/1@2x.jpg"> <img src="${pageContext.request.contextPath}/resources/front/img/works/8.jpg" class="img-responsive" alt="img"> </a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- /Section: SCREENSHOT -->

		<!-- Section: #UPDATES -->
		<section id="updates" class="home-section text-center">
			<div class="heading-contact marginbot-50">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">

							<div class="section-heading">
								<h2>Updates</h2>
								<p>
									Lorem ipsum dolor sit amet, no nisl mentitum recusabo per, vim at blandit qualisque dissentiunt. Diam efficiantur conclusionemque ut has
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="timeline-centered">
			    
				<article class="timeline-entry">
					
					<div class="timeline-entry-inner">
						<time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>
						
						<div class="timeline-icon bg-success">
							<i class="entypo-feather"></i>
						</div>
						
						<div class="timeline-label">
							<h2><a href="#">SmartAdmin:</a> <span>Patch was released today</span></h2>
							<p>Tolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may.</p>
						</div>
					</div>
					
				</article>
				
				
				<article class="timeline-entry left-aligned">
					
					<div class="timeline-entry-inner">
						<time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>4 weeks ago</span></time>
						
						<div class="timeline-icon bg-secondary">
							<i class="entypo-suitcase"></i>
						</div>
						
						<div class="timeline-label">
							<h2><a href="#">SmartAdmin goes public!</a></h2>
							<p>Yahoo buys a share in <strong>SmartAdmin</strong></p>
						</div>
					</div>
					
				</article>
				
				
				<article class="timeline-entry">
					
					<div class="timeline-entry-inner">
						<time class="timeline-time" datetime="2014-01-09T13:22"><span>03:45 AM</span> <span>3 months ago</span></time>
						
						<div class="timeline-icon bg-info">
							<i class="entypo-location"></i>
						</div>
						
						<div class="timeline-label">
							<h2><a href="#">SmartAdmin Convention</a> <span>checked in at</span> <a href="#">Laborator</a></h2>
							
							<blockquote>Place was booked till 3am!</blockquote>
							
							<img src="${pageContext.request.contextPath}/resources/front/img/map.png" alt="map" class="img-responsive">


						</div>
					</div>
					
				</article>
				
				
				<article class="timeline-entry left-aligned">
					
					<div class="timeline-entry-inner">
						<time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>8 months ago</span></time>
						
						<div class="timeline-icon bg-warning">
							<i class="entypo-camera"></i>
						</div>
						
						<div class="timeline-label">
							<h2><a href="#">We have lift off!</a></h2>
							
							<blockquote>SmartAdmin Launched with grace and beauty</blockquote>

						</div>
					</div>
					
				</article>
				
				
				<article class="timeline-entry begin">
				
					<div class="timeline-entry-inner">
						
						<div class="timeline-icon" style="-webkit-transform: rotate(-90deg); -moz-transform: rotate(-90deg);">
							<i class="entypo-flight"></i>
						</div>
						
					</div>
					
				</article>
				
			</div>
				</div>
			</div>
		</section>
		<!-- /Section: UPDATES -->

		<!-- Section: #QUOTES -->
		<section id="quotes" class="home-section text-center bg-gray">
			
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
			                <div class="quote"><i class="fa fa-quote-left fa-4x"></i></div>
							<div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
							  <!-- Carousel indicators -->
			                  <ol class="carousel-indicators">
							    <li data-target="#fade-quote-carousel" data-slide-to="0" class="active"></li>
							    <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
							    <li data-target="#fade-quote-carousel" data-slide-to="2"></li>
							  </ol>
							  <!-- Carousel items -->
							  <div class="carousel-inner">
							    <div class="active item">
							    	<blockquote>
							    		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem, veritatis nulla eum laudantium totam tempore optio doloremque laboriosam quas.</p>
							    	</blockquote>
							    	<div class="profile-circle" style="background-color: rgba(0,0,0,.2);"></div>
							    </div>
							    <div class="item">
							    	<blockquote>
							    		<p>Lorem ipsum dolor sit amet, eaque molestias odio aut eius animi. Impedit temporibus nisi accusamus.</p>
							    	</blockquote>
							    	<div class="profile-circle" style="background-color: rgba(77,5,51,.2);"></div>
							    </div>
							    <div class="item">
							    	<blockquote>
							    		<p>Consectetur adipisicing elit. Quidem, veritatis  aut eius animi. Impedit temporibus nisi accusamus.</p>
							    	</blockquote>
							    	<div class="profile-circle" style="background-color: rgba(145,169,216,.2);"></div>
							    </div>
							  </div>
							</div>
						</div>							
					</div>
				</div>
			
		</section>
		<!-- /Section: QUOTES -->

		<!-- Section: #CONTACT -->
		<section id="contact" class="home-section text-center">
			<div class="heading-contact marginbot-50">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">

							<div class="section-heading">
								<h2>Get in touch</h2>
								<p>
									Lorem ipsum dolor sit amet, no nisl mentitum recusabo per, vim at blandit qualisque dissentiunt. Diam efficiantur conclusionemque ut has
								</p>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="container">

				<div class="row">
					<div class="col-lg-8 col-md-offset-2">
						<div class="boxed-grey">
							<form id="contact-form">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="name"> Name</label>
											<input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
										</div>
										<div class="form-group">
											<label for="email"> Email Address</label>
											<div class="input-group">
												<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span> </span>
												<input type="email" class="form-control" id="email" placeholder="Enter email" required="required" />
											</div>
										</div>
										<div class="form-group">
											<label for="subject"> Subject</label>
											<select id="subject" name="subject" class="form-control" required="required">
												<option value="">Choose One:</option>
												<option value="service">General Customer Service</option>
												<option value="suggestions">Suggestions</option>
												<option value="product">Product Support</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="name"> Message</label>
											<textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Message"></textarea>
										</div>
									</div>
									<div class="col-md-12">
										<button type="submit" class="btn btn-skin pull-right" id="btnContactUs">
											Send Message
										</button>
									</div>
								</div>
							</form>
						</div>

						<div class="widget-contact row">
							<div class="col-lg-6">
								<address>
									<strong>SMARTADMIN Ltd.</strong>
									<br>
									Big Villa 334 Awesome, Beautiful Suite 1200
									<br>
									San Francisco, CA 94107
									<br>
									<abbr title="Phone">P:</abbr> (123) 456-7890
								</address>
							</div>

							<div class="col-lg-6">
								<address>
									<strong>Email</strong>
									<br>
									<a href="mailto:#">email.name@example.com</a>
									<br />
									<a href="mailto:#">name.name@example.com</a>
								</address>

							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- /Section: CONTACT -->

		<!-- #BOTTOM CONTENT -->
		<div class="bottom-content">
			<div class="container custom-container text-center">
				<h2>We Always Try to Create a Difference</h2>
				<p>
					Thank you for buying this template :)
				</p>
				<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
				<a href="https://bootstraphunter.com" class="btn btn-default btn-lg purchase">Purchase SmartAdmin</a>
			</div>
		</div>
		<!-- /#BOTTOM CONTENT -->

		<!-- #FOOTER -->
		<footer>

			<div class="footer-content clearfix">
				<div class="container custom-container">
					<div class="row">
						<div class="col-md-3 col-sm-6 col-xs-12">
							<a href="#" class="footer-logo">About Us</a>
							<p>
								Fusce gravida tortor felis, ac dictum risus sagittis id.
							</p>
							<p>
								Donec volutpat, mi vel egestas eleifend, dolor arcu iaculis nunc. Fusce gravida tortor felis, ac dictum risus sagittis id. Morbi posuere justo eleifend libero ultricies ultrices.
							</p>
							<a href="#" class="learn-more">learn more</a>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<h3>Recent Tweets</h3>
							<div class="recent-post clearfix">
								<div class="footer-thumb-img">
									<span class="footer-overlay-img"></span>
								</div>
								<p>
									Fusce gravida tortor felis, ac dictum risus sagittis
									<span class="date">November 15, 2014</span>
								</p>

							</div>
							<div class="recent-post clearfix">
								<div class="footer-thumb-img">
									<span class="footer-overlay-img"></span>
								</div>
								<p>
									Fusce gravida tortor felis, ac dictum risus sagittis
									<span class="date">November 11, 2014</span>
								</p>

							</div>
							<div class="recent-post clearfix">
								<div class="footer-thumb-img">
									<span class="footer-overlay-img"></span>
								</div>
								<p>
									Fusce gravida tortor felis, ac dictum risus sagittis
									<span class="date">November 10, 2014</span>
								</p>

							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<h3>Top Tags</h3>
							<div class="footer-tags">
								<ul>
									<li>
										<a href="#">Web Design</a>
									</li>
									<li>
										<a href="#">Services</a>
									</li>
									<li>
										<a href="#">Landing</a>
									</li>
									<li>
										<a href="#">SmartAdmin</a>
									</li>
									<li>
										<a href="#">.Net</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<h3>Flicker photos (recent)</h3>
							<div class="flicker-widget">
								<a href="#"></a>
								<a href="#"></a>
								<a href="#"></a>
								<a href="#"></a>
								<a href="#"></a>
								<a href="#"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bottom-footer">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 text-center">
							<p>
								Copyright © 2016 - 광부들
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- / #FOOTER -->
