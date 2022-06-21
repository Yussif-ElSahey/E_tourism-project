<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication1.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
<style>
.signIn-page {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
    padding-top: 85px;
        
      position: relative;
padding-bottom: 10px;

}

* {
  box-sizing: border-box;
}

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

/* Add styles to the form container */
.containerSignin {
  position: absolute;
  right: 40%;
  align-content:center;
  margin: 50px;
  margin-right:0px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
  box-sizing: border-box;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  box-sizing: border-box;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
  box-sizing: border-box;
}

/* Set a style for the submit button */
.btn_signin {
  background-color: cadetblue;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  box-sizing: border-box;
  opacity: 0.9;
}

.btn_signin:hover {
  opacity: 1;
  box-sizing: border-box;
}
</style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="signIn-page">

<div class="bg-img_signin">
  <form runat="server" class="containerSignin" id="loginForm">
      <asp:ScriptManager EnablePageMethods="true" runat="server">
    </asp:ScriptManager>
    <h1 runat="server" style="margin-bottom:5px;">Login</h1>

    <label runat="server" for="email"><b>Email</b></label>
    <asp:TextBox runat="server" ID="txtUserName" placeholder="Type yout email address" name="email" ></asp:TextBox>

    <label runat="server" for="psw" id="pp"><b>Password</b></label>
    <asp:TextBox runat="server" ID="txtPassword" placeholder="Type yout password" name="password" ></asp:TextBox>
      <%--  --%>
    <asp:button runat="server" type="button" class="btn_signin" Text="Login" OnClick="login_btn"></asp:button>
  </form>
</div>


</section>


    <script  >

        function btnclick() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("pp").innerHTML = this.responseText;
                }
            };
            xhttp.open("POST", "SignIn.aspx/login_btn()", true);
            xhttp.send("Username=user&password=userpass");
        }
        function fnsuccesscallback(data) {
            alert(data.d);

        }
        function fnerrorcallback(result) {
            alert(result.statusText);
        }



    </script>
</asp:Content>
