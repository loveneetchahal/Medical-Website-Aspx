<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- begin:article -->
      <div class="row">
        <div class="col-md-3 col-sm-4 sidebar">
          <div class="row">
            <div class="col-md-12">
              <div class="widget">
                <h3>Contact Information</h3>
                <address>
                  1-234-567-8900<br />
                  Anytown, XX 12345<br />
                  Lorem ipsum dolor sit amet.<br />
                  info@mysite.com<br/>
                  1.555.555.5554<br />
                  Indonesia<br />
                  <abbr title="Phone">Mobile :</abbr> +628995001222<br />
                </address>
              </div>
              
              <div class="widget">
                <h3>Customer Service</h3>
                <address>
                  <strong>Robert Adams</strong><br />
                  226-240-8240<br />
                  <a href="mailto:#">robertadams@clotheshop.com</a>
                </address>
                <address>
                  <strong>Reyno</strong><br />
                  226-907-8810<br />
                  <a href="mailto:#">reyno@clotheshop.com</a>
                </address>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-9 col-sm-8 content">
          <div class="row">
            <div class="col-md-12">
              <ol class="breadcrumb">
                <li><a href="default.aspx">Home</a></li>
                <li class="active">About</li>
              </ol>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="page-header">
                  <h2>Contact Us <small>Subtext for header</small></h2>
              </div>
              <br>
  <div class="form-horizontal">
  <div class="form-group">
      <label class="control-label col-md-2" for="name">Your Name</label>
         <div class="col-md-10">
            <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
         </div>
   </div>
  <div class="form-group">
    <label class="control-label col-md-2" for="email">Email Address</label>
    <div class="col-md-10">
    <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
  </div>
<div class="form-group">
<label class="control-label col-md-2" for="subject">Subject</label>
<div class="col-md-10">
    <asp:TextBox ID="subject" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="message">Message</label>
<div class="col-md-10">
    <asp:TextBox ID="message" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-group">
<div class="col-md-offset-2 col-md-10">
    <asp:Button ID="contact" runat="server" Text="Submit" onclick="upload_Click" CssClass="btn btn-success btn-lg" />
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
      </div>
      <!-- end:article -->
</asp:Content>

