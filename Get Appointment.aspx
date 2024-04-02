<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Get Appointment.aspx.cs" Inherits="Get_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="name">Patient Name</label>
<div class="col-md-10">
    <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
      ControlToValidate="name" ErrorMessage="Invalid Patient Name"  
    ValidationExpression="^[a-zA-Z ]+$" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Name is Required!" ControlToValidate="name"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="disease">Select Disease</label>
<div class="col-md-10">
    <asp:DropDownList ID="disease" CssClass="form-control" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="disease" 
        DataValueField="disease" 
        onselectedindexchanged="disease_SelectedIndexChanged" AppendDataBoundItems="True">
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        
        SelectCommand="SELECT [id], [disease] FROM [disease] ORDER BY [disease] DESC"></asp:SqlDataSource>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="other">Other Disease</label>
<div class="col-md-10">
    <asp:TextBox ID="other" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="category">Select Doctor</label>
<div class="col-md-10">
    <asp:DropDownList ID="doctor" CssClass="form-control" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" 
        DataValueField="name" 
        onselectedindexchanged="doctor_SelectedIndexChanged" 
        ondatabound="doctor_DataBound">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT [id], [name] FROM [doctor]"></asp:SqlDataSource>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="time">Select Date</label>
<div class="col-md-10">
    <asp:DropDownList ID="date" CssClass="form-control" runat="server" 
        onselectedindexchanged="doctor_SelectedIndexChanged" CausesValidation="False" AutoPostBack="True">
    </asp:DropDownList>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="time">Select Time</label>
<div class="col-md-10">
    <asp:DropDownList ID="time" CssClass="form-control" runat="server" 
        onselectedindexchanged="time_SelectedIndexChanged">
    </asp:DropDownList>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="contact">Contact</label>
<div class="col-md-10">
    <asp:TextBox ID="contact" CssClass="form-control" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ControlToValidate="contact" ErrorMessage="Should be 10 numbers"  
    ValidationExpression="[0-9]{10}" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="contact" ErrorMessage="Fill your contact number"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="email">E-mail</label>
<div class="col-md-10">
    <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="email" ErrorMessage="Fill your email ID"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="password">Password</label>
<div class="col-md-10">
    <asp:TextBox ID="password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="password" ErrorMessage="Fill your Password"></asp:RequiredFieldValidator>
    
</div>
</div>

<div class="form-group">
<label class="control-label col-md-2" for="address">Address</label>
<div class="col-md-10">
    <asp:TextBox ID="address" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ControlToValidate="address" ErrorMessage="Fill your Address"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="city">City</label>
<div class="col-md-10">
    <asp:TextBox ID="city" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
      ControlToValidate="city" ErrorMessage="Invalid City"  
    ValidationExpression="^[a-zA-Z ]+$" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ControlToValidate="city" ErrorMessage="Fill your City"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="state">State</label>
<div class="col-md-10">
    <asp:TextBox ID="state" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ControlToValidate="state" ErrorMessage="Fill your State"></asp:RequiredFieldValidator> 
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="country">Country</label>
<div class="col-md-10">
    <asp:TextBox ID="country" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ControlToValidate="country" ErrorMessage="Fill your Country"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="pincode">Pincode</label>
<div class="col-md-10">
    <asp:TextBox ID="pincode" CssClass="form-control" runat="server"></asp:TextBox>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
      ControlToValidate="pincode" ErrorMessage="Invalid Pincode"  
    ValidationExpression="[0-9]{5}" Display="Dynamic"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ControlToValidate="pincode" ErrorMessage="Fill your PinCode"></asp:RequiredFieldValidator>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="appointment" runat="server" Text="Get Appointment" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
</asp:Content>

