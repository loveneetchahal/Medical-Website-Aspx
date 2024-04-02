<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="Treatment.aspx.cs" Inherits="Treatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="disease">Select Disease</label>
<div class="col-md-10">
    <asp:DropDownList ID="disease" CssClass="form-control" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="disease" 
        DataValueField="disease" 
        onselectedindexchanged="disease_SelectedIndexChanged" 
        AppendDataBoundItems="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT [id], [disease] FROM [disease]"></asp:SqlDataSource>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="treatment">Treatment</label>
<div class="col-md-10">
    <asp:TextBox ID="treatment" CssClass="form-control" runat="server" 
        TextMode="MultiLine"></asp:TextBox>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="upload" runat="server" Text="Upload Treatment" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
</asp:Content>

