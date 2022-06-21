<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>


.bg-img_signin {
  /* The image used */
  background-image: url("./images/SignIn.jpg");

  min-height: 420px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: cadetblue;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
  max-width:600px;
  border-color: cadetblue;
  border-style: solid;
  border-top-style: none;
  margin-left: 200px;
}

.containerReg{
    
    background-color: white;
    padding: 30px;
    border-color: cadetblue;
    border-style: solid;
    max-width: 600px;
    margin-left: 200px;
}
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div  class="bg-img_signin" >

<form style="margin:110px; padding:50px;" action="action_page.php">
  <div class="containerReg">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
      <div>
      </div>
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
    <hr>
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class=" signin">
    <p >Already have an account? <a href="#">Sign in</a>.</p>
  </div>
</form>


</div>
</asp:Content>
