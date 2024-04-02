<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manage Account.aspx.cs" Inherits="Manage_Account" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
    <meta name="description" content="responsive clothing store template" />
    <meta name="author" content="afriq yasin ramadhan" />
    <link rel="shortcut icon" href="img/favicon.png" />

    <title>Medicineshop</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/stylex.css" rel="stylesheet" type="text/css" />
    <!-- Custom styles for this template -->
    
    <link href="css/responsive.css" rel="stylesheet" />




  <link href="images/favicon.ico" type="image/x-icon" rel="shortcut icon" />
  <link rel="stylesheet" type="text/css" href="css/styles.css?1440654276" />
  <link rel="stylesheet" type="text/css" href="css/browser.css" />
  <link rel="stylesheet" type="text/css" href="css/responsivecss.css" />
  <link rel="stylesheet" type="text/css" href="css/flexslider.css"  />
  <link rel="stylesheet" type="text/css" href="css/style.css"  />
  <link href='css/css.css?family=Open+Sans:400italic,600italic,700italic,400,600,700' rel='stylesheet' type='text/css'/>
  <script type="text/javascript" src="js/modernizr.custom.js"></script>
  <script type="text/javascript" src="js/javascript.js"></script>
    

  <!--<script type="text/javascript" src="js/jquery.color.js"></script>
  <script type="text/javascript" src="js/ga.js"></script>-->
  <script type="text/javascript" src="js/jquery.hoverIntent.js"></script>
  <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
    <div class="col-md-6">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CssClass="table table-bordered table-stripped table-responsive table-hover" 
            DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="specialisation" HeaderText="Specialisation" 
                    SortExpression="specialisation" />
                <asp:BoundField DataField="contact" HeaderText="Contact" 
                    SortExpression="contact" />
                <asp:BoundField DataField="qualification" HeaderText="Qualification" 
                    SortExpression="qualification" />
                <asp:BoundField DataField="experience" HeaderText="Experience" 
                    SortExpression="experience" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="country" HeaderText="Country" 
                    SortExpression="country" />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                    SortExpression="pincode" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:connect %>" 
            DeleteCommand="DELETE FROM [doctor] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [doctor] ([name], [specialisation], [contact], [email], [password], [qualification], [experience], [image], [address], [city], [state], [country], [pincode]) VALUES (@name, @specialisation, @contact, @email, @password, @qualification, @experience, @image, @address, @city, @state, @country, @pincode)" 
            SelectCommand="SELECT * FROM [doctor] WHERE ([email] = @email)" 
            UpdateCommand="UPDATE [doctor] SET [name] = @name, [specialisation] = @specialisation, [contact] = @contact, [qualification] = @qualification, [experience] = @experience, [address] = @address, [city] = @city, [state] = @state, [country] = @country, [pincode] = @pincode WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="specialisation" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="experience" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="aname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="specialisation" Type="String" />
                <asp:Parameter Name="contact" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="experience" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
                <asp:Parameter Name="id" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="col-md-6">
    <div class="form-horizontal">
    <div class="form-group">
<label class="control-label col-md-2" for="password">Old Password</label>
<div class="col-md-10">
    <asp:TextBox ID="password" CssClass="form-control" runat="server" 
        TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="npassword">New Password</label>
<div class="col-md-10">
    <asp:TextBox ID="npassword" CssClass="form-control" runat="server" 
        TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="cpassword">Confirm Password</label>
<div class="col-md-10">
    <asp:TextBox ID="cpassword" CssClass="form-control" runat="server" 
        TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="change" runat="server" Text="Change Password" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
</div>
    </div>
    </div>
    </form>
</body>
</html>
