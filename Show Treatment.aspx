<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Show Treatment.aspx.cs" Inherits="Show_Treatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" 
        CssClass="table table-bordered table-hover table- stripped table-responsive" 
        DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="disease" HeaderText="Disease" 
                SortExpression="disease">
            <HeaderStyle CssClass="none" />
            </asp:BoundField>
            <asp:BoundField DataField="treatment" HeaderText="Treatment" 
                SortExpression="treatment" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connect %>" 
        SelectCommand="SELECT [disease], [treatment] FROM [treatment]">
    </asp:SqlDataSource>
</asp:Content>

