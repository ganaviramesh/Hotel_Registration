<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gridview.aspx.cs" Inherits="HotelRegistration.Gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
            display:flex; justify-content: center; align-items: center ;
        }
        #GridView1{
 align-items: center;
 align-content:center;
 text-align:center;
 }
 h1{
 display: flex; justify-content: center; align-items: center;
 }
</style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><b>Details of the registered members in the RAD Hotel</b></h1>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Name" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
<Columns>
<asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
<asp:BoundField DataField="Phone_Number" HeaderText="Phone Number" SortExpression="Phone_Number" />
<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
<asp:BoundField DataField="Arrival_date" HeaderText="Arrival date" SortExpression="Arrival_date" />
<asp:BoundField DataField="Arrival_time" HeaderText="Arrival Time" SortExpression="Arrival_time" />
<asp:BoundField DataField="Departure_date" HeaderText="Departure date" SortExpression="Departure_date" />
<asp:BoundField DataField="Room_Type" HeaderText="Room Type" SortExpression="Room_Type" />
<asp:BoundField DataField="Free_Pickup" HeaderText="Free Pickup" SortExpression="Free_Pickup" />
<asp:BoundField DataField="Special_request" HeaderText="Special Request" SortExpression="Special_request" />
</Columns>
<FooterStyle BackColor="#CCCC99" ForeColor="Black" />
<HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
<PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
<SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
<SortedAscendingCellStyle BackColor="#F7F7F7" />
<SortedAscendingHeaderStyle BackColor="#4B4B4B" />
<SortedDescendingCellStyle BackColor="#E5E5E5" />
<SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>

            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hotelConnectionString %>" ProviderName="<%$ ConnectionStrings:hotelConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [register] ORDER BY [Arrival_date], [Arrival_time]"></asp:SqlDataSource>

        </div>
        
    </form>
</body>
</html>
