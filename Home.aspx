<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TravelDiary2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Travel Diary</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1>Travel Diary</h1>
            <br />
            <br />
            <asp:Label runat="server" ID="Label1"></asp:Label>
            <br />
            <asp:Button runat="server" ID="logout" value="Logout" OnClick="logout_Click" Text="Logout"/>
        
       <h2>Insert in your Travel Diary!</h2>
           <pre><h4>Note: 
1. Please enter your username with which you're logged on
2. Distance is measured in kilometers, just enter number
3. Means write : Car,Bus,Airplane or Other
4. Date insert in format : dd/mm/yyyy
Thank you :)
                </h4></pre> 
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" DefaultMode="Insert" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" Height="50px" Width="335px" OnItemInserted="DetailsView1_ItemInserted1">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="StartPoint" HeaderText="StartPoint" SortExpression="StartPoint" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                        <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
                        <asp:BoundField DataField="Means" HeaderText="Means" SortExpression="Means" />
                        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                        <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:DetailsView>
            </p>
            <br />
            <p>
                <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                &nbsp;</p>

            </div>
        <br />
        <br />
        <h2>Edit your Travel Diary!</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="219px" style="margin-top: 0px" Width="100%" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="StartPoint" HeaderText="StartPoint" SortExpression="StartPoint" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                <asp:BoundField DataField="Distance" HeaderText="Distance" SortExpression="Distance" />
                <asp:BoundField DataField="Means" HeaderText="Means" SortExpression="Means" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestCS %>" DeleteCommand="DELETE FROM [Travel] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Travel] ([Username], [Title], [Description], [StartPoint], [Destination], [Distance], [Means], [StartDate], [EndDate]) VALUES (@Username, @Title, @Description, @StartPoint, @Destination, @Distance, @Means, @StartDate, @EndDate)" SelectCommand="SELECT * FROM [Travel] " UpdateCommand="UPDATE [Travel] SET [Username] = @Username, [Title] = @Title, [Description] = @Description, [StartPoint] = @StartPoint, [Destination] = @Destination, [Distance] = @Distance, [Means] = @Means, [StartDate] = @StartDate, [EndDate] = @EndDate WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="StartPoint" Type="String" />
                <asp:Parameter Name="Destination" Type="String" />                
                <asp:Parameter Name="Distance" Type="String" />
                <asp:Parameter Name="Means" Type="String" />
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="StartPoint" Type="String" />
                <asp:Parameter Name="Destination" Type="String" />
                <asp:Parameter Name="Distance" Type="String" />
                <asp:Parameter Name="Means" Type="String" />
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <br />
            <br />
        <div id ="meanssum">
        <h3>Total distance traveled by Means</h3>
        By bus:<asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>
         <br />
        By car:<asp:Label ID="lbl4" runat="server" Text="Label"></asp:Label>
            <br />
        By airplane:<asp:Label ID="lbl5" runat="server" Text="Label"></asp:Label>
            <br />
        Other:<asp:Label ID="lbl6" runat="server" Text="Label"></asp:Label>
            </div>
            <br />
        <div id="yearsum">
            <h3>Total distance traveled by year</h3>
                <br />
            In 2017:<asp:Label ID="lbl7" runat="server" Text="Label"></asp:Label>
                <br />
            In 2018:<asp:Label ID="lbl8" runat="server" Text="Label"></asp:Label>


        </div>
    </form>
</body>
</html>
