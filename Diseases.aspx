<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Diseases.aspx.cs" Inherits="Diseases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="category">Specialisation Type</label>
<div class="col-md-10">
    <asp:DropDownList ID="specialisation" CssClass="form-control" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="specialisation" 
        DataValueField="specialisation" 
        onselectedindexchanged="disease_SelectedIndexChanged" 
        AppendDataBoundItems="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT [id], [specialisation] FROM [doctor]"></asp:SqlDataSource>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="contact">Disease</label>
<div class="col-md-10">
    <asp:TextBox ID="disease" CssClass="form-control" runat="server"></asp:TextBox>
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

