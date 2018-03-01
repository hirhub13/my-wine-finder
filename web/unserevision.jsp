<%-- 
    Document   : unserevision
    Created on : 09.10.2017, 20:50:38
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Unsere Vision</title>
        <link href="style/style_old.css" rel="stylesheet" type="text/css">
        <link href="style/menu.css" rel="stylesheet">
        <link href="style/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </head>
    <body>
    <center>
        <div class="wrapper" style="background-color: white">
            <header>
                <div class="container">

                    <div class="navbar navbar-static-top">

                        <div class="navigation" style="line-height:30px">

                            <nav>
                                <ul class="nav topnav bold">
                                    <li>
                                        <a href="webseite.jsp">Home</a>
                                    </li>

                                    <li class="dropdown">
                                        <a href="WeißServlet">Weine <i class="icon-angle-down"></i></a>
                                        <ul style="display: none;" class="dropdown-menu bold">
                                            <li><a href="WeißServlet">Weißweine</a></li>
                                            <li><a href="RotServlet">Rotweine</a></li>
                                            <li><a href="BioServlet">Bioweine</a></li>
                                        </ul>
                                    </li>

                                    <li>
                                        <a href="rebsorten.jsp">Rebsorten</a>
                                    </li>

                                    <li>
                                        <a href="speisen.jsp">Speisen</a>
                                    </li>

                                    <li>
                                        <a href="ueberuns.jsp">Über Uns</a>
                                    </li>

                                    <li>
                                        <a href="unserevision.jsp">Unsere Vision</a>
                                    </li>

                                    <li>
                                        <a href="kontakt.jsp">Kontakt</a>
                                    </li>

                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>

            <script src="style/java/jquery.js"></script>
            <script src="style/java/custom.js"></script>
        </div>

        <div class="hot-search">
            <br>
            <div class="hot-search-text"> Hier finden Sie zu jedem Gericht passende Weine ...</div>
            <br>
        </div>



        <div class="middle-box">
            <div class="menu">

            </div>


            <div class="left-topic-desc" style="text-align: center">

            </div>


            <div class="body-wrapper">

            </div>
        </div>
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
</body>
</html>