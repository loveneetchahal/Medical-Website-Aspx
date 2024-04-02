<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Appointment Details.aspx.cs" Inherits="Appointment_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="name">Patient Name</label>
<div class="col-md-10">
    <asp:Label ID="name" runat="server" Text=""></asp:Label>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="disease">Disease</label>
<div class="col-md-10">
    <asp:Label ID="disease" runat="server" Text=""></asp:Label>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="doctor">Doctor</label>
<div class="col-md-10">
    <asp:Label ID="doctor" runat="server" Text=""></asp:Label>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="date">Date</label>
<div class="col-md-10">
    <asp:Label ID="date" runat="server" Text=""></asp:Label>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="time">Time</label>
<div class="col-md-10">
    <asp:Label ID="time" runat="server" Text=""></asp:Label>
</div>
</div>
<div class="form-group">
<div class="col-md-10 col-md-offset-2">
<asp:Label ID="Label1" runat="server" Text="Your appointment has been approved."></asp:Label>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="confirm" runat="server" Text="Confirm" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
</div>
</asp:Content>

