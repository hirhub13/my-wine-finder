<%-- 
    Document   : webseite
    Created on : 10.10.2017, 18:08:39
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
        <title>MyWineFinder</title>
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--<link href="style/menu.css" rel="stylesheet">-->
        <link href="style/font-awesome.css" rel="stylesheet">
        
        <!--<script src="style/java/popper.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>-->
    </head>
    <body>
        <!-- Header -->
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
                    <h1>MyWine Finder</h1>
                </header>
                <form method="post" action="AlleWeineServlet">
                    <div class="middle">
                        <div class="search">
                            <img style="width:200px; height:200px; margin-top: 35px;" src="style/images/Logo.PNG" alt="" />
                            <div class="search-text"> 
                                <input type="text" name="search" style="width: 100%" placeholder="Weine suchen ...">
                            </div>
                        </div>
                    </div>

                    <div class="hot-search">
                        <br>
                        <br>
                        <div class="hot-search-text" style="color:white"> Hier finden Sie zu jedem Gericht passende Weine ...</div>
                        <br>
                        <br>
                    </div>
                </form>
                <footer>
                    <a href="AlleWeineServlet" class="button">Zu den Weinen</a>
                </footer>
            </div>
        </section>
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