<%-- 
    Document   : beschreibungreb
    Created on : 29.11.2017, 16:02:43
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>MyWineFinder</title>
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--<link href="style/menu.css" rel="stylesheet">-->
        <link href="style/font-awesome.css" rel="stylesheet">
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
            
            <%
                DB_Access dba = DB_Access.getInstance();
                int sorteid = Integer.parseInt(request.getParameter("sorteid"));
                Rebsorte reb = dba.getRebsortenBeschreibung(sorteid);

                //out.println("<p style='text-align: left;'><a href='beschreibung.jsp?weinid=" + liste.get(i).getSorteID()+ "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + liste.get(i).getSorteID()+ ".png'></a></p>");
                //out.println("<div style='width: 100%; height:100%; float: right; text-align: left;'>");
                out.println("<h1 style='text-align: left;'>" + String.format("%s", reb.getBezeichnung()) + "</h1>");
                out.println("<p style='text-align: left;font-size: 2em;'><b style='color:black'>" + String.format("%s", reb.getÜberschrift1()) + "</b></p>");
                out.println("<p style='text-align: left;font-size: 1.3em;'>" + String.format("%s", reb.getText1()) + "</p>");
                //out.println("<br>");
                //out.println("<br>");
                out.println("<p style='text-align: left;font-size: 2em;'><b style='color:black'>" + String.format("%s", reb.getÜberschrift2()) + "</b></p>");
                out.println("<p style='text-align: left;font-size: 1.3em;'>" + String.format("%s", reb.getText2()) + "</p>");
                out.println("<p style='text-align: left;font-size: 2em;'><b style='color:black'>" + String.format("%s", reb.getÜberschrift3()) + "</b></p>");
                out.println("<p style='text-align: left;font-size: 1.3em;'>" + String.format("%s", reb.getText3()) + "</p>");
                out.println("<p style='text-align: left;font-size: 2em;'><b style='color:black'>" + String.format("%s", reb.getÜberschrift4()) + "</b></p>");
                out.println("<p style='text-align: left;font-size: 1.3em;'>" + String.format("%s", reb.getText4()) + "</p>");
                out.println("<p style='text-align: left;font-size: 2em;'><b style='color:black'>" + String.format("%s", reb.getÜberschrift5()) + "</b></p>");
                out.println("<p style='text-align: left; font-size: 1.3em;'>" + String.format("%s", reb.getText5()) + "</p>");
                out.println("<p style='text-align: left;font-size: 2em;'><b style='color:black'>" + String.format("%s", reb.getÜberschrift6()) + "</b></p>");
                out.println("<p style='text-align: left;font-size: 1.3em;'>" + String.format("%s", reb.getText6()) + "</p>");
                out.println("<p style='text-align: left;font-size: 2em;'><b style='color:black'>" + String.format("%s", reb.getÜberschrift7()) + "</b></p>");
                out.println("<p style='text-align: left;font-size: 1.3em;'>" + String.format("%s", reb.getText7()) + "</p>");
                //out.println("</div>");

            %>
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