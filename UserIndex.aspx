<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserIndex.aspx.cs" Inherits="WebApplication1.UserIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Slider area -->
       <!-- Slideshow container -->
    <section >
    <div class="slideshow-container"">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <div class="numbertext">1 / 6</div>
        <img src="images/Slider/Slider-1.jpg" alt="" style="width:100%;  height: 200%;">
        <div class="text">The Sphinx</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 6</div>     
        <img src="images/Slider/Slider-2.jpg" alt="" style="width:100%; height: 200%;">
        <div class="text">Great Pyramids Of Giza</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 6</div>
        <img src="images/Slider/Slider-3.jpg" alt="" style="width:100%; height: 200%;">
        <div class="text">Red Sea</div>
      </div>
        <div class="mySlides fade">
        <div class="numbertext">4 / 6</div>
        <img src="images/Slider/Slider-4.jpg" alt="" style="width:100%; height: 200%;">
        <div class="text">Cairo Tower, Nile River</div>
      </div>
        <div class="mySlides fade">
        <div class="numbertext">5 / 6</div>
        <img src="images/Slider/Slider-5.jpg" alt="" style="width:100%; height: 200%;">
        <div class="text">Nile River In Aswan</div>
      </div>
        <div class="mySlides fade">
        <div class="numbertext">6 / 6</div>
        <img src="images/Slider/Slider-6.jpg" alt="" style="width:100%; height: 200%;">
        <div class="text">Abo Simble Temple</div>
      </div>
      <!-- Next and previous buttons -->
      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
      <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>


    <!-- The dots/circles -->
    <div id="dotID" style="text-align:center; margin: 10px; ">
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
      <span class="dot" onclick="currentSlide(4)"></span>
      <span class="dot" onclick="currentSlide(5)"></span>
      <span class="dot" onclick="currentSlide(6)"></span>
    </div>
  </section>

    <!-- End Slider area -->
    <!-- Professional Builde -->
    <section class="professional_builder row">
         <div class="container">
            <div class="row builder_all">
                <div class="col-md-3 col-sm-6 builder">
                    <i class="fa fa-globe" aria-hidden="true"></i>
                    <h4>Attractions</h4>
                    <div class="counter" data-target="50">0</div>
                  
                </div>
                <div class="col-md-3 col-sm-6 builder">
                    <i class="fa fa-hotel" aria-hidden="true"></i>
                    <h4>Hotels</h4>
                    <div class="counter" data-target="50">0</div>
      
                </div>
                <div class="col-md-3 col-sm-6 builder">
                    <i class="fa fa-car" aria-hidden="true"></i>
                    <h4>Car Rentals</h4>
                    <div class="counter" data-target="10">0</div>
      
                </div>
                <div class="col-md-3 col-sm-6 builder">
                    <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                    <h4>Happy Customres</h4>
                    <div class="counter" data-target="250">0</div>
         
         
                </div>
            </div>
        </div>
    </section>
    <!-- End Professional Builde -->
    <!-- About Us Area -->
    <section class="about_us_area row">
        <div class="container">
            <div class="tittle wow fadeInUp">
                <h2>ABOUT US</h2>

            </div>
            <div class="row about_row">
                <div class="who_we_area col-md-7 col-sm-6">
                    <div class="subtittle">
                        <h2>Overview</h2>
                    </div>

                    <p>    Welcome E-Tourrism Management System<br />  Egypt, a country linking northeast Africa with the Middle East, dates to the time of the pharaohs. Millennia-old monuments sit along the fertile Nile River Valley, including Giza's colossal Pyramids and Great Sphinx as well as Luxor's hieroglyph-lined Karnak Temple and Valley of the Kings tombs. The capital, Cairo, is home to Ottoman landmarks like Muhammad Ali Mosque and the Egyptian Museum, a trove of antiquities.</p>

                </div>
                <div class="col-md-5 col-sm-6 about_client">
                    <!--  <img src="images/about_client.jpg" alt="">       Som3a-->
                </div>
            </div>
        </div>
    </section>
    <!-- End About Us Area -->
                    <!-- What ew offer Area -->
          <section class="what_we_area row" style="background:Silver;">
        <div class="container" style="background:Silver;">
            <div class="tittle wow fadeInUp">
                <h2>Services we offer</h2>
                <h4></h4>
            </div>
            <div class="row construction_iner">
                <div class="container">
                    <div class="col-md-3 col-sm-6 construction" style="border-radius:25px; height: 400px;">
                        <div class="cns-img">
                            
                            <img src="images/logos/HotelWallpaper.jpg" alt="" style="border-radius:25px 25px 0px 0px; height: 200px;">
                        </div>
                        <div class="cns-content" style="border-radius:0px 0px 25px 25px;">
                            <a style="cursor: pointer; padding:0px;"href="hotels.aspx"><h5><br />HOTELS</h5></a>
                            <p style="height: 150px;">You can view and choose from a wide variety of the best Hotels in Egypt. </p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 construction" style="height: 400px;">
                        <div class="cns-img">
                            <img src="images/logos/TourGuide.png" alt="" style="border-radius:25px 25px 0px 0px; height: 200px;">
                        </div>
                        <div class="cns-content" style="border-radius:0px 0px 25px 25px;">
                            <a style="cursor: pointer; padding:0px;"href="TourGuides.aspx"><h5><br />TOUR GUIDES</h5></a>
                            <p style="height: 150px;">You can always use the help of our professional tour guides.  </p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 construction" style="height: 400px;">
                        <div class="cns-img">
                            
                            <img src="images/logos/CarRentals.jpg" alt="" style="border-radius:25px 25px 0px 0px; height: 200px;">
                        </div>
                        <div class="cns-content" style="border-radius:0px 0px 25px 25px;">
                           <a style="cursor: pointer; padding:0px;"href="CarRentals.aspx"> <h5><br />CAR RENTALS</h5></a>
                            <p style="height: 150px;">It is always easier when you have your car with you, we make it simple to find the best car rental office nearby. </p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 construction" style="height: 400px;">
                        <div class="cns-img">
                            <img src="images/logos/Recommendation.jpg" alt="" style="border-radius:25px 25px 0px 0px; height: 200px;">
                        </div>
                        <div class="cns-content" style="border-radius:0px 0px 25px 25px;">
                            <a style="cursor: pointer; padding:0px;"href="Recommendation.aspx"><h5><br />RECOMMENDATIONS</h5></a>
                            <p style="height: 150px;">You don't know where to visit?,<br /> Don't worry we've got your back.  </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            slides[slideIndex - 1].style.display = "block";
            setTimeout(showSlides, 2000); 
        }



</script>
    <script>
        const counters = document.querySelectorAll('.counter');
        const speed = 200; // The lower the slower

        counters.forEach(counter => {
            const updateCount = () => {
                const target = +counter.getAttribute('data-target');
                const count = +counter.innerText;

                // Lower inc to slow and higher to slow
                const inc = 2;

                // console.log(inc);
                // console.log(count);

                // Check if target is reached
                if (count < target) {
                    // Add inc to count and output in counter
                    counter.innerText = count + inc;
                    // Call function every ms
                    setTimeout(updateCount, 80);
                } else {
                    counter.innerText = target;
                }
            };

            updateCount();
        });

    </script>
</asp:Content>

