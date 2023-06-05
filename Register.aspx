<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HotelRegistration.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="StyleSheet1.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Rad Hotel Registration</title>
</head>
<body>


<div class="container">
<div class="title">Registration</div>
<div class="content">
<form id="form1" runat="server">
<div class="user-details">
<div class="input-box">
<span class="details">Full Name</span>
<input id="name" type="text" placeholder="Enter your name" runat="server" required/>
</div>
<div class="input-box">
<span class="details">Phone Number</span>
<input id="number" type="text" placeholder="Enter your Phone Number" runat="server"  required/>
</div>
<div class="input-box">
<span class="details">Email</span>
<input id="email" type="email" placeholder="Enter your email" runat="server" required/>
</div>
<div class="input-box">
<span class="details">Arrival Date</span>
<input id="arrdate" type="date" runat="server" required/>
</div>
<div class="input-box">
<span class="details">Arrival Time</span>
<input id="arrtime" type="time" runat="server" required/>
</div>
<div class="input-box">
<span class="details">Departure Date</span>
<input id="depdate" type="date" runat="server" required/>
</div>


<div class="input-box">
<span class="details">Room Type</span>
<asp:DropDownList ID="DropDownList1" runat="server" required>
<asp:ListItem>Standard Room</asp:ListItem>
<asp:ListItem>Deluxe Room</asp:ListItem>
</asp:DropDownList>
</div>
<div class="input-box">
<span class="details">Special Request</span>
<input id="request" type="text" runat="server" />
</div>

</div>
    <div class="gender-details">
          <input style="display:none;" type="radio" name="group" value="Yes,Please" id="dot-1"/>
          <input style="display:none;" type="radio" name="group" value="No,Thanks" id="dot-2"/>
          <span class="gender-title">Free Pickup</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Yes,Please</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">No,Thanks!</span>
          </label>
          </div>
        </div>
 
   

<div class="button">
    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
           
</div>
</form>
</div>
</div>

 

</body>
</html>
