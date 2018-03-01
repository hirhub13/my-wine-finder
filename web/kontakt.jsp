<%-- 
    Document   : kontakt
    Created on : 09.10.2017, 20:53:21
    Author     : hirhu
--%>

<%@page import="java.util.List"%>
<%@page import="database.DB_Access"%>
<%@page import="java.util.LinkedList"%>
<%@page import="beans.Wine"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="style/main.css" />
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <link href="style/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-latest.js"></script>    
    </head>
    <body style="background-image: url(images/bg_neu.jpg)">
        <header id="header">
            <div class="inner">
                <a href="webseite.jsp" class="logo"><strong>MyWineFinder</strong></a>
                <nav id="nav">
                    <a href="webseite.jsp">Home</a>
                    <a href="WeißServlet">Weißweine</a>
                    <a href="RotServlet">Rotweine</a>
                    <a href="BioServlet">Bioweine</a>
                    <a href="rebsorten.jsp">Rebsorten</a>
                    <a href="speisen.jsp">Speisen</a>
                    <a href="ueberuns.jsp">Über uns</a>
                    <a href="kontakt.jsp">Kontakt</a>
                </nav>
                <a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
            </div>
        </header>

        <!-- Banner -->
        <section id="banner">
            <div class="inner">
                <header>
                    <h1>Kontakt</h1>
                </header>
                <!-- Scripts -->



                <div style="margin-top: 4%; margin-left: 10%; margin-right: 10%; text-align: center; " class="middle-box">


                    <div class="menu-kontakt">
                        <iframe style="width: 60vw; height: 45vw;"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2731.1478273731486!2d15.539077315571879!3d46.80139387913951!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476fa4c034e30bd7%3A0xb607c442566444de!2sHTBLA+Kaindorf!5e0!3m2!1sde!2sat!4v1510825365546" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>


                    <div class="left-topic-desc-kontakt" style="text-align: center">
                        <div>
                            <ul style="list-style-type: none; padding: 0;">
                                 <div style="margin-left: 35%; margin-right: 35%; padding-top: 2%; padding-bottom: 2%; background-color: #535353; color: white; width: 30%; text-align: center;">
                                <li style="margin-top: 3%;" >
                                    <img style="width:5%; height:5%;" src="style/images/icons/EmailIcon.png" alt="" />
                                    <a href="https://www.google.com/gmail/" target="_blank" style="color: red; font-weight: bold; font-size: 100%; margin-left: 3%;">mywine-finder@gmx.at</a>

                                </li>
                                <li style="margin-top: 3%;">
                                    <img style="width:5%; height:5%;" src="style/images/icons/PhoneIcon.png" alt="" />
                                    <a href="#"  style="color: white; font-weight: bold; text-decoration: none; font-size: 100%; margin-left: 3%;">+43 664 1151632</a>

                                </li>
                                <li style="margin-top: 3%;" >
                                    <img style="width:5%; height:5%;" src="style/images/icons/FacebookIcon.png" alt="" />
                                    <a href="https://de-de.facebook.com/mywinefinder/" target="_blank" style="color: #3b5998; font-weight: bold; font-size: 100%; margin-left: 3%;">www.facebook.com/mywinefinder</a>

                                </li> <li style="margin-top: 3%;" >
                                    <img style="width:50px; height:50px;" target="_blank" src="style/images/icons/TwitterIcon.png" alt="" />
                                    <a href="https://www.twitter.com/mywinefinder" https: style="color: #00aced; font-weight: bold; font-size: 100%; margin-left: 3%;">www.twitter.com/mywinefinder</a>

                                </li>
                                 </div>
                                <li style="margin-top: 3%;" >
                                    <h4 style="text-align: center; color: white; font-size:2em;">Verfügbarkeit</h4>
                                    <div style="margin-left: 35%; margin-right: 35%; padding-top: 2%; padding-bottom: 2%; background-color: #535353; color: white; width: 30%; text-align: center;">
                                        <ul style="list-style-type: none;">
                                            <li><h6>Mo 8:00-13:00 Uhr</h6></li>
                                            <li><h6>Di 8:00-13:00 Uhr</h6></li>
                                            <li><h6>Mi 8:00-13:00 Uhr</h6></li>
                                            <li><h6>Do 8:00-13:00 Uhr</h6></li>
                                            <li><h6>Fr 8:00-13:00 Uhr</h6></li>
                                        </ul>     
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </center>

    <a href="#" class="scrollToTop" title="Go Top"><i class="sprite scrollarrow"></i></a>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script>
        // Scroll to top
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 100) {
                    $('.scrollToTop').fadeIn();
                } else {
                    $('.scrollToTop').fadeOut();
                }
            });
            //Click event to scroll to top
            $('.scrollToTop').click(function () {
                $('html, body').animate({scrollTop: 0}, 800);
                return false;
            });
        });
    </script>

    <!-- Footer -->
    <footer id="footer">
        <div class="inner">
            <a href="webseite.jsp" style="color:white" class="desby">Home</a>&nbsp;&nbsp;
            <span style="color:#dbdbdb">|</span>&nbsp;&nbsp;
            <a href="alleweine.jsp" style="color:white" class="desby">Alle Weine</a>&nbsp;&nbsp;
            <span style="color:#dbdbdb">|</span>&nbsp;&nbsp;
            <a href="ueberuns.jsp" style="color:white" class="desby">Über Uns</a>&nbsp;&nbsp;
            <span style="color:#dbdbdb">|</span>&nbsp;&nbsp;
            <a href="kontakt.jsp" style="color:white" class="desby">Kontakt</a>&nbsp;&nbsp;
            <div class="desby" style="padding-top:20px;margin-left:20px;font-size: xx-small"> Copyright &copy; 2003-2008 <a style="color:white" href="http://all-free-download.com/free-website-templates/">www.My Template.com.</a> All Rights Reserved.
                <p>&copy; Untitled. All rights reserved. Design: <a style="color:white" href="http://templated.co">TEMPLATED</a>. Demo Images: <a style="color:white" href="http://unsplash.com">Unsplash</a>.</p>

                <div class="desby">Designed By: <a  style="color:white" href="http://www.elegant-templates.com">Elegant Web Templates</a></div>
                <div class="copyright">
                    &copy; 2018 MyWineFinder
                </div>
            </div>
        </div>
    </footer>  

    <script src="style/java/jquery.min.js"></script>
    <script src="style/java/skel.min.js"></script>
    <script src="style/java/util.js"></script>
    <script src="style/java/main.js"></script>
    <script src="style/java/jquery.poptrox.min.js"></script>


</body>
</html>

