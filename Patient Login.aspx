<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Patient Login.aspx.cs" Inherits="Patient_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="user">User Name</label>
<div class="col-md-10">
    <asp:TextBox ID="user" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="password">Password</label>
<div class="col-md-10">
    <asp:TextBox ID="password" CssClass="form-control" runat="server" 
        TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="contact" runat="server" Text="Login" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
</asp:Content>

