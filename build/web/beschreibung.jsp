<%-- 
    Document   : beschreibung
    Created on : 11.10.2017, 17:37:04
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
        <title>Beschreibung</title>
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <link href="style/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <script src="style/java/jquery.js"></script>
        <script src="style/java/custom.js"></script>
        <script src="style/java/bestell.js" type="text/javascript"></script>
    </head>
    <body style="background-image: url(images/bg_neu.jpg)">
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
        <section id="banner" style="background-color:transparent">
            <div class="inner" style="background-color:transparent">
                <header>
                    <h1>Weinbeschreibung</h1>
                </header>

                <%--<div style="text-align: center; margin-left: 5%; margin-right: 5%; width: 100%; background-color:transparent">--%>
                    <div style="width: 100%">
                <%
                    //out.println("<form action='WeißServlet' method='post'");
                    DB_Access dba = DB_Access.getInstance();
                    //int weinid = (Integer)request.getAttribute("weinid");
                    int weinid = Integer.parseInt(request.getParameter("weinid"));
                    request.setAttribute("weinid", weinid);
                    //out.println("jhgf" + weinid);
                    Wine wine = dba.getWeinbeschreibung(weinid);
                    out.println("<div style='width: 25%;float: left;'>");
                    out.println("<p style='text-align: center;'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + wine.getWeinid() + ".png'></p>");
                    out.println("</div>");

                    out.println("<div style='width: 35%; float: right; text-align: left;'>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Weinname: </b>" + wine.getWeinname() + "</p>");
                    //out.println("<p style='text-align: left;'><b>Sorte: </b>" + String.format("%s", wine.getSorte()) + "</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Weingut: </b>" + String.format("%s", wine.getWeingut()) + "</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Jahrgang: </b>" + String.format("%d", wine.getJahrgang()) + "</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Standort: </b>" + String.format("%s, %s %s", wine.getStrasse(), wine.getPlz(), wine.getOrt()) + "</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Bundesland: </b>" + String.format("%s", wine.getBundesland()) + "</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Preis: </b>€ " + String.format("%1.2f", wine.getPreis()) + "</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Webseite: </b><a href = '" + wine.getWeinlink() + "'>" + wine.getWeinlink() + "</a></td>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Alkoholgehalt: </b>" + String.format("%1.2f", wine.getAlkoholgehalt()) + " %</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Bewertung: </b>" + String.format("%s", wine.getBewertung()) + "</p>");
                    out.println("<p style='text-align: left; font-size:1.5em;'><b style='color:black'>Weinbeschreibung: </b>" + String.format("%s", wine.getBeschreibung()) + "</p>");
                    out.println("</div>");

                    //request.setAttribute("weinid", weinid);
                    //out.println("</form>");
%>
                </div>
                
                <div style="width: 100%">
                    <form method="post" action="VerkäuferServlet" id="formeingabe">
                        <details  style="text-align: left; font-size: 1.5em;">
                            <summary>Verkäufer kontaktieren</summary>
                            <h5 style="color:white">Vorname: </h5>
                            <input style="width: 75%; height:10%" type="text"  name="vorname" id="vorname" value="<%=request.getParameter("vorname") == null ? "" : request.getParameter("vorname")%>"/>
                            <br><br>
                            <h5 style="color:white">Nachname: </h5>
                            <input style="width: 75%; height:10%" type="text" name="nachname" id="nachname" value="<%=request.getParameter("nachname") == null ? "" : request.getParameter("nachname")%>" />
                            <br><br>
                            <h5 style="color:white">E-Mail: </h5>
                            <input style="width: 75%; height:10%" type="text" name="email" id="email" value="<%=request.getParameter("email") == null ? "" : request.getParameter("email")%>" />
                            <br><br>
                            <h5 style="color:white">Anzahl der Flaschen: </h5>
                            <input style="width: 75%; height:10%" type="text" name="anz" id="anz" value="<%=request.getParameter("anz") == null ? "" : request.getParameter("anz")%>" />
                            <br>
                            <input type="button" value="Jetzt E-Mail versenden" name="emailversenden" onclick="bestelle()"/>
                            <div id="err" name="err" class="err"></div>
                            <input type="hidden" name="weinid" value="<%=weinid%>" readonly="readonly" />
                        </details>
                    </form>
                </div>
                <%--</div>--%>
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

        <script>
            function berechne() {
                var x = document.getElementById("anz").value;
                if (x !== "Auswahl")
                {
                    document.getElementById("preisgesch").innerHTML = "Geschätzter Preis für " + x + " Flaschen: " + x * 10 + "€";
                }
            }
        </script>

        <%--<script>
            function bestelle()
            {
                var okay = true;
                var errMess = "";
                var vorname = document.getElementById("vorname").value;
                var nachname = document.getElementById("nachname").value;
                var email = document.getElementById("email").value;
                var anz = document.getElementById("anz").value;
                if (vorname.trim() === "")
                {
                    okay = false;
                    errMess = "Bitte einen Vornamen eingeben!";
                }

            if (nachname.trim() === "")
            {
                okay = false;
                errMess = "Bitte einen Nachnamen eingeben!";
            }

            if (email.trim() === "")
            {
                okay = false;
                errMess = "Bitte eine E-Mail eingeben!";
            }

            if (isNaN(anz))
            {
                okay = false;
                errMess = "Bitte eine Anzahl eingeben!";
            }

            document.getElementById("err").innerHTML = errMess;
            return okay;
        }
    </script>--%>

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