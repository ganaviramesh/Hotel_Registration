<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frontend.aspx.cs" Inherits="HotelRegistration.Frontend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Welcome</title>  

 <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }

        .bg-image {
            /* Full height */
            height: 50%;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* Images used */     
        .img1 {
            width: 150%;
            height: 100%;
            
            background-image:url('Images/hotel.jpg');
            background-position: center;
            background-repeat:no-repeat;
            background-position:right top;
            
        }

        .img2 {
            width: 250%;
            height: 100%;
            
            background-image:url('Images/Hotelentry.jpg');
            background-position: center;
            background-repeat:no-repeat;
            background-position:right top;
            
        }

        .img3 {
            width: 170%;
            height: 100%;
            background-image: url('Images/reception.jpg');
            background-position: center;
            background-repeat:no-repeat;
            background-position:right top;

        }

        .img4 {
            width: 100%;
            height: 100%;
            background-image: url('Images/food.jpg');
            background-position: center;
            background-repeat:no-repeat;
            background-position:right top;
        }

        .img5 {
            width: 120%;
            height: 100%;
            background-image: url('Images/view.jpg');
            background-position: center;
            background-repeat:no-repeat;
            background-position:right top;
        }

        .img6 {
            width: 200%;
            height: 180%;
            background-image: url('Images/hotelout.jpg');
            background-position: center;
            background-repeat:no-repeat;
            background-position:right top;
        }
         

        /* Position text in the middle of the page/image */
        .bg-text {
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
            color: white;
            font-weight: bold;
            font-size: 80px;
            border: 10px solid #f1f1f1;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 700px;
            padding: 20px;
            text-align: center;
        }
        #bg-text1 {
            background:linear-gradient(135deg, #71b7e6, #9b59b6);
           
           font-weight: bold;
            font-size: 25px;
            border: none;
            border-radius: 10px;
            position: fixed;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 400px;
            padding: 2px;
            text-align: center;
            cursor:pointer;


        }
        #bg-text2 {
            background-color:white;           
            font-weight: bold;
            font-size: 25px;
            border: none;
            border-radius: 10px;
            position: fixed;
            top: 10%;
            left: 90%;
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 200px;
            padding: 2px;
            text-align: center;
            cursor:pointer;


        }
    </style>
</head>
<body>
    
    <div class="bg-image img1"></div>
    <div class="bg-image img2"></div>
    <div class="bg-image img3"></div>
    <div class="bg-image img4"></div>
    <div class="bg-image img5"></div>
    <div class="bg-image img6"></div>

    <div class="bg-text">WELCOME TO RAD HOTEL</div>
    <form id="form1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1"  />
    <input id="bg-text1" type="button" value="REGISTER" onclick="callclick1()"/>
    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click1" />
    <input id="bg-text2" type="button" value="VIEW" onclick="callclick()"/>
        </form>
</body>
</html>
<script>
    function callclick() {
        var btn = document.getElementById('Button1');

        btn.click();
     
    }
    function callclick1() {
        var btn1 = document.getElementById('Button2');
        btn1.click();
    }
</script>
