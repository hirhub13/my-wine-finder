<%-- 
    Document   : rot
    Created on : 09.10.2017, 19:56:11
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
        <title>Rot</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="style/main.css" />
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <link href="style/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <script type="text/javascript" src="style/java/error.js"></script>
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
                    <h1>Bioweine</h1>
                </header>

                <form method="post" action="BioServlet">
                    <div class="middle">
                        <div class="search">
                            <div class="search-text"> 
                                <input type="text" style="color:white; width:100% " name="search" placeholder="Bioweine suchen ..." value="<%= request.getParameter("search") == null ? "" : request.getAttribute("search")%>">
                            </div>
                        </div>
                    </div>






                    <div class="middle-box" style="margin-bottom: 12%;">
                        <div class="left-topic-desc" style="text-align: center">
                            <br>
                            <br>
                            <br>


                            <select class="hot-search-text1" name="cb" onchange="this.form.submit()">
                                <option class="hot-search-text">Sortieren</option>
                                <option <%=request.getAttribute("sort") != null && request.getAttribute("sort").equals("preisauf") ? "selected" : ""%> value="preisauf" class="hot-search-text" style="font-size: 5%">Preis (&#8593;)</option>
                                <option <%=request.getAttribute("sort") != null && request.getAttribute("sort").equals("preisab") ? "selected" : ""%> value="preisab" class="hot-search-text">Preis (&#8595;)</option>
                                <option <%=request.getAttribute("sort") != null && request.getAttribute("sort").equals("jahrgangauf") ? "selected" : ""%> value="jahrgangauf" class="hot-search-text">Jahrgang (&#8593;)</option>
                                <option <%=request.getAttribute("sort") != null && request.getAttribute("sort").equals("jahrgangab") ? "selected" : ""%> value="jahrgangab" class="hot-search-text">Jahrgang (&#8595;)</option>
                                <option <%=request.getAttribute("sort") != null && request.getAttribute("sort").equals("alkoholgehaltauf") ? "selected" : ""%> value="alkoholgehaltauf" class="hot-search-text">Alkoholgehalt (&#8593;)</option>
                                <option <%=request.getAttribute("sort") != null && request.getAttribute("sort").equals("alkoholgehaltab") ? "selected" : ""%> value="alkoholgehaltab" class="hot-search-text">Alkoholgehalt (&#8595;)</option>
                            </select>


                            <br>
                            <br>
                            <br>

                            <div style="overflow-x: auto;"> 

                                <table border="0" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th style=" width:15%; text-align: center"></th>
                                            <th style="width:22%; text-align: center">Weinname</th>
                                            <th style="width:15%; text-align: center">Weingut</th>
                                            <th style="width:15%; text-align: center">Jahrgang</th>
                                            <th style="width:10%; text-align: center">Preis</th>
                                            <th style="width:15; text-align: center">Link</th>
                                            <th style="width:13%; text-align: center">vol.</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<Wine> weine = (LinkedList<Wine>) request.getAttribute("liste");
                                            List<Wine> filterwein = (LinkedList<Wine>) request.getAttribute("filterList");
                                            List<Wine> weinliste = (LinkedList<Wine>) request.getAttribute("weinliste");
                                            if (filterwein == null) {

                                                for (Wine we : weine) {
                                                    //out.println("<tr><td class='sale-desc' sytle='color: black' align = 'center'>" + w.getWeinid() + "</td>");
                                                    out.println("<tr><td class='sale-desc' sytle='color: black;'><a class='wein' href='beschreibung.jsp?weinid=" + we.getWeinid() + "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + we.getWeinid() + ".png'></a></td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'><a class='wein'sort href='beschreibung.jsp?weinid=" + we.getWeinid() + "' name='click'>" + we.getWeinname() + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", we.getWeingut()) + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%d", we.getJahrgang()) + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>€ " + String.format("%1.2f", we.getPreis()) + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'><a class='wein' style='text-decoration: underline;' href=" + String.format("%s", we.getWeinlink()) + " target='_blank'>Website</td>");
                                                    //out.println("<td class='sale-desc' sytle='color: black' style='text-align: center'; width = '10%'>  <a href = '" + we.getWeinlink() + "'>Website</a></td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%1.2f", we.getAlkoholgehalt()) + " %</td></tr>");
                                                }

                                            } else if (filterwein != null) {
                                                for (int i = 0; i < filterwein.size(); i++) {
                                                    out.println("<tr><td class='sale-desc' sytle='color: black;'><a href='beschreibung.jsp?weinid=" + filterwein.get(i).getWeinid() + "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + filterwein.get(i).getWeinid() + ".png'></a></td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'><a class='wein' href='beschreibung.jsp?weinid=" + filterwein.get(i).getWeinid() + "' name='click'>" + filterwein.get(i).getWeinname() + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", filterwein.get(i).getWeingut()) + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%d", filterwein.get(i).getJahrgang()) + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>€ " + String.format("%1.2f", filterwein.get(i).getPreis()) + "</td>");
                                                    //out.println("<td class='sale-desc' sytle='color: black' style='text-align: center'; width = '10%'>  <a href = '" + filterwein.get(i).getWeinlink() + "'>Website</a></td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'><a href=" + String.format("%s", filterwein.get(i).getWeinlink()) + " target='_blank'>Website</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'> " + String.format("%1.2f", filterwein.get(i).getAlkoholgehalt()) + " %</td></tr>");
                                                }
                                            } else {
                                                /*if (filterwein != null) {
                                                    for (Wine w : filterwein) {
                                                        //out.println("<tr><td class='sale-desc' sytle='color: black' align = 'center'>" + w.getWeinid() + "</td>");
                                                        out.println("<tr><td class='sale-desc' sytle='color: black;'><a href='beschreibung.jsp?weinid=" + w.getWeinid() + "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + w.getWeinid() + ".png'></a></td>");
                                                        out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + w.getWeinname() + "</td>");
                                                        out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", w.getWeingut()) + "</td>");
                                                        out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%d", w.getJahrgang()) + "</td>");
                                                        out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>€ " + String.format("%1.2f", w.getPreis()) + "</td>");
                                                        //out.println("<td class='sale-desc' sytle='color: black' style='text-align: center'; width = '10%'>  <a href = '" + w.getWeinlink() + "'>Website</a></td>");
                                                        out.println("<td class='sale-desc' sytle='color: black; text-align: left;'><a href=" + String.format("%s", w.getWeinlink()) + " target='_blank'>" + String.format("%s", w.getWeinlink()) + "</td>");
                                                        out.println("<td class='sale-desc' sytle='color: black; text-align: center;'> " + String.format("%1.2f", w.getAlkoholgehalt()) + " %</td></tr>");
                                                    }
                                                } else {*/
                                                for (Wine w : weinliste) {
                                                    //out.println("<tr><td class='sale-desc' sytle='color: black' align = 'center'>" + w.getWeinid() + "</td>");
                                                    out.println("<tr><td class='sale-desc' sytle='color: black;'><a class='wein' href='beschreibung.jsp?weinid=" + w.getWeinid() + "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + w.getWeinid() + ".png'></a></td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + w.getWeinname() + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", w.getWeingut()) + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%d", w.getJahrgang()) + "</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>€ " + String.format("%1.2f", w.getPreis()) + "</td>");
                                                    //out.println("<td class='sale-desc' sytle='color: black' style='text-align: center'; width = '10%'>  <a href = '" + w.getWeinlink() + "'>Website</a></td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: left;'><a href=" + String.format("%s", w.getWeinlink()) + " target='_blank'>Website</td>");
                                                    out.println("<td class='sale-desc' sytle='color: black; text-align: center;'> " + String.format("%1.2f", w.getAlkoholgehalt()) + " %</td></tr>");
                                                }
                                                //}
                                            }
                                        %>
                                    </tbody>
                                </table> 

                            </div>
                        </div>
                        <br>
                        <br>
                        <div style='background-color: blue;' id = "err" name="err"></div>
                    </div>
                </form>

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