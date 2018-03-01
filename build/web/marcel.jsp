<%-- 
    Document   : Marcel
    Created on : 22.02.2018, 21:07:46
    Author     : Patrick
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Hugo</title>
        <link href="style/style_old.css" rel="stylesheet" type="text/css">
        <link href="style/menu.css" rel="stylesheet">
        <link href="style/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </head>
    <body>
    <center>
        <div class="wrapperWeb" style="background-color: white">
            <header>
                <div class="container">

                    <div class="navbar navbar-static-top" style="font-size: 16; padding:4px; margin:4px;">

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

        



        <div class="middle-box">

            <h1>Marcel Lirzer</h1>
            <p style="margin-left: 8%; margin-right: 8%; text-align: left">Lorem ipsum dolor sit amet, delenit platonem ei sit, ne modus repudiare has, mei ut malorum contentiones. Vidit justo putent ei eos, ut tota clita vix. Eam ex causae tractatos, nam graecis invidunt delicata te, has delectus sadipscing ne. Alterum scripserit ius ad, probo elaboraret consectetuer eam ei. Usu quando aliquip ea.

Duo liber noluisse in, natum iudico omnium eos eu, erat audire pri et. Nam quod scripta torquatos et, cu solum placerat vis. Quod latine volumus vel eu, mei ad quaestio prodesset, cibo minim feugait at pri. Eum mutat mandamus ea.

Eam id feugait torquatos necessitatibus, omnium moderatius vim et. Ius ne aeque detraxit. Eros dissentiunt at pro, sit te diam lobortis. In nominavi comprehensam eos, mel ne verear apeirian dissentiunt.

Nusquam legendos elaboraret eam ut. Nam ei aeque decore prompta. Modus legimus eum no, ea nisl putant elaboraret ius. No eum dolore alienum eloquentiam.

Per ad feugiat electram. Vim case atomorum facilisis an, vel et aeque facilisi, nullam mollis graecis eum id. Qui ne detraxit forensibus reprehendunt, vim ad summo homero. Et saperet civibus insolens usu, nisl luptatum cu cum.

No vis erant scripserit eloquentiam, vis postulant maluisset patrioque id. No postea semper nec. Delectus placerat nam ei. Quo no impetus delicatissimi. Fierent deleniti fabellas id eum, qui ceteros appellantur no. Facilis iracundia argumentum vis no, bonorum utroque ei vim, nam iudico recusabo adipiscing ne.

Te usu veri scriptorem. Sit altera aliquid ei, sit at deleniti reformidans. An tantas quodsi facilisi mel, an lorem falli utroque sed. Vel aliquip accommodare id. Ne stet neglegentur eam, ea mea ceteros ancillae inciderint. In nam saepe labitur urbanitas.

Nostro ullamcorper conclusionemque eu eos, te sea purto lorem iusto. His id quaeque insolens postulant. Mei ei melius audire, ad movet detracto voluptaria per. Id pro habeo lorem docendi, ea pro placerat consequuntur. Quot primis id pri, ex eum vocibus iudicabit necessitatibus. Ut nusquam menandri pri.

Eum cu brute munere, nibh debet vis ea. Ne unum meis molestiae mel, ne ubique tibique consequuntur sit, an bonorum facilis vel. Novum causae pertinax sed ad. Amet menandri cu mei, no eum ullum fabellas scribentur, an quas oportere eum. Docendi legendos cum at.

Eu vim utroque honestatis consectetuer, no putant sapientem mei. Ne indoctum reformidans nec, postea singulis delicata an usu, est commodo iracundia deterruisset eu. Cibo assum salutatus has no. Etiam electram urbanitas ad mei, mea at eius constituto, eum ludus prompta ocurreret an.</p>
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