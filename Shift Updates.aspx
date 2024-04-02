<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Shift Updates.aspx.cs" Inherits="Shift_Updates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="shift">Shift Name</label>
<div class="col-md-10">
    <asp:TextBox ID="shift" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="start">Start Time</label>
<div class="col-md-10">
    <asp:TextBox ID="start" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="end">End Time</label>
<div class="col-md-10">
    <asp:TextBox ID="end" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="register" runat="server" Text="Add Shift" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
</asp:Content>

