<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="WebApplication1.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <section class="about_us_area about_us_2 row" style="background-color: whitesmoke;">
        <div class="container">
            <div class="row about_row about_us2_pages">
                <div class="who_we_area col-md-12 " >
                    <div class="subtittle">
                        <h2 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Welcome back..</h2>
                    </div>
                    <div id="Acc" class="row">     
                        
                        <div class="col-md-3 " style="margin: 40px;">
                            <div style="text-align:center;">
                                <img style="border-radius: 70px;  width:107px; height:107px; border-style: solid; border-color: black; " src="./images/footer.jpg"/>
                            </div>
                            <div style="text-align:center; margin-top: 20px;">
                                <button type="button" onclick="show_user_attractions()" style="background:none; background-color:none; border:none;" ><h2 style="font-size: 22px; text-align: center; padding: 0px; margin:4px;  margin-top:12px;">Saved Places</h2></button>
                            </div>
                        </div>
                          
                        <div class="col-md-3 " style="margin: 40px;">
                            <div style="text-align:center;">
                                <img style="border-radius: 70px;  width:107px; height:107px; border-style: solid; border-color: black; " src="./images/footer.jpg"/>
                            </div>
                            <div style="text-align:center; margin-top: 20px;">
                                <button type="button" onclick="rate_attraction()" style="background:none; background-color:none; border:none;" ><h2 style="font-size: 22px; text-align: center; padding: 0px; margin:4px;  margin-top:12px;">Rate Attraction</h2></button>
                            </div>
                        </div>
                          
                        <div class="col-md-3 " style="margin: 40px;">
                            <div style="text-align:center;">
                                <img style="border-radius: 70px;  width:107px; height:107px; border-style: solid; border-color: black; " src="./images/tourguide1.png"/>
                            </div>
                            <div style="text-align:center; margin-top: 20px;">
                                <button type="button" style="background:none; background-color:none; border:none;" ><h2 style="font-size: 22px; text-align: center; padding: 0px; margin:4px;  margin-top:12px;">Account</h2></button>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
      <form runat="server" id="rateForm" hidden style="margin:0px 80px 80px 80px;">
     <div class="col-md-10"  id="rate1">
            <asp:DropDownList runat="server" name="Locations" id="attractions_list" style=" border-radius: 10px; border-style:solid; border-color:#f6b60b; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
              
            </asp:DropDownList>
                </div>
     <div class="row " id="rate" >

     <div class="col-md-8 RecRating ">
                
        
                <span><button runat="server" type="button" onclick="choose_rating(1)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star1" style="width:20px; height: 20px;"> </i></button></span>
                <span><button runat="server" type="button" onclick="choose_rating(2)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star2" style="width:20px; height: 20px;"> </i></button></span>
                <span><button runat="server" type="button" onclick="choose_rating(3)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star3" style="width:20px; height: 20px;"> </i></button></span>
                <span><button runat="server" type="button" onclick="choose_rating(4)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star4" style="width:20px; height: 20px;"> </i></button></span>
                <span><button runat="server" type="button" onclick="choose_rating(5)" class="btn" style="background-color:transparent; width:20px; padding:0px; cursor:pointer;"><i class="fa fa-star" id="star5" style="width:20px; height: 20px;"> </i></button></span>
                <span><asp:button runat="server" ID="confirmbtn" OnClick="confirm_btn" text="Confirm rating " CssClass="btn" /> </span>       
         <asp:Label runat="server" Visible="false" ID="starsCountLabel"></asp:Label>

            </div>

     </div>
         </form>


     <div id="AttractionsContainer" class="container" hidden="hidden">
            <div class="row about_row about_us2_pages">
                <div class="who_we_area col-md-12">
                    <div class="subtittle">
                        <h1 style="margin: 20px 0px;    text-transform: uppercase; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Your Saved Places</h1>
                    </div>
                    
                </div>
            </div>            
         </div>



    </section>
    <script>
        function show_user_attractions() {
            document.getElementById("AttractionsContainer").removeAttribute("hidden"); 
        }
        var saved_attractions = <%= bindSavedPlaces%>;
        var attractions = <%= bindAttractions%>;
        var ratings = <%= bindRatings%>;
        console.log(saved_attractions);
        console.log(attractions);
        
        var div_container, div_row;
        
        
        function add_attraction(hotel_name, brief, img_path) {
            var i, max;
            var div_col, div_img_inner, div_img, img, div_text, head5, p;
            div_col = document.createElement('div');
            div_img = document.createElement('div');
            div_text = document.createElement('div');
            img = document.createElement('img');
            head5 = document.createElement('h5');
            p = document.createElement('p');
            div_img_inner = document.createElement('div');
            max = 15;

            div_img.setAttribute('class', 'col-md-3 col-sm-3 contsruction_2 ');
            div_img.setAttribute('style', 'border-radius: 25px; height: 400px;   padding:0px 15px 30px; margin: 10px 0px 30px 0px;');

            img.setAttribute('style', 'border-radius:25px 25px 0px 0px; height: 200px;  width: 249px;');
            div_img_inner.setAttribute('class', 'cns-img');
            div_img_inner.setAttribute('style', 'border-style:outset; border-radius:25px 25px 0px 0px; border-bottom:none; ');

            div_text.setAttribute('class', 'cns-content');
            div_text.setAttribute('style', 'border-style:outset; border-top:none; border-radius:0px 0px 25px 25px;');
            p.setAttribute('style', 'height: 180px;');


            img.setAttribute('src', img_path);
            head5.innerText = hotel_name;
            p.innerText = brief;

            head5.setAttribute('style', 'padding: 10px;');

            div_img_inner.appendChild(img);
            div_img.appendChild(div_img_inner);
            div_text.appendChild(head5);
            div_text.appendChild(p);
            div_img.appendChild(div_text);
            return div_img;
            //div_container.appendChild(div_img);
            //div_row.appendChild(div_container);
            //document.getElementById('AttractionsContainer').appendChild(div_row);

        }
        var j;
        div_row = document.createElement('div');
        div_row.setAttribute('class', 'row construction_iner');
        div_row.setAttribute('style', 'padding: 20px;');
        div_container = document.createElement('div');
        div_container.setAttribute('class', 'container');

        div_row.appendChild(div_container);
        let arr = []
        var size;
    
        for (i = 0; i < saved_attractions.length; i++) {
            arr[i] = add_attraction(attractions[saved_attractions[i].Attraction_id].name, attractions[saved_attractions[i].Attraction_id].brief, attractions[saved_attractions[i].Attraction_id].img_path);
            div_container.appendChild(arr[i]);
            div_row.setAttribute('id', '0');
        }
        div_row.appendChild(div_container);


        document.getElementById('AttractionsContainer').appendChild(div_row);


    </script>

    <script>

        

        function add_attraction_names() {
            for (var i = 0; i < attractions.length; i++) {

                tempDiv.appendChild(create_option(attractions[i].id, attractions[i].name));

            }
        }

        function create_option(id, value) {
            var option;
            option = document.createElement('option');
            option.setAttribute('attraction', id);
            option.innerText = value;
            return option;

        }


        var number_stars = 0;
        function choose_rating(num) {
            console.log('This is num' + num);
            for (var i = 0; i < parseInt(num); i++) {
                console.log('Stars ids:' + 'star' + i.toString())
                var st = document.getElementById('star' + (i + 1).toString());
                st.setAttribute('class', 'fa fa-star Starchecked');
            }
            number_stars = parseInt(num);
            document.getElementById('starsCountLabel').setAttribute('text', num);
        }
        function rate_attraction() {
            
            document.getElementById('rateForm').removeAttribute('hidden');
        }
    </script>
</asp:Content>
