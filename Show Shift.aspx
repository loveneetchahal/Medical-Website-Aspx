<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Show Shift.aspx.cs" Inherits="Show_Shift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" 
    CssClass="table table-bordered table-striped table-hover table-responsive" 
    DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="shift" HeaderText="Shift Type" 
                SortExpression="shift" />
            <asp:BoundField DataField="doctor" HeaderText="Doctor Name" 
                SortExpression="doctor" />
            <asp:BoundField DataField="specialisation" HeaderText="Specialisation Type" 
                SortExpression="specialisation" />
            <asp:BoundField DataField="start" HeaderText="Available From" 
                SortExpression="start" />
            <asp:BoundField DataField="e_time" HeaderText="Available To" 
                SortExpression="end" />
            <asp:CommandField SelectText="Get Appointment" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:connect %>" 
    SelectCommand="SELECT doctor_shift.shift, doctor_shift.doctor, doctor.specialisation, shift.start, shift.e_time FROM doctor_shift INNER JOIN doctor ON doctor_shift.doctor = doctor.name INNER JOIN shift ON doctor_shift.shift = shift.shift">
</asp:SqlDataSource>
</asp:Content>

