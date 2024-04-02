<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Medicines.aspx.cs" Inherits="Medicines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="category">Select Disease</label>
<div class="col-md-10">
    <asp:DropDownList ID="disease" CssClass="form-control" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="disease" 
        DataValueField="disease" 
        onselectedindexchanged="disease_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT [id], [disease] FROM [disease]"></asp:SqlDataSource>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="medicine">Medicine</label>
<div class="col-md-10">
    <asp:TextBox ID="medicine" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="add" runat="server" Text="ADD" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
</asp:Content>

