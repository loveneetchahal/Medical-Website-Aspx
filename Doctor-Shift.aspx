<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Doctor-Shift.aspx.cs" Inherits="Doctor_Shift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="doctor">Select Doctor</label>
<div class="col-md-10">
    <asp:DropDownList ID="doctor" CssClass="form-control" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" 
        DataValueField="name" 
        onselectedindexchanged="disease_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT [name], [id] FROM [doctor]"></asp:SqlDataSource>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="shift">Select Shift</label>
<div class="col-md-10">
    <asp:DropDownList ID="shift" CssClass="form-control" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="shift" 
        DataValueField="shift" 
        onselectedindexchanged="disease_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT [id], [shift] FROM [shift]"></asp:SqlDataSource>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="add" runat="server" Text="Add Doctor-Shift" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
</asp:Content>

