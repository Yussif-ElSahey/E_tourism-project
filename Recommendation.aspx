<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Recommendation.aspx.cs" Inherits="WebApplication1.Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Banner area -->
    <section class="banner_area" data-stellar-background-ratio="0.5">
        <h2>Recommendation system</h2>
        <ol class="breadcrumb">
            <li><a href="userindex.aspx">Home</a></li>
            <li><a href="#" class="active">Recommendation system</a></li>
        </ol>
    </section>
    <!-- End Banner area -->
    <!-- Our Latest Blog Area -->
<section style=" margin:0px;">
    <form id="recForm" style="background-color: whitesmoke; border-radius: 25px; margin: 30px 80px 0px 80px; margin-bottom: 0px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
        <h1 style="padding: 20px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Choose the perfect place for you</h1> 
        <div class="row rec combobox">
             <h4   style="font-size:20px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Location</h4>

            <div class="col-md-10">
            <select name="Locations" id="locations" style=" border-radius: 10px; border-style:solid; border-color:#f6b60b; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
              
            </select>
                </div>

        </div>
        <div class="row rec">   
             <h4 style="font-size:20px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; margin: 0px 0px 10px 30px;">Price Range&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp Attraction Type</h4>
            
            <div class =" col-md-2 radBox" style="border-style:solid; border-width:thin; border-color:#f6b60b; ">
                <%--<input type="radio" id="male1" name="gender" value="male">
                <label for="male1">Male</label><br>
                <input type="radio" id="female1" name="gender" value="female">
                <label for="female1">Female</label><br>
                <input type="radio" id="other1" name="gender" value="other">
                <label for="other1">Other</label>--%>
             <h6   style="font-size:20px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">From</h6>
                    
                <select name="Min" id="min"  style="width: 80%; border-style:solid; border-radius: 10px; border-color:#f6b60b; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
            </select>
             <h6   style=" font-size:20px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;margin-top:10px;">To</h6>

                <select name="Max" id="max" style="width: 80%; border-style:solid;  border-radius: 10px; border-color:#f6b60b;  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
              
            </select>
            </div>
            <div class ="col-md-3 radBox" id="Types" style="border-width:thin; border-style:solid; border-color:#f6b60b; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-style:normal; ">
                <div>

                
                </div>

            </div>
            
            <div class="col-md-8 RecRating ">
                <div class ="col-md-3">
                <h3 style="width:150px; margin-left:0px;">Rating:     </h3>

                </div> 

                <span><button type="button" onclick="choose_rating(1)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star1" style="width:20px; height: 20px;"> </i></button></span>
                <span><button type="button" onclick="choose_rating(2)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star2" style="width:20px; height: 20px;"> </i></button></span>
                <span><button type="button" onclick="choose_rating(3)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star3" style="width:20px; height: 20px;"> </i></button></span>
                <span><button type="button" onclick="choose_rating(4)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star4" style="width:20px; height: 20px;"> </i></button></span>
                <span><button type="button" onclick="choose_rating(5)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star5" style="width:20px; height: 20px;"> </i></button></span>
                

            </div>
        </div>
        <button type="button" onclick="SubmitBtn()" class="btn" style="  text-transform: uppercase; background: #f6b60b; text-align:center; text-align:center;font-family: 700 18px/59px 'Roboto', sans-serif ; margin-left: 85%; margin-bottom:20px; width: 120px;" > Find 

        </button>
    </form>
          
    <div id="rows" >


    </div>
    
</section>
    <script>
        var number_stars = 0;
        function choose_rating(num) {
            console.log('This is num' + num);
            for (var i = 0; i < parseInt(num); i++) {
                console.log('Stars ids:' +'star' + i.toString())
                var st = document.getElementById('star' + (i+1).toString());
                st.setAttribute('class', 'fa fa-star Starchecked');
            }
            number_stars = parseInt(num);
        }

        function SubmitBtn() {
            var attractions = <%= bindAttractions %>;
            console.log(attractions);
            var selectedLocation = document.forms['recForm'].elements['locations'].selectedIndex;
            console.log('The selected location is: ' + selectedLocation);
            var from = document.forms['recForm'].elements['min'].selectedIndex;
            var to_ = document.forms['recForm'].elements['max'].selectedIndex;     
            console.log('The selected min is: ' + from);
            console.log('The selected max is: ' + to_);

            let selectedattractions = []
            for (var i = 0; i < attractions.length; i++) {
                selectedattractions.push(0);
            }
            for (var i = 0; i < attractions.length; i++) {
                if (attractions[i].LocationID == selectedLocation) {
                    selectedattractions[i] += 1;
                }
                if (from <= attractions[i].price && to_ >= attractions[i].price){
                    selectedattractions[i] += 1;
                }
                var checkbox = document.forms['recForm'].elements['type' + attractions[i].TypeID].checked;
                if (checkbox == true) {
                    selectedattractions[i] += 1;            
                }
                if (number_stars <= attractions[i].Rating) {
                    console.log("Stars " + number_stars);
                    selectedattractions[i] += 1;
                }
                
            }
            console.log(selectedattractions);
            for (var i = 0; i < selectedattractions.length; i++) {
                if (selectedattractions[i] >= 2) {
                    display_attraction(attractions[i].id, locations[attractions[i].LocationID].Value, attractions[i].phone, attractions[i].brief, attractions[i].name, attractions[i].img_path);
                }
            }
        }


        var types = <%= types  %>;
        var locations = <%= locs  %>;
        console.log(types);
        var prices = <%= price_set %>;

        console.log(prices);
        function add_min_price() {
            var elem = document.getElementById('min');
            var opt = document.createElement('option');
            for (var i = 0; i < prices.length / 2; i++) {
                opt = create_option(prices[i], prices[i]);
                elem.appendChild(opt);
            }
            //elem.selectedIndex = -1;
        }
        add_min_price();
        function add_max_price() {
            var elem = document.getElementById('max');
            var opt = document.createElement('option');
            
            for (var i = prices.length / 2; i < prices.length; i++) {
                opt = create_option(prices[i], prices[i]);
                elem.appendChild(opt);
            }
            //elem.selectedIndex = -1;

        }
        add_max_price();
        function create_option(id,value)
        {
            var option;
            option = document.createElement('option');
            option.setAttribute('value', id);
            option.innerText = value;
            return option;

        }
        function create_input(id,value) {
            var  input;

            input = document.createElement('input');

            input = document.createElement('input');

            input.setAttribute('type','checkbox');
            input.setAttribute('id','type'+id);
            input.setAttribute('value', id);

            return input;
        }
        function create_label(id, value) {
            var label;
            label = document.createElement('label');
            label = document.createElement('label');
            label.setAttribute('style', 'font-style: normal;')

            label.setAttribute('for', 'type_' + id);
            label.innerText = '     '  + value;
             
            return label;
        }
        var tempDiv = document.getElementById('locations');
        for (var i = 0; i < locations.length; i++) {
            tempDiv.appendChild(create_option(locations[i].LocationID, locations[i].Value));

        }

        var tempDiv2 = document.getElementById('Types');
        
        for (var i = 0; i < types.length; i++) {
            var divvvv = document.createElement('div');
            divvvv.appendChild(create_input(types[i].Type_ID, types[i].Value));
            divvvv.appendChild(create_label(types[i].Type_ID, types[i].Value));
            tempDiv2.appendChild(divvvv);
        }
        
    </script>

    <script>




        function show_attraction(id,location, phone, brief, name, img_path) {
            var div_row, div_col1, div_col2,p0,p1,icon2 ,h2, div_img, img, div_icon, icon, div_p, p;
            // <span class="close fa fa-close"></span>
            var span;
            

            div_row = document.createElement('div');
            div_col1 = document.createElement('div');
            div_col2 = document.createElement('div');
            div_icon = document.createElement('div');
            div_p = document.createElement('div');
            div_img = document.createElement('div');

            h2 = document.createElement('h2');
            icon = document.createElement('i');
            img = document.createElement('img');
            p = document.createElement('p');
            p0 = document.createElement('p');
            p1 = document.createElement('p');
            icon2 = document.createElement('i');

            div_row.setAttribute('class','row');
            div_row.setAttribute('style', 'margin:80px; border-style:outset; border-radius: 8px; background-color: whitesmoke;');

            h2.setAttribute('style', 'margin: 15px; margin-left:25px; margin-bottom:0px;');
            h2.setAttribute('class', 'col-md-10');

            div_col1.setAttribute('class', 'col-md-3');
            div_col1.setAttribute('style', 'background-color: white; margin: 20px 0px 20px 40px; border-radius: 10px; ');


            div_img.setAttribute('style', 'padding-top: 15px   ;text-align: center;');

            img.setAttribute('src', img_path);
            img.setAttribute('style', 'height: 250px; width: 250px; border-radius:10px;');

            div_icon.setAttribute('style', 'padding:10px; max-height: 250px; max-width: 250px; background-color: white; ');
            div_icon.setAttribute('style', 'padding:10px; max-height: 250px; max-width: 250px; background-color: white; ');


            icon.setAttribute('class', 'fa fa-phone');

            icon2.setAttribute('class', 'fa fa-map-marker');

            div_col2.setAttribute('class', 'col-md-8');

            
            div_p.setAttribute('style', 'background-color:white; min-height:40%; min-width: 80%; border-radius: 10px;');

            p.setAttribute('style', ' margin: 20px 10px 20px 10px; padding: 30px 20px 30px 0px; background-color:white; min-height:337px; min-width: 80%; ');


            h2.innerText = name;
            p.innerText = brief;
            icon.innerText = phone;
            icon2.innerText = location;


            div_p.appendChild(p);

            p0.appendChild(icon);
            p1.appendChild(icon2);

            div_icon.appendChild(p0);
            div_icon.appendChild(p1);
            div_img.appendChild(img);
            div_col1.appendChild(div_img);
            div_col1.appendChild(div_icon);

            div_p.appendChild(p);
            div_col2.appendChild(div_p);

            span = document.createElement('span');
            span.setAttribute('class', 'close fa fa-close');

            div_row.appendChild(h2);
            div_row.appendChild(span);

            div_row.appendChild(div_col1);
            div_row.appendChild(div_col2);
            div_row.setAttribute('id', id);
            
            return div_row;
        }


        function display_attraction(id, location, phone, brief, name, img_path) {
            var main_div = document.getElementById('rows');
            rows.appendChild(show_attraction(id, location, phone, brief, name, img_path));
        }

        var closebtns = document.getElementsByClassName("close");
        var i;

        for (i = 0; i < closebtns.length; i++) {
            closebtns[i].addEventListener("click", function () {
                this.parentElement.style.display = 'none';
            });
        }
    </script>
    <!-- End Our Latest Blog Area -->
</asp:Content>
