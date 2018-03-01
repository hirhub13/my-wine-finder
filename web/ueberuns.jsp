<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Conventional 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20130128

-->
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="style/main.css" />
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
        <link href="style/font-awesome.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-latest.js"></script>    
           <link href="style/default.css" rel="stylesheet" type="text/css" media="all" />

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
                    
                </header>
                 
                
            <div id="wrapperDef">
               
                <%--<div  class="container1" style="margin-left: auto; margin-right: auto; width: 100%; height: 40%;  margin-bottom: 3%;"><img style="width: 60%; height:40%" src="style/images/Profilfotos/Gruppenfoto.png" width="750" height="250" alt="" /></div>--%>
                <div id="page" class="container1" style="margin-left: auto; width: 100%; height: 100%; margin-right: auto;">
                    <div id="content"  style="left:50%; width: 100%; height: 100%;">
                        <div  class="container1" style="margin-left: auto; margin-right: auto; width: 100%; height: 40%;  margin-bottom: 3%;"><img style="width: 60%; height:40%" src="style/images/Profilfotos/Gruppenfoto.png" width="750" height="250" alt="" /></div>
                        <div id="box1" style="margin-left: auto; margin-right: auto; ">
                            <h2 class="title" style="font-size:2.5vw;">Unsere Vision</h2>
                            <p style="font-size: 1.2vw;">Mit unserer Website soll es vereinfacht werden, Weine aus unserer Region zu finden.
                                Außerdem soll es für jene eine Hilfe sein, die sich mit Wein nicht so gut auskennen bzw.
                                sich mit dem Thema Wein mehr auseinandersetzen möchten. Wenn man zum Beispiel eine
                                bestimmte Speise kochen möchte und hierzu einen passenden Wein sucht, ist unsere Website
                                die geeignete Hilfe. Oder wenn man sich einfach nur über bestimmte Rebsorten informieren möchte
                                ist unsere Website das richtige Nachschlageblatt.Jedoch nicht nur Endnutzer soll diese Website dienen,
                                sondern auch Winzer der einzelnen Weine. Während die Beschreibung der einzelnen Weine den Link
                                zu dem jeweiligen Winzer enthält, kann der Weininteressent den Winzer kontaktieren, was eine Werbung für diesen bewirkt.
                            </p>    
                        </div>
                        <div>
                            <ul class="style1" >
                                <li class="first1">
                                    <h3 style="text-align: left; font-size: 1vw;"><em><img src="style/images/Profilfotos/Hugo.jpg" alt="" width="13%" height="13%" class="alignleft border" /></em>Hugo Hirzer</h3>
                                    <p style="text-align: left; font-size: 0.8vw;">Gesamtkoordinator, Programmierer</p>
                                    <p><a href="hugo.jsp" class="button-style" style="text-align: center; width: 17%; height: 7%; font-size: 0.8vw;">Mehr lesen</a></p>
                                </li>
                                <li>
                                    <h3 style="text-align: left; font-size: 1vw;"><em><img src="style/images/Profilfotos/Marcel.jpg" alt="" width="13%" height="13%" class="alignleft border" /></em>Marcel Lirzer</h3>
                                    <p style="text-align: left; font-size: 0.8vw;">Projektplannung, Schriftführer</p>
                                    <p><a href="marcel.jsp" class="button-style" style="text-align: center; width: 17%; height: 7%; font-size: 0.8vw;">Mehr lesen</a></p>
                                </li>
                                <li>
                                    <h3 style="text-align: left; font-size: 1vw;"><em><img src="style/images/Profilfotos/Patrick.jpg" alt="" width="13%" height="13%" class="alignleft border" /></em>Patrick Trummer</h3>
                                    <p style="text-align: left; font-size: 0.8vw;">Projektplannung, Datenbank, Designer</p>
                                    <p><a href="patrick.jsp" class="button-style" style="text-align: center; width: 17%; height: 7%; font-size: 0.8vw;">Mehr lesen</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
            </div>
        </section>

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
