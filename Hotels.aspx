<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Hotels.aspx.cs" Inherits="WebApplication1.UserAboutChairman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Banner area -->
    <section class="banner_area" data-stellar-background-ratio="0.5">
        <h2>Services we offer</h2>
        <ol class="breadcrumb">
            <li><a href="userindex.aspx">Home</a></li>
            <li><a href="#" class="active">Hotels</a></li>
        </ol>
    </section>

    <section class="what_we_area row" style="background:white;">
        <div id="hotel_div" class="container" style="background:white;">
            <div class="tittle wow fadeInUp">
                <h1 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; margin-top: 10px;">Popular Hotels in egypt</h1>
            </div>
            <div class="vertical-menu row">
              <div  class="col-md-3 col-sm-3" style="padding-left:10px; padding-top:8px;">
                  <img src="images/hotels/kempinski.jpg" />
              </div>
              <div class="col-md-7 col-sm-7" style="padding: 0px;">
                <h2>Royal Maxim Palace Kempinski</h2>
                 <div style="margin-left:10px;">
                  <span class="fa fa-star Starchecked"></span>
                   <span class="fa fa-star Starchecked"></span>
                    <span class="fa fa-star Starchecked"></span>
                    <span class="fa fa-star Starchecked"></span>
                    <span class="fa fa-star"></span>
                 </div> 

                <p style="font-size: 12px;">Spend an effortless stay in a joyful and safe atmosphere at the Palace. Pick from our various packages starting at EGP 1,500 where you can either spend the day by the pool or create memories with one of our special accommodation packages.  </p>  
                <p style="font-size: 12px;"><i class="fa fa-map-marker" aria-hidden="true"></i> Cairo, Egypt</p>
                <p style="font-size: 12px;"><i class="fa fa-phone" aria-hidden="true"> </i>    01234567891</p>
              
              </div>  
            </div>
        </div>
    </section>
    <!-- End About Us Area -->


        

    <script>
       // var destination_tag = document.getElementById("hotel_div");
        var myvalue = <%= MyProperty %>;
        console.log(myvalue[0]);

        var i;
        
        var create_hotel_element = function (img_path, brief, hotel_name, rating, location,phone) {
            var child_tag = document.createElement("div");
            var div0, div1, div2, img, head2, desc, div_span, span_,icon1,icon2,p1,p2 ;
            div0 = document.createElement('div');
            
            div_span = document.createElement('div');
            div1 = document.createElement('div');
            div2 = document.createElement('div');
            img = document.createElement('img');
            head2 = document.createElement('h2');
            desc = document.createElement('p');
            p1 = document.createElement('p');
            p2 = document.createElement('p');
            icon1 = document.createElement('i');
            icon2 = document.createElement('i');
            
            div0.setAttribute('class', 'row vertical-menu');
            div1.setAttribute('class', 'col-md-3 col-sm-3');

            div1.setAttribute('style', 'padding-left:10px; padding-top:8px;')

            div2.setAttribute('class', 'col-md-7 col-sm-7');
            div2.setAttribute('style',"padding: 0px;")

            img.setAttribute('src', img_path);
            div_span.setAttribute('style', 'margin-left:10px;');
            var j, span_checked;
            for (j = 0; j < 5; j++) {
                span_ = document.createElement('span');
                //console.log('This is j mn bara ' + j);
                span_checked = document.createElement('span');
                if (j < rating) {
                    //console.log('This is ' + j);
                    span_checked.setAttribute('class', 'fa fa-star Starchecked');
                    div_span.appendChild(span_checked);
                }
                else {
                    span_.setAttribute('class', 'fa fa-star ');
                    div_span.appendChild(span_);

                }
                
            }
            
            head2.innerText = hotel_name;
            desc.innerText = brief;
            desc.setAttribute('style', 'font-size: 12px;');
            div1.appendChild(img);
            div2.appendChild(head2);
            div2.appendChild(div_span);
            div2.appendChild(desc);
            div0.appendChild(div1);
            div0.appendChild(div2);
            
            document.getElementById("hotel_div").appendChild(div0);

            p1.setAttribute('style', 'font-size:12px;');
            p2.setAttribute('style', 'font-size:12px;');
            icon1.setAttribute('class', 'fa fa-map-marker');
            icon2.setAttribute('class', 'fa fa-phone');
            icon1.setAttribute('aria-hidden', 'true');
            icon2.setAttribute('aria-hidden', 'true');
            icon1.innerText = location;
            icon2.innerText = phone;
            p1.appendChild(icon1);
            p2.appendChild(icon2);
            div2.appendChild(p1);
            div2.appendChild(p2);       
        }
        
        for (i = 0; i < myvalue.length; i++) {
            create_hotel_element(myvalue[i].img_path, myvalue[i].brief, myvalue[i].name, myvalue[i].rating, myvalue[i].location, myvalue[i].phone);

        }
    </script>
</asp:Content>
