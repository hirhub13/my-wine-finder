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
import java.util.LinkedList;
import java.util.List;
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
@WebServlet(name = "VerkäuferServlet", urlPatterns = {"/VerkäuferServlet"})
public class VerkäuferServlet extends HttpServlet {

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
            weinfav = (LinkedList<Wine>) dba.getWeine();
            weine2 = (LinkedList<Wine>) dba.getWeißweine();
            this.getServletContext().setAttribute("liste", weine);
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
     * as Handles the HTTP <code>GET</code> method.
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
        String vorname = request.getParameter("vorname").trim();
        String nachname = request.getParameter("nachname").trim();
        String email = request.getParameter("email").trim();
        int anz = Integer.parseInt(request.getParameter("anz"));
        int weinid = Integer.parseInt(request.getParameter("weinid"));
        request.setAttribute("vorname", vorname);
        request.setAttribute("nachname", nachname);
        request.setAttribute("email", email);
        request.setAttribute("anz", anz);
        request.setAttribute("weinid", weinid);
        RequestDispatcher rd = request.getRequestDispatcher("verkäufer.jsp");
        rd.forward(request, response);
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
