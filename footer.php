		<!-- contactus -->
		<div id="contactus">            
            <div class="jumbotron-gray">
                <div class="container">
					<div class="row"> <!-- main container row -->
                    
						<div class="col-lg-4 text-center"> <!-- google map row -->
                            <div class="spacing2"></div>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:550px;width:340px;"><div id="gmap_canvas" style="height:550px;width:340px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.trivoo.net" id="get-map-data">trivoo.net</a></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:15,center:new google.maps.LatLng(14.239597848801525,121.14713746631776),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(14.239597848801525, 121.14713746631776)});infowindow = new google.maps.InfoWindow({content:"<b>Strato Data Solutions</b><br/>B42 L8 Phase 6 Mabuhay City<br/>Cabuyao City Laguna PH 4025" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
                        </div> <!-- end google map row -->
                        
                        <div class="col-lg-8 text-center"> <!-- contact details row -->
                        
                        	<div class="row"> <!-- contact header row -->
                            	<div class="col-lg-12 text-center">
                                	<h1 class="black">Contact Us</h1>
                                </div>
                            </div> <!-- end contact header row -->
                        
                        	<div class="row">
                            	<div class="col-lg-6 text-center"> <!-- contact form row -->
                                    <div class="spacing4"></div>
                                    <form role="form" action="contact.submit.php" method="post">
                                        <div class="form-group has-feedback">
                                            <input class="form-control" placeholder="Full Name" name="full_name">
                                        </div>
                                        <div class="form-group has-feedback">
                                            <input class="form-control" placeholder="Email Address" name="email">
                                        </div>
                                        <div class="form-group has-feedback">
                                            <input class="form-control" placeholder="URL" name="url">
                                        </div>
                                        <div class="form-group has-feedback">
                                            <input class="form-control" placeholder="Contact Number" name="contactnumber">
                                        </div>
                                        <div class="form-group has-feedback">
                                            <textarea class="form-control" placeholder="Your Message" rows="2" name="message"></textarea>
                                        </div>
                                        <div class="form-group checkbox">
                                            <label>
                                                <input name="newsletter" value="1" type="checkbox" checked>Send me the latest news and promotions too!
                                            </label>
                                        </div>
                                        <div class="form-group text-center">
                                            <input type="submit" class="btn btn-primary" value="Send Message" />
                                        </div>
                                    </form>
                                </div> <!-- end contact form row -->
                            	<div class="col-lg-6 text-right"> <!-- contact info row -->
                                    <div class="spacing3"></div>
                                    <strong class="blue">CONTACT DETAILS</strong>
                                    <div class="spacing1"></div>
                                    B42 L8 Phase 6 Mabuhay City<br/>Cabuyao City Laguna PH 4025
                                    <div class="spacing3"></div>
                                    Mo.#: +63.915.779.9368
                                    <br />
                                    E: emailus@stratodatasolutions.com
                                    <div class="spacing1"></div>
                                    <strong class="blue">FOLLOW US</strong>
                                    <div class="spacing1"></div>
                                    <img src="image/facebook-icon.png" alt="facebook" />
                                    <img src="image/google-plus-icon.png" alt="google+" />
                                    <img src="image/linkedin-icon.png" alt="linkedin" />
                                    <img src="image/twitter-icon.png" alt="twitter" />
                                    <img src="image/tumblr-icon.png" alt="tumblr" />
                                    <img src="image/deviantart-icon.png" alt="deviantart" />
                                </div> <!-- end contact info row -->
                            </div>
                            
                        	<div class="row"> <!-- footer row -->
                            	<div class="col-lg-12 text-right">
                                	<div class="spacing1"></div>
                                    <div class="spacing2"></div>
                                    <img src="image/header.png" />
                                    <div class="spacing3"></div>
                                	<p class="blue">All Rights Reserved <?php echo date("Y"); ?> | Last update: <?php echo $seoUpdate; ?> | Version: <?php echo $seoVer; ?></p>
                                </div> <!-- end footer row -->
                            </div>
                        
                        </div> <!-- end contact details row -->
                        
                    
                    </div> <!-- end main container row -->
                </div>
            </div>        
        </div>
		<!-- end contactus -->
        
    </body>

</html>