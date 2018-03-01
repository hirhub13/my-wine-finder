<%-- 
    Document   : speisenuebersicht
    Created on : 09.02.2018, 11:47:32
    Author     : hirhu
--%>

<%@page import="beans.Rebsorte"%>
<%@page import="beans.Speise"%>
<%@page import="java.util.List"%>
<%@page import="database.DB_Access"%>
<%@page import="java.util.LinkedList"%>
<%@page import="beans.Wine"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Speisen</title>
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <link href="style/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </head>
    <body> <head>
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
                <div>
                    <div class="w3-container" style="text-align: center; width: 60%; margin-left: 20%; margin-right: 20%;overflow-x: auto;">
                        <%--<button onclick="myFunction('Demo1')"  style="width:70%">1</button>--%>
                        <%
                            DB_Access dba = DB_Access.getInstance();
                            List<Speise> speisenname = dba.getSpeisenBeschreibung(request.getParameter("überkategorie"));
                            out.println("<h1>"+request.getParameter("überkategorie")+"</h1>");
                            for (int y = 0; y < speisenname.size(); y++) {

                                List<Wine> weinlist = dba.getWeinezuSpeisen(speisenname.get(y).getSpeiseID());

                                out.println("<details  style='text-align: left;'>");
                                out.println("<summary>" + speisenname.get(y).getBezeichnung() + "</summary>");
                                out.println("<table border='0' style='width: 100%;align-self: center' class='tablespeisen'><thead><tr>");

                                out.println("<th style='width:15%;'></th>");
                                out.println("<th style='width:22%;'>Weinname</th>");
                                //  out.println("<th style='width:15%;'>Sorte</th>");
                                out.println("<th style='width:15%;'>Weingut</th>");
                                out.println("<th style='width:12%;'>Jahrgang</th>");
                                out.println("<th style='width:10%;'>Preis</th>");
                                out.println("<th style='width:15%;'>vol.</th>");
                                out.println("</tr></thead><tbody>");

                                for (int i = 0; i < weinlist.size(); i++) {
                                    out.println("<tr><td class='sale-desc' sytle='color: black;'><a href='beschreibung.jsp?weinid=" + weinlist.get(i).getWeinid() + "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + weinlist.get(i).getWeinid() + ".png'></a></td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'><a style='color:white; text-decoration: none;' href='beschreibung.jsp?weinid=" + weinlist.get(i).getWeinid() + "' name='click'>" + weinlist.get(i).getWeinname() + "</td>");
                                    //out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", weinlist.get(i).getSorte()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", weinlist.get(i).getWeingut()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%d", weinlist.get(i).getJahrgang()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>€ " + String.format("%1.2f", weinlist.get(i).getPreis()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'> " + String.format("%1.2f", weinlist.get(i).getAlkoholgehalt()) + " %</td></tr>");
                                }
                                out.println("</tbody></table>");
                                //out.println("</div>");
                                out.println("</details>");
                                out.println("<br>");

                                //out.println("<button onclick=\"myFunction('Demo1')\"  id=" + speisenname.get(y).getSpeiseID() + " style='width:70%'>" + speisenname.get(y).getBezeichnung() + "</button>");
                                //out.println("<button onclick='" + speisenname.get(y).getSpeiseID() + "'  id=" + speisenname.get(y).getSpeiseID() + " style='width:70%'>" + speisenname.get(y).getSpeiseID() + "</button>");
                                //List<Wine> weinlist = dba.getWeinezuSpeisen(speisenname.get(y).getSpeiseID());

                                /*
                                out.println("<div id='Demo1' class='w3-container w3-hide'>");
                                out.println("<table border='0' style='width: 100%;align-self: center' class='tablespeisen'><thead><tr>");

                                out.println("<th style='width:8%;'></th>");
                                out.println("<th style='width:22%;'>Weinname</th>");
                                out.println("<th style='width:20%;'>Sorte</th>");
                                out.println("<th style='width:15%;'>Weingut</th>");
                                out.println("<th style='width:15%;'>Jahrgang</th>");
                                out.println("<th style='width:10%;'>Preis</th>");
                                out.println("<th style='width:10%;'>vol.</th>");
                                out.println("</tr></thead><tbody>");

                                for (Wine we : weinlist) {
                                    out.println("<tr><td class='sale-desc' sytle='color: black;'><a href='beschreibung.jsp?weinid=" + we.getWeinid() + "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + we.getWeinid() + ".png'></a></td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + we.getWeinname() + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", we.getSorte()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", we.getWeingut()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%d", we.getJahrgang()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>€ " + String.format("%1.2f", we.getPreis()) + "</td>");
                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'> " + String.format("%1.2f", we.getAlkoholgehalt()) + " %</td></tr>");
                                }
                                out.println("</tbody></table>");
                                out.println("</div>");*/
                            }

                        %>
                    </div> 
                </div>
            </div>
        </section>


        <script>
            function myFunction(id) {
                var x = document.getElementById(id);
                if (x.className.indexOf("w3-show") === -1) {
                    x.className += " w3-show";
                } else {
                    x.className = x.className.replace(" w3-show", "");
                }
            }
        </script>

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


        <script src="style/java/jquery.min.js"></script>
        <script src="style/java/skel.min.js"></script>
        <script src="style/java/util.js"></script>
        <script src="style/java/main.js"></script>

    </body>
</html>

