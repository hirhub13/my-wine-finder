/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Wine;
import database.DB_Access;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hirhu
 */
@WebServlet(name = "BeschreibungsServlet", urlPatterns = {"/BeschreibungsServlet"})
public class BeschreibungsServlet extends HttpServlet {

    private DB_Access dba;
    private LinkedList<Wine> weine = new LinkedList<>();
    private LinkedList<Wine> weinfav = new LinkedList<>();
    private LinkedList<Wine> weine2 = new LinkedList<>();
    private LinkedList<Wine> weinelist = new LinkedList<>();

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config); //To change body of generated methods, choose Tools | Templates.
        dba = DB_Access.getInstance();
        try {
            weine = (LinkedList<Wine>) dba.getWeine();
            System.out.println(weine);
            weinfav = (LinkedList<Wine>) dba.getWeine();
            weine2 = (LinkedList<Wine>) dba.getWeißweine();
            //this.getServletContext().setAttribute("liste", weine);
        } catch (Exception ex) {
            Logger.getLogger(WeißServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("beschreibung.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            request.setAttribute("liste", weine);
            request.setAttribute("fav", weinfav);
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            weine = (LinkedList<Wine>) dba.getWeine();
            request.setAttribute("liste", weine);
        } catch (Exception ex) {
            Logger.getLogger(WeißServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("post");
        String action = request.getParameter("search");
        String leereSuche = "";
        if (action != null) {
            String filter = request.getParameter("search");
            this.getServletContext().setAttribute("filterList", weine);
            Wine w = weine.isEmpty() ? null : weine.getFirst();
            if (w != null) {
                //request.setAttribute("liste", weine);
                request.setAttribute("weinid", w.getWeinid());
                request.setAttribute("sorte", w.getSorte());
                request.setAttribute("weinname", w.getWeinname());
                request.setAttribute("weingut", w.getWeingut());
                request.setAttribute("jahrgang", w.getJahrgang());
                request.setAttribute("preis", w.getPreis());
                request.setAttribute("weinlink", w.getWeinlink());
                request.setAttribute("alkoholgehalt", w.getAlkoholgehalt());
                request.setAttribute("beschreibung", w.getBeschreibung());
            } else {
                leereSuche = "Die Suche ergab leider keinen Treffer";
                request.setAttribute("leereSuche", leereSuche);
            }
        }

        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
