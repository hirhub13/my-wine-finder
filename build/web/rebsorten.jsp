<%-- 
    Document   : rebsorten
    Created on : 16.11.2017, 09:11:15
    Author     : hirhu
--%>

<%@page import="beans.Rebsorte"%>
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
                    <h1>Rebsorten</h1>
                </header>
                      <!-- Thumbnails -->
                    <section class="thumbnails">
                        <div>
                            <a href="beschreibungreb.jsp?sorteid=1">
                                <img src="style/images/rebsorten/Sauvignon blanc.jpg" alt="" />
                                <h3>Sauvignon Blanc</h3>
                            </a>
                            <a href="beschreibungreb.jsp?sorteid=2">
                                <img src="style/images/rebsorten/Chardonnay.jpg" alt="" />
                                <h3>Chardonnay</h3>
                            </a>
                            <a href="beschreibungreb.jsp?sorteid=3">
                                <img src="style/images/rebsorten/Merlot.jpg" alt="" />
                                <h3>Merlot</h3>
                            </a>
                          
                        </div>
                        <div>
                            <a href="beschreibungreb.jsp?sorteid=5">
                                <img src="style/images/rebsorten/Syrah.jpg" alt="" />
                                <h3>Syrah</h3>
                            </a>
                            <a href="beschreibungreb.jsp?sorteid=6">
                                <img src="style/images/rebsorten/Blaufraenkisch.jpg" alt="" />
                                <h3>Blaufränkisch</h3>
                            </a>
                            <a href="beschreibungreb.jsp?sorteid=7">
                                <img src="style/images/rebsorten/Cabernet_Sauvignon.jpg" alt="" />
                                <h3>Cabernet Sauvignon</h3>
                            </a>
                           
                            
                        </div>
                        <div>
                              <a href="beschreibungreb.jsp?sorteid=4">
                                <img src="style/images/rebsorten/Pinot Noir.jpg" alt="" />
                                <h3>Pinot Noir</h3>
                            </a>
                            
                             <a href="beschreibungreb.jsp?sorteid=8">
                                <img src="style/images/rebsorten/Champagner.jpeg" alt="" />
                                <h3>Champagner</h3>
                            </a>
                  <!--          <a href="beschreibungreb.jsp?sorteid=14">
                                <img src="style/images/rebsorten/CapeBordeaux.jpg" alt="" />
                                <h3>Grüner Veltliner</h3>
                            </a>
                            <a href="beschreibungreb.jsp?sorteid=28">
                                <img src="style/images/rebsorten/Curvee.jpg" alt="" />
                                <h3>Zweigelt</h3>
                            </a>
                            <a href="beschreibungreb.jsp?sorteid=26">
                                <img src="style/images/rebsorten/GemischterSatz.jpg" alt="" />
                                <h3>Weißburgunder</h3>
                            </a>
                            <a href="beschreibungreb.jsp?sorteid=19">
                                <img src="style/images/rebsorten/GemischterSatzReserve.jpg" alt="" />
                                <h3>Riesling</h3>
                            </a> -->
                        </div>

                    </section>

                </section>
            </div>
        
           
    

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
    
</body>
</html>
