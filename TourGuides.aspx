<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="TourGuides.aspx.cs" Inherits="WebApplication1.UserAboutMission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Banner area -->
    <section class="banner_area" data-stellar-background-ratio="0.5">
        <h2>About Us</h2>
        <ol class="breadcrumb">
            <li><a href="userindex.aspx">Home</a></li>
            <li><a href="#" class="active">Tour Guides</a></li>
        </ol>
    </section>
    <!-- End Banner area -->

    <!-- About Us Area -->
    <section class="about_us_area about_us_2 row">
        <div class="container">
            <%--<div class="row about_row about_us2_pages">
                <div class="who_we_area col-md-7">
                    <div class="subtittle">
                        <h2 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Tour Guides</h2>
                    </div>

    
    
                </div>
                
            </div>--%>

            <div class="subtittle">
                        <h2 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; margin: 0px 0px 30px;">Tour Guides</h2>
                    </div>
            <div id="AttractionsContainer" class="container">
            </div>

        </div>
    </section>
    <!-- End About Us Area -->
     <script>

         var div_container, div_row;
         var myvalue = <%= bindGuides %>;
         console.log(myvalue);
             let guides = [];
         for (var i = 0; i < myvalue.length; i++) {
             guides.push(myvalue[i]);
         }
        function add_attraction(hotel_name, brief, img_path,phone) {
            var i, max;
            var div_col, div_img_inner, div_img, img, div_text, head5, p;
            var icon;

            icon = document.createElement('i');

   
            icon.setAttribute('style', "font-family:Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans - serif'; font-size: 16px; text-align: center; margin-top:4px;");
            icon.setAttribute('class', 'fa fa-phone');
            icon.innerText = '\t'+ phone;


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


            div_img_inner.appendChild(img);
            div_img.appendChild(div_img_inner);
            div_text.appendChild(head5);
            div_text.appendChild(icon);

            div_text.appendChild(p);
            div_img.appendChild(div_text);
            return div_img;
            //div_container.appendChild(div_img);
            //div_row.appendChild(div_container);
            //document.getElementById('AttractionsContainer').appendChild(div_row);

        }
        var j;
        div_row = document.createElement('div');
        div_row.setAttribute('class', 'row');
        div_row.setAttribute('class', 'construction_iner');
        div_container = document.createElement('div');
        div_container.setAttribute('class', 'container');

        div_row.appendChild(div_container);
         let arr = []
         var size;
         size = guides.length;
         for (i = 0; i < size; i++) {
             arr[i] = add_attraction(guides[i].name, guides[i].location, guides[i].img_path, guides[i].phone);
             div_container.appendChild(arr[i]);
             div_row.setAttribute('id', '0');
         }
         div_row.appendChild(div_container);
       

        document.getElementById('AttractionsContainer').appendChild(div_row);

    </script>
  
</asp:Content>
