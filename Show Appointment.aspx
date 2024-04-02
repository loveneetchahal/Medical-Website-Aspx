<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="Show Appointment.aspx.cs" Inherits="Show_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CssClass="table table-bordered table-hover table-stripped table-responsive" 
    DataKeyNames="id" DataSourceID="SqlDataSource1" 
        EmptyDataText="No Data Present">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="disease" HeaderText="Disease" 
                SortExpression="disease" />
            <asp:BoundField DataField="date" DataFormatString="{0}" HeaderText="Date" />
            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
            <asp:BoundField DataField="contact" HeaderText="Contact" 
                SortExpression="contact" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:connect %>" 
    DeleteCommand="DELETE FROM [appointment] WHERE [id] = @id" 
    InsertCommand="INSERT INTO [appointment] ([name], [disease], [doctor], [time], [contact], [email], [password], [address], [city], [state], [country], [pincode]) VALUES (@name, @disease, @doctor, @time, @contact, @email, @password, @address, @city, @state, @country, @pincode)" 
    SelectCommand="SELECT * FROM [appointment] WHERE ([doctor] = @doctor) ORDER BY [id] DESC" 
    UpdateCommand="UPDATE [appointment] SET [name] = @name, [disease] = @disease, [doctor] = @doctor, [time] = @time, [contact] = @contact, [email] = @email, [password] = @password, [address] = @address, [city] = @city, [state] = @state, [country] = @country, [pincode] = @pincode WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="disease" Type="String" />
        <asp:Parameter Name="doctor" Type="String" />
        <asp:Parameter Name="time" Type="String" />
        <asp:Parameter Name="contact" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="country" Type="String" />
        <asp:Parameter Name="pincode" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="doctor" SessionField="aname" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="disease" Type="String" />
        <asp:Parameter Name="doctor" Type="String" />
        <asp:Parameter Name="time" Type="String" />
        <asp:Parameter Name="contact" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="country" Type="String" />
        <asp:Parameter Name="pincode" Type="String" />
        <asp:Parameter Name="id" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

