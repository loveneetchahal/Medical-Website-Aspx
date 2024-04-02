<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage Accounts.aspx.cs" Inherits="Manage_Accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
    <div class="col-md-6">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CssClass="table table-bordered table-stripped table-responsive table-hover" 
            DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="specialisation" HeaderText="Specialisation" 
                    SortExpression="specialisation" />
                <asp:BoundField DataField="contact" HeaderText="Contact" 
                    SortExpression="contact" />
                <asp:BoundField DataField="qualification" HeaderText="Qualification" 
                    SortExpression="qualification" />
                <asp:BoundField DataField="experience" HeaderText="Experience" 
                    SortExpression="experience" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="country" HeaderText="Country" 
                    SortExpression="country" />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                    SortExpression="pincode" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:connect %>" 
            DeleteCommand="DELETE FROM [doctor] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [doctor] ([name], [specialisation], [contact], [email], [password], [qualification], [experience], [image], [address], [city], [state], [country], [pincode]) VALUES (@name, @specialisation, @contact, @email, @password, @qualification, @experience, @image, @address, @city, @state, @country, @pincode)" 
            SelectCommand="SELECT * FROM [doctor] WHERE ([email] = @email)" 
            UpdateCommand="UPDATE [doctor] SET [name] = @name, [specialisation] = @specialisation, [contact] = @contact, [qualification] = @qualification, [experience] = @experience, [address] = @address, [city] = @city, [state] = @state, [country] = @country, [pincode] = @pincode WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="specialisation" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="experience" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="aname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="specialisation" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="experience" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
                <asp:Parameter Name="id" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="col-md-6">
    <div class="form-horizontal">
    <div class="form-group">
<label class="control-label col-md-2" for="password">Old Password</label>
<div class="col-md-10">
    <asp:TextBox ID="password" CssClass="form-control" runat="server" 
        TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="npassword">New Password</label>
<div class="col-md-10">
    <asp:TextBox ID="npassword" CssClass="form-control" runat="server" 
        TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="cpassword">Confirm Password</label>
<div class="col-md-10">
    <asp:TextBox ID="cpassword" CssClass="form-control" runat="server" 
        TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="change" runat="server" Text="Change Password" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
    </div>
    </div>
</asp:Content>

