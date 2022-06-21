<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="CarRentals.aspx.cs" Inherits="WebApplication1.UserAboutOverView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Banner area -->
    <section class="banner_area" data-stellar-background-ratio="0.5">
        <h2>Services We Offer</h2>
        <ol class="breadcrumb">
            <li><a href="userindex.aspx">Home</a></li>
            <li><a href="#" class="active">Car Rentals</a></li>
        </ol>
    </section>
    <!-- End Banner area -->

    <!-- About Us Area -->
    <section class="about_us_area about_us_2 row" style="background-color: whitesmoke;">
        <div class="container">
            <div class="row about_row about_us2_pages">
                <div class="who_we_area col-md-12 " >
                    <div class="subtittle">
                        <h2 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Car Rentals</h2>
                    </div>
                    <div id="CarRental" class="row">                     
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- End About Us Area -->

  <script>

      var div_row, div_col, div_img, div_text;
      

      myvalue = <%= bindComOver %>;
      console.log(myvalue);
      let offices = []
      size = myvalue.length;
      for (var i = 0; i < size; i++) {
          offices.push(myvalue[i]); 
      }
      class office {
          constructor(id, name, img_path,phone) {
              this.id = id;
              this.name = name;
              this.img_path = img_path;
              this.phone = phone;
          }
      }

      function add_office(name, logo_path, phone_) {

          var img, phone, text_elm, div_phone, icon;
          div_col = document.createElement('div');
          div_img = document.createElement('div');
          div_text = document.createElement('div');
          div_phone = document.createElement('div');

          img = document.createElement('img');
          text_elm = document.createElement('h2');
          icon = document.createElement('i');

          icon.innerText =  phone_;
          icon.setAttribute('style', "font-family:Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans - serif'; font-size: 16px; text-align: center; margin-top:4px;");
          icon.setAttribute('class', 'fa fa-phone');

          div_col.setAttribute('class', 'col-md-2 ');
          div_col.setAttribute('style', 'margin: 40px;');

          img.setAttribute('src', logo_path);
          img.setAttribute('style', ' border-radius: 70px;  width:107px; height:107px; border-style: solid; border-color: black;');

          text_elm.setAttribute('style', 'font-size: 22px; text-align: center; padding: 0px; margin:4px;  margin-top:12px;')
          text_elm.innerText = name;
          
          div_text.setAttribute('style', " text-align:center; margin-top: 20px;");
     
          div_img.setAttribute('style', 'text-align:center; ');

          div_img.appendChild(img);
          div_text.appendChild(text_elm);
          div_text.appendChild(icon);

          div_col.appendChild(div_img);
          div_col.appendChild(div_text);


          return div_col;

      }
      div_row = document.getElementById('CarRental');
      div_row.setAttribute('style', 'background-color: whitesmoke;')
      var i;
      var num;
      num = 1;
      for (i = 0; i < myvalue.length; i++) {
          node = add_office(offices[i].office_name, offices[i].logo_path, offices[i].phone);
         
          div_row.appendChild(node);
          
          }
      


  </script>

</asp:Content>
