<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<link rel="shortcut icon" href="favicon.ico">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="layout" content="publicLayout" />
<title>Home Page | StreamJobs</title>
<script type="text/javascript">
			//For IE 10
			$(document).ready(function(){
			if($("#msg").val() != '' && $("#msg").val() != 'undefined' && $("#msg").val() != null){
			$( "#lg" ).trigger( "click" );
		    }
			if($("#prospectmsg").val() != '' && $("#prospectmsg").val() != 'undefined' && $("#prospectmsg").val() != null){
				$( "#con" ).trigger( "click" );
			    }
			});
			
			if(Function('/*@cc_on return document.documentMode===10@*/')()){
				var headHTML = document.getElementsByTagName('head')[0].innerHTML;
				headHTML    += '<link type="text/css" rel="stylesheet" href="css/ie_style.css">';
				document.getElementsByTagName('head')[0].innerHTML = headHTML;
			}
			
			//For IE 11
			if(navigator.userAgent.match(/Trident.*rv:11\./)) {
				var headHTML = document.getElementsByTagName('head')[0].innerHTML;
				headHTML    += '<link type="text/css" rel="stylesheet" href="css/ie_style.css">';
				document.getElementsByTagName('head')[0].innerHTML = headHTML;
			}
        </script>

</head>

<body class="zee_straight">
		<!-- ist time user experience -->
		<div class="istTimeUser">
			Your Account has been Successfully login.Please you can continue
		</div>
		<!-- ist time user experience -->
	<input type="text" value="${msg}" id="msg" style="display: none">
	<input type="text" value="${prospectmsg}" id="prospectmsg" style="display: none">
	<div id="load"></div>
	<!-- top-slider -->
	<section id="sec-home">
		<!-- slider-default starts -->
		<div class="static_banner">
	<img src="images/logo8.png" alt="StreamJobs" class="streamJobsLogo" style="margin-top: 4%; margin-left: 3%;">
			<!-- header-menu-1 starts -->
			<div class="header-menu-1 menu-bar">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<!-- logo starts -->
<%--							<div class="logo">--%>
<%--								<figure>--%>
<%--									<img src="images/about_image1.png" alt="About Us">--%>
<%--									<img src="images/logo8.png"--%>
<%--										alt="StreamJobs">--%>
<%--								</figure>--%>
<%--							</div>--%>
							<!-- logo ends -->

							<div class="header_nav_holder">
								<!--main-nav starts-->
								<nav class="main-nav">
									<ul id="head-nav" class="top-nav">
										<li class="current"><a href="#sec-home">Home</a></li>
										<li><a href="#sec-about">About</a></li>
										<!--  position of feature works -->

										<li><a href="#sec-services">How It Works</a></li>
										<li><a href="#sec-portfolio">Customers</a></li>
										<li><a href="#sec-team">Team</a></li>
										<!-- <li><a href="#sec-pricing">Pricing</a></li> -->
										<sec:ifLoggedIn>
											<li><a href="/j_spring_security_logout#" id="lg">Logout</a></li>
										</sec:ifLoggedIn>
										<sec:ifNotLoggedIn>
											<li><a href="#sec-login" id="lg">Login</a></li>
										</sec:ifNotLoggedIn>
										<li><a href="#sec-contact" id="con">Contact</a></li>

									</ul>
								</nav>
								<!-- main-nav ends-->
								<!-- header_toggle_menu -->
<%--								<div class="header_toggle_menu">--%>
<%--									<div class="menu_small_btn">--%>
<%--										<div class="open_menu toggle_top_menu_btn">--%>
<%--											<i class="fa fa-bars"></i>--%>
<%--										</div>--%>
<%--										<div class="close_menu toggle_top_menu_btn">--%>
<%--											<i class="fa fa-times"></i>--%>
<%--										</div>--%>
<%--									</div>--%>
<%--								</div>--%>
								<!-- header_toggle_menu -->
							</div>
						</div>
					</div>
				</div>
				<div>
			</div>
			<!-- header-menu-1 ends -->

			<div class="container">
				<div class="row">
					<div class="text_banner_holder">

						<div class="col-xs-2">
							<div class="skew_shape"></div>
						</div>
						<div class="heading_wrap col-xs-10">
							<h2>
								Video driven <span class="highlight">Recruitment</span>
							</h2>
							<h3>StreamJobs is an innovative Recruitment Solution Company</h3>
							<!-- next_section starts -->
							<div class="next_section animated animate_infinite"
								data-animdelay="0.2s" data-animspeed="1.4s" data-animrepeat="1"
								data-animtype="bounce">
								<a href="javascript:void(0);" class="scroll_next_section"> <i
									class="fa fa-angle-down"></i>
								</a>
							</div>
							<!-- next_section ends -->
						</div>
					</div>
					<!-- text_banner_holder ends -->
				</div>


			</div>

		</div>
		<!-- slider-default ends -->
	</section>
	<!-- top-slider ends -->

	<!-- menu-bar starts -->
	<header class="menu-bar sticky-bar">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<!-- logo starts -->
					<div class="logo">
<%--						<figure>--%>
							<img src="images/logo8.png" alt="logo" class="main_logo">
<%--						</figure>--%>
						<div class="small_menu">
							<div class="menu_small_btn">
								<div class="open_menu toggle_main_menu_btn">
									<i class="fa fa-bars"></i>
								</div>
								<div class="close_menu toggle_main_menu_btn">
									<i class="fa fa-times"></i>
								</div>
							</div>
						</div>
					</div>
					<!-- logo ends -->

					<!--main-nav starts-->
					<nav class="main-nav">
						<ul id="top-nav" class="top-nav">
							<li class="current"><a href="#sec-home">Home</a></li>
							<li><a href="#sec-about">About</a></li>
							<!--  removed feature work section-->
							<li><a href="#sec-services">How It Works</a></li>
							<li><a href="#sec-portfolio">Customers</a></li>
							<li><a href="#sec-team">Team</a></li>
							<!--  <li><a href="#sec-pricing">Pricing</a></li>-->
							<sec:ifLoggedIn>
								<li><a href="/j_spring_security_logout#">Logout</a></li>
							</sec:ifLoggedIn>
							<sec:ifNotLoggedIn>
								<li><a href="#sec-login" id="lg">Login</a></li>
							</sec:ifNotLoggedIn>
							<li><a href="#sec-contact">Contact</a></li>

							<!- Removed more -->

						</ul>
						<span class="back_top"> <a href="javascript:void(0);"
							class="back_to_top"><i class="fa fa-angle-up"></i></a>
						</span>
					</nav>
					<!-- main-nav ends-->
				</div>
			</div>
		</div>
	</header>
	<!-- menu-bar ends -->

	<!-- sec-about starts -->
	<section id="sec-about" class="section_holder">
		<div class="container section_container">
			<div class="row">
				<article>
					<div class="hgroup">
						<div class="col-xs-3 heading_cover">
							<h2>About Us</h2>
						</div>
						<div class="col-xs-1 skew_holder">
							<div class="skew_shape"></div>
						</div>
						<div class="col-xs-8 heading_cover">
							<h3>StreamJobs is the Recruitment Solution Provider based in
								the London, UK. Our firm sepecializes in enabling Organisations
								in hiring the candidates directly through the help of social
								media.</h3>
						</div>
					</div>
				</article>
			</div>

			<div class="row">
				<!-- about_image starts -->

				<div class="col-sm-4 about_image">
					<img src="images/about_image1.png" alt="About Us">
				</div>
				<!-- about_image ends -->
				<div class="col-sm-8 about_content_holder">
					<h3>
						StreamJobs offers innovative video driven recruitment solution
						enabling organisations to market their vacancies directly to the
						candidates with help of social media. <br> <br>
						StreamJobs enables organisations to: 
					</h3>
				</div>
				<div class="folio-one-half folio-column-last">

					<div data-id="open" class="folio-toggle">
						<span class="folio-toggle-title">Market their brand</span>
						<div class="folio-toggle-inner">Market their
							organisation directly to the candidates.</div>
					</div>
					<div data-id="closed" class="folio-toggle">
						<span class="folio-toggle-title">Fasten the recruitment process</span>
						<div class="folio-toggle-inner">Allow organisations to reach directly to candidates. Enable organisation to create a better job
						 description. </div>
					</div>
					<div data-id="closed" class="folio-toggle">
						<span class="folio-toggle-title">Recruit the best talent for the job</span>
						<div class="folio-toggle-inner">Target the best talent in social media by markeing their job vacancy to them.</div>
					</div>

				</div>
				<div class="clear"></div>

			</div>

		</div>
	</section>
	<!-- sec-about ends -->
	<!--  jas sec feature work placed here not needed -->

	<!-- sec-services starts -->
	<section id="sec-services" class="section_holder">
		<div class="container section_container">
			<div class="row">
				<article>
					<div class="hgroup">
						<div class="col-xs-3 heading_cover">
							<h2>How it works</h2>
						</div>
						<div class="col-xs-1 skew_holder">
							<div class="skew_shape"></div>
						</div>
						<div class="col-xs-8 heading_cover">
							<h3>For Organisations recruiting candidates, we can help you
								market your brand and the vacancy together. So why wait? Follow
								simple steps below and create a free profile to market your
								vacancies.</h3>
						</div>
					</div>
				</article>
			</div>

			<div class="row">
				<!-- service_single starts -->
				<div class="col-sm-6 service_single">
					<div class="icon_holder">
						<div class="icon_shape">
							<i class="fa fa-flask"></i>
						</div>
					</div>
					<div class="service_right">
						<h4>Step 1 - Register your profile</h4>
						<p>
							<li>Create a new account.</li>
							<li>Create your company profile - add values, culture etc.</li>
							<li>Add your company's social media (LinkedIn) details.</li>
						</p>
					</div>
				</div>
				<!-- service_single ends -->

				<!-- service_single starts -->
				<div class="col-sm-6 service_single">
					<div class="icon_holder">
						<div class="icon_shape">
							<i class="fa fa-bell-o"></i>
						</div>
					</div>
					<div class="service_right">
						<h4>Step 2 - Create new job descriptions</h4>
						<p>
							<li>Create your company branded job descriptions.</li>
							<li>Create and attach a branded job video to make your job stand out.</li>
						</p>
					</div>
				</div>
				<!-- service_single ends -->

				<!-- service_single starts -->
				<div class="col-sm-6 service_single">
					<div class="icon_holder">
						<div class="icon_shape">
							<i class="fa fa-envelope-o"></i>
						</div>
					</div>
					<div class="service_right">
						<h4>Step 3 - Publish job descriptions to Social Media</h4>
						<p>
							<li>Publish job descriptions to LinkedIn.</li>
							<li>Market your vacancy to suitable candidates.</li>
							<li>Generate attraction of your vacancy from most suitable candidates.</li>

						</p>
					</div>
				</div>
				<!-- service_single ends -->

				<!-- service_single starts -->
				<div class="col-sm-6 service_single">
					<div class="icon_holder">
						<div class="icon_shape">
							<i class="fa fa-code"></i>
						</div>
					</div>
					<div class="service_right">
						<h4>Step 4 - Recieve applications from candidates.</h4>
						<p>
							<li>Receive application from candidates.</li>
							<li>Recruit the best talent.</li>
						</p>
					</div>
				</div>
				<!-- service_single ends -->

			</div>
		</div>
	</section>
	<!-- sec-services ends -->

	<!-- zee_para_container feed_holder starts -->

	<!-- zee_para_container Feed_holder ends -->

	<!-- sec-simple-text starts -->

	<!-- sec-simple-text ends -->

	<!-- sec-portfolio starts -->
	<section id="sec-portfolio" class="section_holder bg_grey">
		<div class="container section_container">
			<div class="row">
				<article>
					<div class="hgroup">
						<div class="col-xs-3 heading_cover">
							<h2>Our Customers</h2>
						</div>
						<div class="col-xs-1 skew_holder">
							<div class="skew_shape"></div>
						</div>
						<div class="col-xs-8 heading_cover">
							<!-- work_nav starts -->
							<nav class="work_nav">
								<ul id="filters">
									<li class="current"><a data-filter="*" href="#"><i
											class="fa fa-th-large"></i> All projects</a></li>
									<!-- 
                                    <li>
                                        <a data-filter=".cat_website" href="#">Web-sites</a>
                                    </li>
                                    <li>
                                        <a data-filter=".cat_mobile" href="#">Mobile Apps</a>
                                    </li>
                                    <li>
                                        <a data-filter=".cat_campaign" href="#"> Ad Campaign </a>
                                    </li>
                                    <li>
                                        <a data-filter=".cat_strategy" href="#">Strategy</a>
                                    </li>
                                     -->
								</ul>
							</nav>
							<!-- work_nav ends-->
						</div>
					</div>
				</article>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<!-- Porfolio Listing starts -->
					<div class="work_listing" id="container">

						<!-- 1 single_work starts -->
						<div class="work_item isotope-item cat_website">
							<div class="single_work animated" data-animdelay="0.2s"
								data-animspeed="1s" data-animrepeat="0" data-animtype="fadeInUp">
								<figure class="view view-second">
									<img src="images/portfolio/portfolio-img-1SJ.png" alt="">
									<div class="mask"></div>
									<div class="content" id="Wilmington">
										<div class="links">
											<%--											<!--  --%>
											<a href="projects/Wilmington.html" class="info-link"
												target="_blank"> </a>
											<%--                                                -->--%>
										</div>
										<div class="work_detail">
											<h3>Wilmington Plc</h3>
											<p>Wilmington Group plc is engaged in training and
												events, and publishing and information.</p>
										</div>
									</div>
								</figure>
							</div>
						</div>
						<!-- single_work ends -->

						<!-- 2 single_work starts -->
						<div class="work_item isotope-item cat_mobile cat_strategy">
							<div class="single_work animated" data-animdelay="0.2s"
								data-animspeed="1s" data-animrepeat="0" data-animtype="fadeInUp">
								<figure class="view view-second">
									<img src="images/portfolio/portfolio-img-2SJ.png" alt="">
									<div class="mask"></div>
									<div class="content">
										<div class="links">
											<a href="projects/Oodles.html" class="info-link"
												target="_blank"> </a>
										</div>
										<div class="work_detail">
											<h3>Oodles Technologies</h3>
											<p>Oodles Technologies is digital marketing and
												technology service startup with focus on providing
												end-to-end solutions implemented using creative and
												pioneering technology.</p>
										</div>
									</div>
								</figure>
							</div>
						</div>
						<!-- single_work ends -->

					</div>
					<!-- Porfolio Listing ends -->
				</div>
			</div>

		</div>
	</section>
	<!-- sec-portfolio ends -->

	<!-- sec-team starts -->
	<section id="sec-team" class="section_holder">
		<div class="container section_container">
			<div class="row">
				<article>
					<div class="hgroup">
						<div class="col-xs-3 heading_cover">
							<h2>The Team</h2>
						</div>
						<div class="col-xs-1 skew_holder">
							<div class="skew_shape"></div>
						</div>
						<div class="col-xs-8 heading_cover">
							<h3>We're proud of our team which always strives hard to deliver contagious success and desired results to our respective
								clients.</h3>
						</div>
					</div>
				</article>
			</div>

			<div class="row">

				<!-- team_carousel starts -->
				<div class="col-sm-12">
					<div id="carousel" class="team_carousel">
						<ul class="slides">
							<li><img src="images/teamslider/Jaspreet.jpg"
								alt="Founder and CEO" height="310px" />
								<div class="member_basic">
									<h3 class="member_name">Jaspreet Puri</h3>
									<p class="member_designation">Founder and CEO</p>
								</div></li>
							<li><img src="images/teamslider/team-img-1.jpg"
								alt="Advisor" />
								<div class="member_basic">
									<h3 class="member_name">Neil Smith</h3>
									<p class="member_designation">Advisor</p>
								</div>
							</li>
							
						<!-- commented to remove the two team members --> 
					
						<!--
							<li>
                                <img src="images/teamslider/team-img-3.jpg" alt="Web developer" />
                                <div class="member_basic">
                                    <h3 class="member_name">John Doe</h3>
                                    <p class="member_designation">Web developer</p>
                                </div>
                            </li>
                            <li>
                                <img src="images/teamslider/team-img-4.jpg" alt="Front-end developer" />
                                <div class="member_basic">
                                    <h3 class="member_name">Jason Smith</h3>
                                    <p class="member_designation">Front-end developer</p>
                                </div>
                            </li>
						-->
						</ul>
					</div>
				</div>
				<!-- team_carousel ends -->

				<!-- team_slider starts -->
				<div class="col-sm-12">
					<div class="row">
						<div id="slider" class="team_slider">
							<ul class="slides">
								<li>
									<div class="col-sm-3">
										<!--  Jaspreet blog details -->
										<!--  
                                        <span class="team_stats">
                                        	<span class="stats_bar_holder">
                                            	<span class="stats_bar" data-percent="80"></span>
                                            </span>
                                            <span class="stats_title">Wordpress</span>
                                        </span>
                                        <span class="team_stats">
                                            <span class="stats_bar_holder">
                                            	<span class="stats_bar" data-percent="70"></span>
                                            </span>
                                            <span class="stats_title">Drupal</span>
                                        </span>
                                        <span class="team_stats">
                                            <span class="stats_bar_holder">
                                            	<span class="stats_bar" data-percent="50"></span>
                                            </span>
                                            <span class="stats_title">joomla</span>
                                        </span>
                                     -->
									<ul class="team_social">
											<li><a href="https://uk.linkedin.com/in/jaspreetpuri"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="https://www.facebook.com/jaspreet.puri"><i class="fa fa-facebook"></i></a></li>
											<li><a href="https://twitter.com/jaspreetpuri/"><i class="fa fa-twitter"></i></a></li>
											<!-- 
                                            <li>
                                            	<a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a>
                                            	
                                            </li>
                                             -->
										</ul>
									</div>
									<div class="col-xs-offset-1 col-sm-7 team_description">
										<h3>Jaspreet Puri is Founder and CEO. He is MBA from
											London Business School and has 16 years of IT industry
											experience.</h3>
										<p>Jaspreet also has a Master’s Degree in engineering from
											the Indian Institute of Technology in Delhi. He has worked
											for engineering and developer roles in telecoms at Ericsson,
											T-Mobile and Vodafone, as well as in energy (Centrica) and IT
											consulting.</p>
										<p>Jaspreet brings extensive technical skills to
											StreamJobs, including web development and programming skills.
										</p>
									</div>
								</li>

								<li>
									<div class="col-sm-3">
										<!--  co-founder blog details -->
										<!-- 
                                        <span class="team_stats">
                                            <span class="stats_bar_holder">
                                            	<span class="stats_bar" data-percent="80"></span>
                                            </span>
                                            <span class="stats_title">Wordpress</span>
                                        </span>
                                        <span class="team_stats">
                                            <span class="stats_bar_holder">
                                            	<span class="stats_bar" data-percent="60"></span>
                                            </span>
                                            <span class="stats_title">Drupal</span>
                                        </span>
                                        <span class="team_stats">
                                            <span class="stats_bar_holder">
                                            	<span class="stats_bar" data-percent="70"></span>
                                            </span>
                                            <span class="stats_title">joomla</span>
                                        </span>
                                     -->
										<ul class="team_social">
											<!-- co-founder contact -->
											<!-- 
                                            <li><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="javascript:void(0);"><i class="fa fa-youtube"></i></a></li>
                                            <li><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                         -->
										</ul>
									</div>
									<div class="col-xs-offset-1 col-sm-7 team_description">
										<h3>Neil Smith is Wilmington's Group Chief Operating Officer. </h3>
										<p>
										Neil has worked in the media industry since 1989. In 1997 he led an MBO of the Business Information division of Macmillan which was backed by Wilmington. In 1999 this business was combined with the other professional information divisions of Wilmington.

</p>
										<p>He has been a member of the Wilmington Executive Board since 2004. In 2005 Neil gained a Masters in Finance (with distinction) from London Business School.
										
										He acts as an advisor and mentor to the business.</p>
									</div>
								</li>
								<!--  
								<li>
								
									<div class="col-sm-3">
										<span class="team_stats"> <span
											class="stats_bar_holder"> <span class="stats_bar"
												data-percent="80"></span>
										</span> <span class="stats_title">Wordpress</span>
										</span> <span class="team_stats"> <span
											class="stats_bar_holder"> <span class="stats_bar"
												data-percent="70"></span>
										</span> <span class="stats_title">Drupal</span>
										</span> <span class="team_stats"> <span
											class="stats_bar_holder"> <span class="stats_bar"
												data-percent="50"></span>
										</span> <span class="stats_title">joomla</span>
										</span>
										<ul class="team_social">
											<li><a href="javascript:void(0);"><i
													class="fa fa-facebook"></i></a></li>
											<li><a href="javascript:void(0);"><i
													class="fa fa-twitter"></i></a></li>
											<li><a href="javascript:void(0);"><i
													class="fa fa-youtube"></i></a></li>
											<li><a href="javascript:void(0);"><i
													class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>

									<div class="col-xs-offset-1 col-sm-7 team_description">
										<h3>John works his magic as a front-end developer .He is
											responsible for all the responsive design and front-end
											strategy.</h3>
										<p>Donec sollicitudin, mauris ac sagittis bibendum, erat
											tortor pulvinar leo, sed ultrices ipsum elit sed leo. In in
											dolor in justo pretium elementum ac et elit. In nec urna
											interdum, semper turpis eget, posuere orci. Sed leo nunc,
											aliquam at placerat ut, vestibulum vitae felis.</p>
										<p>Vivamus feugiat lacinia odio nec placerat. Donec
											aliquet leo nunc, ut cursus arcu scelerisque ac. Nunc porta
											in metus ac lobortis. Donec sollicitudin, mauris ac sagittis
											bibendum.</p>
									</div>
								</li>
								<li>
									<div class="col-sm-3">
										<span class="team_stats"> <span
											class="stats_bar_holder"> <span class="stats_bar"
												data-percent="60"></span>
										</span> <span class="stats_title">Wordpress</span>
										</span> <span class="team_stats"> <span
											class="stats_bar_holder"> <span class="stats_bar"
												data-percent="50"></span>
										</span> <span class="stats_title">Drupal</span>
										</span> <span class="team_stats"> <span
											class="stats_bar_holder"> <span class="stats_bar"
												data-percent="80"></span>
										</span> <span class="stats_title">joomla</span>
										</span>
										<ul class="team_social">
											<li><a href="javascript:void(0);"><i
													class="fa fa-facebook"></i></a></li>
											<li><a href="javascript:void(0);"><i
													class="fa fa-twitter"></i></a></li>
											<li><a href="javascript:void(0);"><i
													class="fa fa-youtube"></i></a></li>
											<li><a href="javascript:void(0);"><i
													class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
									<div class="col-xs-offset-1 col-sm-7 team_description">
										<h3>Jason is a Senior Software developer Jason expertise
											includes HTML5, CSS3 animation and word press theme
											integration.</h3>
										<p>Donec sollicitudin, mauris ac sagittis bibendum, erat
											tortor pulvinar leo, sed ultrices ipsum elit sed leo. In in
											dolor in justo pretium elementum ac et elit. In nec urna
											interdum, semper turpis eget, posuere orci. Sed leo nunc,
											aliquam at placerat ut, vestibulum vitae felis.</p>
										<p>Vivamus feugiat lacinia odio nec placerat. Donec
											aliquet leo nunc, ut cursus arcu scelerisque ac. Nunc porta
											in metus ac lobortis. Donec sollicitudin, mauris ac sagittis
											bibendum.</p>
									</div>
								</li>
								-->
							</ul>
						</div>
					</div>
				</div>
				<!-- team_slider ends -->

			</div>

			<div class="row">
				<!-- clients_holder starts -->
				<div class="clients_holder animated" data-animdelay="0.2s"
					data-animspeed="1s" data-animrepeat="0" data-animtype="fadeInUp">
					<div class="col-sm-2 client_single">
						<a href="javascript:void(0);"><img
							src="images/clients/wilmingtonLogo.jpg" alt="yahoo"></a>
					</div>

					<div class="col-sm-2 client_single">
						<a href="javascript:void(0);"><img
							src="images/clients/oodlesLogo.png" alt="hp"></a>
					</div>
<!--  
					<div class="col-sm-2 client_single">
						<a href="javascript:void(0);"><img
							src="images/clients/client_3.png" alt="vaio"></a>
					</div>

					<div class="col-sm-2 client_single">
						<a href="javascript:void(0);"><img
							src="images/clients/client_4.png" alt="home"></a>
					</div>

					<div class="col-sm-2 client_single">
						<a href="javascript:void(0);"><img
							src="images/clients/client_5.png" alt="psp"></a>
					</div>
-->
				</div>
				<!-- clients_holder ends -->
			</div>
		</div>
	</section>
	<!-- sec-team ends -->

	<!-- zee_para_container folio_stats starts Interestign facts and figures-->

	<!-- zee_para_container folio_stats ends -->
	<!--  sec-pricing starts -->
	<!--  removed pricing for now from here -->	

	<!--  sec-pricing ends -->
	<!-- sec-blog starts -->

	<!-- sec-blog ends -->

	<!-- sec login starts -->

	<section id="sec-login" class="section_holder">
		<div class="container section_container">
			<div class="row">
				<article>
					<div class="hgroup">
						<div class="col-xs-3 heading_cover">
							<h2>Login</h2>
						</div>
						<div class="col-xs-1 skew_holder">
							<div class="skew_shape"></div>
						</div>
						<div class="col-xs-8 heading_cover">
							<h3>Login to administer your account and create and publish
								job videos.</h3>
						</div>
					</div>
				</article>
			</div>
		</div>
		<div class="contact_form animated" data-animdelay="0.2s"
			data-animspeed="1s" data-animrepeat="0" data-animtype="fadeInRight">
                   <g:if test="${msg} != null">
						<div style="text-align: left;">
							<span style="color: red">
								${msg}
							</span>
						</div>
					</g:if>
					<br>
					<br>
			<form method='POST' id='loginForm' class='cssform' autocomplete='off'
				action="/j_spring_security_check">
				<div class="col-sm-6">
					<span class="field_single"> <input type="text"
						placeholder="Username" value="" name='j_username' id='username'>
					</span> <span class="field_single"> <input type="password"
						placeholder="Password" value="" name='j_password' id='password'>
					</span> <span> </span> 


					<input class="button button-medium" type="submit"
						value="Login">
			
					<div class="col-sm-6">
						<g:link controller="register" action="forgotPassword" >Forgot your password?</g:link>
						
				
					</div>
					
				</div>	

					<div class="col-sm-6">
							Don't have a Streamjobs account?
							<br>
							<ul id="register" class="pager col-sm-6">
								<li class="previous"><g:link controller="register" action="index">Register for free &rarr;</g:link></li>
							</ul>
							
					</div>
			</form>
			
			
		</div>

	</section>
	<!--  sec login ends -->

	<!-- sec-contact starts -->
	
		<div id="sec-contact" class="container section_container">
			<div class="row">
				<article>
					<div class="hgroup">
						<div class="col-xs-3 heading_cover">
							<h2>Contact Us</h2>
						</div>
						<div class="col-xs-1 skew_holder">
							<div class="skew_shape"></div>
						</div>
						<div class="col-xs-8 heading_cover">
							<h3>We are always ready to help you out regarding all you
								queries. Send us a message via the form below or you can email
								or call us.</h3>
						</div>
					</div>
				</article>
			</div>

			<div class="row">
				<!-- contact_info starts -->
				<div class="col-sm-4">
					<div class="contact_info align_center">
						<i class="fa fa-phone"></i>
						<h4 class="contact_title">Call Us</h4>
						<p class="contact_description">+44 7743967534</p>
					</div>
				</div>
				<!-- contact_info ends -->

				<!-- contact_info starts -->
				<div class="col-sm-4">
					<div class="contact_info align_center">
						<i class="fa fa-map-marker"></i>
						<h4 class="contact_title">Office Location</h4>
						<p class="contact_description">93, Cavendish Avenue, West Ealing,
							London W13 0JY, UK</p>
					</div>
				</div>
				<!-- contact_info ends -->

				<!-- contact_info starts -->
				<div class="col-sm-4">
					<div class="contact_info align_center">
						<i class="fa fa-envelope-o"></i>
						<h4 class="contact_title">Emails</h4>
						<p class="contact_description">
							<a href="mailto:jaspreetp@hotmail.com">jaspreetp@hotmail.com</a>
						</p>
					</div>
				</div>
				<!-- contact_info ends -->

				<div class="contact_form animated" data-animdelay="0.1s"
					data-animspeed="1s" data-animrepeat="0" data-animtype="fadeInRight">
					
					<g:if test="${prospectmsg} != null">
						<div style="text-align: left;">
							<span style="color: red">
								${prospectmsg}
							</span>
						</div>
					</g:if>
					<br>
					<g:form novalidate id="prospect" method="post" controller="Prospect" action="submitQuery">
						<div class="col-sm-6">
							<span class="field_single"> <input type="text"
								placeholder="Full Name" name="name" required>
							</span> <span class="field_single"> <input type="email"
								placeholder="Email" name="email" required>
							</span> <span class="field_single"> <input type="tel"
								placeholder="Phone" name="phone" required>
							</span>
						</div>
						<div class="col-sm-6">
							<span class="field_single"> <textarea
									placeholder="Comments" name="message" required></textarea>
							</span>
							
							<g:submitButton name="update" value="Submit"  />
						</div>

					</g:form>
				</div>

			</div>
		</div>
	</section>
	<!-- sec-contact ends -->



	<!-- sec-mstarts -->
	<section class="sec-map">

		<div class="container">

			<!-- circle_button -->
			<a
				class="circle_button circle_button_top toggle_section_button toggle_map_button"
				href="#map_contact"><i class="fa fa-times"></i>Locate us</a>
			<!-- circle_button -->
		</div>

		<div class="map_mask"></div>
		<div id="map_contact" class="google_map"></div>
	</section>
	<!-- sec-map ends -->


	<!-- footer start -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h5 class="copy_right">Copyright © 2014 StreamJobs Limited.</h5>
				</div>
				<div class="col-sm-6">
					<ul class="sm_links align_center">
						<li><a href="https://www.facebook.com/streamjobs" class="sm_icon"> <i
								class="fa fa-facebook"></i>
						</a></li>
						<!-- 
						<li><a href="javascript:void(0);" class="sm_icon"> <i
								class="fa fa-twitter"></i>
						</a></li>
						<li><a href="javascript:void(0);" class="sm_icon"> <i
								class="fa fa-linkedin"></i>
						</a></li>
						 
						<li><a href="javascript:void(0);" class="sm_icon"> <i
								class="fa fa-google-plus"></i>
						</a></li>
						-->
					</ul>
				</div>


			</div>
		</div>
	</footer>
	<!-- footer end -->

	<!-- Modernizr -->
	<script type='text/javascript' src='js/vendor/modernizr-2.6.2.min.js'></script>

	<!-- Sticky JS file -->
	<script type='text/javascript' src='js/jquery.sticky.js'></script>

	<!-- Navigation Scroll TO JS file -->
	<script type='text/javascript' src='js/jquery.scrollTo.js'></script>
	<script type='text/javascript' src='js/jquery.nav.js'></script>

	<!--  Pretty Photo JS -->
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>

	<!-- Masonary Isotope -->
	<script type='text/javascript' src='js/jquery.isotope.js'></script>

	<!-- VideoJs JS file HTML WebM and Mp3 Player -->
	<!--<script type='text/javascript' src="js/video.js"></script>-->

	<!-- jQuery Easing -->
	<!--<script type="text/javascript" src="js/jquery.easing.min.js"></script>-->

	<!-- Parallax JS Flie -->
	<script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.localscroll-1.2.7-min.js"></script>

	<!-- Responsive Slides -->
	<script type="text/javascript" src="js/responsiveslides.min.js"></script>

	<!-- Flex slider for team section -->
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>

	<!-- Fit Videos for youtube and vimeo etc -->
	<script type="text/javascript" src="js/jquery.fitvids.js"></script>

	<!-- Google Maps Library -->
	<script type="text/javascript"
		src="https://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
	<script type='text/javascript' src='js/gmap3.js'></script>

	<!-- Animation Jquery -->
	<script src="js/animation.js"></script>

	<!-- Owl Carousel for feature portfolio -->
	<script src="js/owl.carousel.js"></script>

	<!-- Query Loader for images -->
	<script src="js/jquery.queryloader2.js"></script>

	<!-- GreyScale for IE 10 and 11 -->
	<script type='text/javascript' src='js/grayscale_functions.js'></script>
	<script type='text/javascript' src='js/grayscale.js'></script>

	<!-- Main and Project Loading JS files -->
	<script type='text/javascript' src='js/main_home.js'></script>
	<script type='text/javascript' src='js/project_script.js'></script>

	<!-- form scripts -->
	<script type='text/javascript' src='js/vendor/jquery.validate.min.js'></script>
	<script type='text/javascript' src='js/script_mail.js'></script>


	<script type="text/javascript">
	
		$("#Wilmington").click(function(){
			 			
		});
	
		$(document).ready(function(){
		"use strict";
		  
		 /* preloaders calling only for home */	
		 if ( !$.browser.msie ) { 
			$("body").queryLoader2({
				barColor: "#444444",
				backgroundColor: "#ffffff",
				percentage: true,
				barHeight: 3,
				completeAnimation: "fade",
				minimumTime: 200
			});  
		 }else{
			 $('#load').hide();
		 }
		 
		  /* Team Slider with Carausel */
		  $('#carousel').flexslider({
			animation: "slide",
			controlNav: false,
			directionNav: false,
			slideshow: true,
			itemWidth: 291,
			itemMargin: 2,
			minItems: 4, // use function to pull in initial value
			maxItems: 4, // use function to pull in initial value
			asNavFor: '#slider'
		  });
		  
		  $('#slider').flexslider({
			animation: "slide",
			controlNav: false,
			directionNav: false,
			animationLoop: false,
			slideshow: false,
			sync: "#carousel",
			start: function(slider) {
						// stats_bar animation for team member
						$('.flex-active-slide').find('.stats_bar').each(function() {
							var el = $(this);
							var percent = el.data('percent');
							el.animate({width: percent+'%'}, 1000);
						});
					},
			before: function(slider) {
						// stats_bar animation for team member
						$('.flex-active-slide').find('.stats_bar').each(function() {
							var el = $(this);
							var percent = el.data('percent');
							el.animate({width: 0}, 0);
						});
					  
					},
			after: function(slider) {
						// stats_bar animation for team member
						$('.flex-active-slide').find('.stats_bar').each(function() {
							var el = $(this);
							var percent = el.data('percent');
							el.animate({width: percent+'%'}, 1000);
						});
					}
		  });
		  
		// This Page Javascript
			  /* testimonial slider */			   
			  $("#owl-feed").owlCarousel({ 
				  autoPlay: 3000, //Set AutoPlay to 3 seconds
				  items : 1,
				  pagination : true,
				  paginationNumbers: false,
				  stopOnHover: true,
				  navigation: false,
				  transitionStyle : "goDown",
				  itemsDesktop : false,
				  itemsDesktopSmall : false,
				  itemsTablet: false,
				  itemsMobile : false 
			  }); 
			/* Featured portfolio caraousel Starts */
			$("#featured-portfolio").owlCarousel({
				autoPlay: 3000,
				items : 5,
				/*itemsDesktop : [1199,4],
				itemsDesktopSmall : [979,3],*/
				 itemsCustom : [
								[0, 1],
								[390, 2],
								[768, 3],
								[980, 4],
								[1400, 5]
								],
				navigation : true,
				pagination : false,
				navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"]
			});
			/* Featured portfolio caraousel Ends */
			
			/* Slider on Blog Posts as Gallery Starts */
			$(".rslides").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 500,
				maxwidth: 800,
				prevText: "",
				nextText: "",
				namespace: "transparent-btns"
			});
			/* Slider on Blog Posts as Gallery Ends */
	
		});		
	</script>

	<!-- style-switcher starts -->
		<!--  removed style switcher -->
	<!-- style-switcher ends -->

	<!-- Style switcher -->
	<script src="switcher/switcher.js" type="text/javascript"></script>
	<script src="switcher/jquery.cookie.js" type="text/javascript"></script>

	<!-- Main Inner JS files-->
	<script type='text/javascript' src='js/main_inner.js'></script>

	<script type="text/javascript">
		$(".istTimeUser").hide(10000);
		$(document).ready(function(){
			// For Fit Vimeo Youtube Videos Target your .container, .wrapper, .post, etc.
			$(".featured_image, .responsive_video").fitVids();
			
			/* Tabs And toggles */
			$(".folio-tabs").tabs();
			
			$(".folio-toggle").each( function () {
				var $this = $(this);
				if( $this.attr('data-id') == 'closed' ) {
					$this.accordion({ header: '.folio-toggle-title', collapsible: true, active: false  });
				} else {
					$this.accordion({ header: '.folio-toggle-title', collapsible: true});
				}
		
				$this.on('accordionactivate', function( e, ui ) {
					$this.accordion('refresh');
				});
		
				$(window).on('resize', function() {
					$this.accordion('refresh');
					});
				});

		});
		$("#prospect").validate({
			rules:{
				phone:{
					number : true
					}
				}
			});
		
    </script>
	<script type="text/javascript">
		$(window).load(function() {
			$(".loader").fadeOut("slow");
		})
		</script>
<div class="loader"></div>
</body>
</html>
