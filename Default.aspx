<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- begin:home-slider -->
      <div id="home-slider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#home-slider" data-slide-to="0" class="active"></li>
          <li data-target="#home-slider" data-slide-to="1" class=""></li>
          <li data-target="#home-slider" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img src="images/mt-0017-about-slider1.jpg"  alt="mt-0017-about-slider1.jpg"/>
            <div class="carousel-caption hidden-xs">
            </div>
          </div>
          <div class="item">
           <img src="images/mt-0017-about-slider2.jpg"  alt="mt-0017-about-slider2.jpg"/>
            <div class="carousel-caption hidden-xs">
           
            </div>
          </div>
          <div class="item">
           <img src="images/mt-0017-about-slider3.jpg"  alt="mt-0017-about-slider3.jpg"/>
            <div class="carousel-caption hidden-xs">
           
            </div>
          </div>
        </div>
        <a class="left carousel-control" href="#home-slider" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="right carousel-control" href="#home-slider" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </div>
      <!-- end:home-slider -->


      <!-- begin:new-arrival -->
      <div class="row">
        <div class="col-md-12">
          <div class="page-header">
            <h2 align="center">Serving your health with excellence!</h2>
             <h4 align="center">We dedicate our work to helping you live a healthy life</h4>
          </div>
        </div>
      </div>

      <div class="row product-container">
        <div class="col-md-4 col-sm-4 col-xs-4">
          <div class="thumbnail product-item">
            <a href="#"><img alt="" src="images/mt-0017-about-icon1.png" /></a>
            <div class="caption">
              <h5>Medical Checkup</h5>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4">
          <div class="thumbnail product-item">
            <a href="#"><img alt="" src="images/mt-0017-about-icon2.png"/></a>
            <div class="caption">
              <h5>Diseases</h5>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-4">
          <div class="thumbnail product-item">
            <a href="#"><img alt="" src="images/mt-0017-about-icon3.png" /></a>
            <div class="caption">
              <h5>Treatment</h5>
            </div>
          </div>
        </div>
      </div>
      <!-- end:new-arrival -->

      <!-- begin:random-product -->
      <div class="row">
        <div class="col-md-12">
          <div class="page-header">
            <h2 align="center">The best of professionals</h2>
            <h4 align="center">We are here to help your body, mind and spirit!</h4>
          </div>
        </div>
      </div>

      <div class="row product-container">
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="#"><img alt="" src="images/mt-0017-about-team1.jpg" /></a>
            <div class="caption">
              <h5>Helen Tompson</h5>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="#"><img alt="" src="images/mt-0017-about-team2.jpg" /></a>
            <div class="caption">
              <h5>Alan Smith</h5>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="#"><img alt="" src="images/mt-0017-about-team3.jpg" /></a>
            <div class="caption">
              <h5>Jessica Priston</h5>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail product-item">
            <a href="#"><img alt="" src="images/mt-0017-about-team4.jpg" /></a>
            <div class="caption">
              <h5>Marta Healy</h5>
            </div>
          </div>
        </div>
      </div>
      <!-- end:random-product -->

</asp:Content>

