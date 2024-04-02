<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin Login.aspx.cs" Inherits="Admin_Login" %>

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
    <div class="col-md-6 col-md-offset-3">
    <div class="panel panel-info">
    <div class="panel-heading">
    <div class="panel-title center-block">
    Admin Login
    </div>
    </div>
    <div class="panel-body">
    
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
    <asp:Button ID="login" runat="server" Text="Login" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
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
    </div>
    
    </form>
</body>
</html>
