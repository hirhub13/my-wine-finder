<%-- 
    Document   : warenkorb
    Created on : 09.01.2018, 12:02:39
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
        <title>Kontaktseite</title>
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <link href="style/menu.css" rel="stylesheet">
        <link href="style/font-awesome.css" rel="stylesheet">
        <script type="text/javascript" src="style/java/bestell.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </head>
    <body>
        <% LinkedList<Wine> weine = (LinkedList<Wine>) application.getAttribute("liste");%>
    <center>
        <div class="wrapperWeb">
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

            <!-- Scripts -->
            <script src="style/js/jquery.min.js"></script>
            <script src="style/js/jquery.poptrox.min.js"></script>
            <script src="style/js/skel.min.js"></script>
            <script src="style/js/main.js"></script>
        </div>
        <div class="hot-search">
            <br>
            <div class="hot-search-text"> Hier finden Sie zu jedem Gericht passende Weine ...</div>
            <br>
        </div>



        <div class="middle-box">
            <div class="menu2" style="width: 30%">
                <p></p>
            </div>


            <div class="left-topic-desc2" style="width: 50%">
                <div class="logo1" style="width: 100%"><strong> Verkäufer wurde kontaktiert</strong></div>
                <div>
                    <br>
                    <br>
                    <form action="VerkäuferServlet" method="post">
                        <p><%= request.getParameter("vorname") == null ? "" : request.getAttribute("vorname")%></p>
                        <p><%= request.getParameter("nachname") == null ? "" : request.getAttribute("nachname")%></p>
                        <p><%= request.getParameter("email") == null ? "" : request.getAttribute("email")%></p>
                        <p><%= request.getParameter("anz") == null ? "" : request.getAttribute("anz")%></p>
                        <p><%= request.getParameter("weinid") == null ? "" : request.getAttribute("weinid")%></p>

                        <!-- <input type="submit" value="Versendet" name="versendet" /> -->
                   
                    <%
                        DB_Access dba = DB_Access.getInstance();
                        //int weinid = (int) request.getAttribute("weinid");
                        int weinid = Integer.parseInt(request.getParameter("weinid"));
                        Wine wine = dba.getWeinbeschreibung(weinid);
                        out.println("<p>E-Mail Adresse des Winzers: "+wine.getMail()+"</p>");
                    %>
                     </form><%--
                    
                        <%
                            //out.println("<form onSubmit=\"return bestelle();\">");
                            DB_Access dba = DB_Access.getInstance();
                            //int weinid = Integer.parseInt(request.getParameter("weinid"));
                            int weinid = (Integer) request.getAttribute("weinid");
                            //int weinid = (Integer) request.getAttribute("weinid");
                            List<Wine> liste = dba.getWeinbeschreibung(weinid);

                            for (int i = 0; i < liste.size(); i++) {
                                //out.println(weinid);
                                out.println("<table border='0' style='width: 100%'>");
                                out.println("<thead>");
                                out.println("<tr>");
                                out.println("<th style='width:8%;'></th>");
                                out.println("<th style='width:32%;'>Weinname</th>");
                                out.println("<th style='width:25%;'>Weingut</th>");
                                out.println("<th style='width:15%;'>Jahrgang</th>");
                                out.println("<th style='width:10%;'>Preis</th>");
                                out.println("<th style='width:10%;'>vol.</th>");
                                out.println("</tr>");
                                out.println("</thead>");
                                out.println("<tbody>");

                                out.println("<tr><td class='sale-desc' sytle='color: black;'><a href='beschreibung.jsp?weinid=" + liste.get(i).getWeinid() + "' name='click'><img style='width: 100%' src='" + getServletContext().getContextPath() + "/images/" + liste.get(i).getWeinid() + ".png'></a></td>");
                                out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + liste.get(i).getWeinname() + "</td>");
                                out.println("<td class='sale-desc' sytle='color: black; text-align: left;'>" + String.format("%s", liste.get(i).getWeingut()) + "</td>");
                                out.println("<td class='sale-desc' sytle='color: black; text-align: center;'>" + String.format("%d", liste.get(i).getJahrgang()) + "</td>");
                                out.println("<td class='sale-desc' sytle='color: black; text-align: center;'id='preis'>€ " + String.format("%1.0f", liste.get(i).getPreis()) + "</td>");
                                //out.println("<td class='sale-desc' sytle='color: black' style='text-align: center'; width = '10%'>  <a href = '" + we.getWeinlink() + "'>Website</a></td>");
                                out.println("<td class='sale-desc' sytle='color: black; text-align: center;'> " + String.format("%1.2f", liste.get(i).getAlkoholgehalt()) + " %</td></tr>");
                                out.println("</tbody></table> ");
                                out.println("<br><br><br><br><br><br><br>");

                                out.println("<br><br>");
                                //out.println("<h1>"+weine.get(i).getWeinid()+"</h1>");

                                //out.println("<p id='wein'>"+liste.get(i).getWeinid()+"</p>");
                                out.println("<br><br>");

                                
                                //out.println("</form>");

                                //out.println("<p style='text-align: left;'><a href='bestelluebersicht.jsp?weinid=" + liste.get(i).getWeinid() + "' name='click'><input type='submit' value='Verkäufer kontaktieren' name='btVerkauf'/></a></p>");
                            }

                            out.println("<form onclick=\"return bestelle();\">");
                            out.println("<h5>Vorname: </h5>");
                            out.println("<input type='text' name='vorname' id='vorname' value='' />");

                            out.println("<br><br>");
                            out.println("<h5>Nachname: </h5>");
                            out.println("<input type='text' name='nachname' id='nachname' value='' />");

                            out.println("<br><br>");
                            out.println("<h5>E-Mail: </h5>");
                            out.println("<input type='text' name='email' id='email' value='' />");

                            out.println("<br><br>");
                            out.println("<h5>Anzahl der Flaschen: </h5>");
                            out.println("<input type='text' name='anz' id='anz' value='1'/>");
                            
                            out.println("<input type='submit' value='Checken' name='checken'/>");

                            out.println("</form>");
%>
                    --%>



                    <div id="err" name="err" class="err"></div>
                    <div id="summe" name="summe" class="err"></div>
                    <br>
                    <br>
                </div>
            </div>



            <div class="body-wrapper" style="width: 20%">

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

