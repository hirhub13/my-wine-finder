/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import beans.Rebsorte;
import beans.Speise;
import beans.Wine;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author hirhu
 */
public class DB_Access {

    private DB_PStatPool pStatPool;
    private static DB_Access theInstance;

    static {
        theInstance = new DB_Access();
    }

    public static DB_Access getInstance() {
        return theInstance;
    }

    private DB_CachedConnection dbcc;

    private DB_Access() {
        dbcc = DB_CachedConnection.getInstance();
        pStatPool = DB_PStatPool.getInstance();
    }

    public List<Wine> getWeine() throws Exception {
        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT *\n"
                + "FROM \"Wein\" "
                + "INNER JOIN \"Weingut\" USING(\"WeingutID\")\n"
                + "INNER JOIN \"Weintyp\" USING(\"TypID\");";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Wine> weinlist = new LinkedList<>();
        while (rs.next()) {
            int weinid = rs.getInt("weinID");
            String sorte = "Alle";
            String weinname = rs.getString("weinname");
            String weingut = rs.getString("bezeichnung");
            int jahrgang = rs.getInt("jahrgang");
            double preis = rs.getDouble("preis");
            String weinlink = rs.getString("link");
            double alkoholgehalt = rs.getDouble("alkoholgehalt");
            String beschreibung = rs.getString("beschreibung");
            String bewertung = rs.getString("bewertung");
            Wine wine = new Wine(weinid, sorte, weinname, weingut, jahrgang, preis, weinlink, alkoholgehalt, beschreibung, bewertung);
            weinlist.add(wine);

        }
        System.out.println("Weinlist");
        for (Wine wine : weinlist) {

            System.out.println(wine);
        }
        dbcc.releaseConnection(conn);
        return weinlist;
    }

    public List<Wine> getWeißweine() throws Exception {
        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT * FROM \"Wein\" INNER JOIN \"Weingut\" USING(\"WeingutID\")\n"
                + "INNER JOIN \"Weintyp\" USING(\"TypID\")\n"
                + "WHERE \"TypID\"=1;";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Wine> weinlist = new LinkedList<>();
        while (rs.next()) {
            int weinid = rs.getInt("weinID");
            String sorte = "Weiß";
            String weinname = rs.getString("weinname");
            String weingut = rs.getString("bezeichnung");
            int jahrgang = rs.getInt("jahrgang");
            double preis = rs.getDouble("preis");
            String weinlink = rs.getString("link");
            double alkoholgehalt = rs.getDouble("alkoholgehalt");
            String beschreibung = rs.getString("beschreibung");
            String bewertung = rs.getString("bewertung");
            Wine wine = new Wine(weinid, sorte, weinname, weingut, jahrgang, preis, weinlink, alkoholgehalt, beschreibung, bewertung);
            weinlist.add(wine);

        }
        System.out.println("Weinlist");
        for (Wine wine : weinlist) {

            System.out.println(wine);
        }
        dbcc.releaseConnection(conn);
        return weinlist;
    }

    public List<Wine> getRotweine() throws Exception {
        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT * FROM \"Wein\" INNER JOIN \"Weingut\" USING(\"WeingutID\")\n"
                + "INNER JOIN \"Weintyp\" USING(\"TypID\")\n"
                + "WHERE \"TypID\"=2;";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Wine> weinlist = new LinkedList<>();
        while (rs.next()) {
            int weinid = rs.getInt("weinID");
            String sorte = "Rot";
            String weinname = rs.getString("weinname");
            String weingut = rs.getString("bezeichnung");
            int jahrgang = rs.getInt("jahrgang");
            double preis = rs.getDouble("preis");
            String weinlink = rs.getString("link");
            double alkoholgehalt = rs.getDouble("alkoholgehalt");
            String beschreibung = rs.getString("beschreibung");
            String bewertung = rs.getString("bewertung");
            Wine wine = new Wine(weinid, sorte, weinname, weingut, jahrgang, preis, weinlink, alkoholgehalt, beschreibung, bewertung);
            weinlist.add(wine);

        }
        System.out.println("Weinlist");
        for (Wine wine : weinlist) {

            System.out.println(wine);
        }
        dbcc.releaseConnection(conn);
        return weinlist;
    }

    public List<Wine> getBioweine() throws Exception {
        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT * FROM \"Wein\" INNER JOIN \"Weingut\" USING(\"WeingutID\")\n"
                + "INNER JOIN \"Weintyp\" USING(\"TypID\")\n"
                + "WHERE \"TypID\"=3;";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Wine> weinlist = new LinkedList<>();
        while (rs.next()) {
            int weinid = rs.getInt("weinID");
            String sorte = "Bio";
            String weinname = rs.getString("weinname");
            String weingut = rs.getString("bezeichnung");
            int jahrgang = rs.getInt("jahrgang");
            double preis = rs.getDouble("preis");
            String weinlink = rs.getString("link");
            double alkoholgehalt = rs.getDouble("alkoholgehalt");
            String beschreibung = rs.getString("beschreibung");
            String bewertung = rs.getString("bewertung");
            Wine wine = new Wine(weinid, sorte, weinname, weingut, jahrgang, preis, weinlink, alkoholgehalt, beschreibung, bewertung);
            weinlist.add(wine);

        }
        System.out.println("Weinlist");
        for (Wine wine : weinlist) {

            System.out.println(wine);
        }
        dbcc.releaseConnection(conn);
        return weinlist;
    }

    public Wine getWeinbeschreibung(int weinid) throws SQLException, Exception {

        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        Wine wine = null;
        String sqlString = "";

        sqlString = "SELECT * FROM \"Wein\" INNER JOIN \"Weingut\" USING(\"WeingutID\")\n"
                + "WHERE \"WeinID\"=" + weinid + ";";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Wine> weinlist = new LinkedList<>();
        while (rs.next()) {

            String sorte = "Weiß";
            String weinname = rs.getString("weinname");
            String weingut = rs.getString("bezeichnung");
            int jahrgang = rs.getInt("jahrgang");
            double preis = rs.getDouble("preis");
            String weinlink = rs.getString("link");
            double alkoholgehalt = rs.getDouble("alkoholgehalt");
            String beschreibung = rs.getString("beschreibung");
            String bewertung = rs.getString("bewertung");
            String plz = rs.getString("plz");
            String ort = rs.getString("ort");
            String strasse = rs.getString("strasse");
            String bundesland = rs.getString("bundesland");
            String mail = rs.getString("mail");
            wine = new Wine(weinid, sorte, weinname, weingut, jahrgang, preis, weinlink, alkoholgehalt, beschreibung, bewertung, plz, ort, strasse, bundesland,mail);
        }
        dbcc.releaseConnection(conn);
        return wine;
    }

    public List<Wine> getWeingutzuWein(String weingut) throws SQLException, Exception {

        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT * \n"
                + "FROM \"Weingut\" we INNER JOIN \"Wein\" w USING(\"WeingutID\")\n"
                + "WHERE \"Bezeichnung\" = '" + weingut + "';";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Wine> weinlist = new LinkedList<>();
        while (rs.next()) {
            int weinid = rs.getInt("weinid");
            String sorte = "Weiß";
            String weinname = rs.getString("weinname");
            String weingutname = rs.getString("bezeichnung");
            int jahrgang = rs.getInt("jahrgang");
            double preis = rs.getDouble("preis");
            String weinlink = rs.getString("link");
            double alkoholgehalt = rs.getDouble("alkoholgehalt");
            String beschreibung = rs.getString("beschreibung");
            String bewertung = rs.getString("bewertung");
            Wine wine = new Wine(weinid, sorte, weinname, weingutname, jahrgang, preis, weinlink, alkoholgehalt, beschreibung, bewertung);
            weinlist.add(wine);

        }
        System.out.println("Weinlist");
        for (Wine wine : weinlist) {

            System.out.println(wine);
        }
        dbcc.releaseConnection(conn);
        return weinlist;
    }

    public List<Rebsorte> getRebsorten() throws SQLException, Exception {

        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT *\n"
                + "FROM \"Rebsorte\"\n"
                + "WHERE \"SorteID\" < 13;";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Rebsorte> rebsorten = new LinkedList<>();
        while (rs.next()) {

            int sorteID = rs.getInt("SorteID");
            String bezeichnung = rs.getString("Bezeichnung");
            Rebsorte reb = new Rebsorte(sorteID, bezeichnung);
            rebsorten.add(reb);

        }
        dbcc.releaseConnection(conn);
        return rebsorten;
    }

    public Rebsorte getRebsortenBeschreibung(int sorteID) throws SQLException, Exception {

        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";
        Rebsorte reb = null;

        sqlString = "SELECT *\n"
                + "FROM \"Rebsorte\"\n"
                + "WHERE \"SorteID\" = " + sorteID + ";";

        ResultSet rs = stat.executeQuery(sqlString);
       
        while (rs.next()) {

            String bezeichnung = rs.getString("Bezeichnung");
            String ueberschrift1 = rs.getString("Überschrift1");
            String text1 = rs.getString("Text1");
            String ueberschrift2 = rs.getString("Überschrift2");
            String text2 = rs.getString("Text2");
            String ueberschrift3 = rs.getString("Überschrift3");
            String text3 = rs.getString("Text3");
            String ueberschrift4 = rs.getString("Überschrift4");
            String text4 = rs.getString("Text4");
            String ueberschrift5 = rs.getString("Überschrift5");
            String text5 = rs.getString("Text5");
            String ueberschrift6 = rs.getString("Überschrift6");
            String text6 = rs.getString("Text6");
            String ueberschrift7 = rs.getString("Überschrift7");
            String text7 = rs.getString("Text7");
            if (text1 == null && ueberschrift1 == null) {
                text1 = "";
                ueberschrift1 = "";
            }
            if (text2 == null && ueberschrift2 == null) {
                text2 = "";
                ueberschrift2 = "";
            }
            if (text3 == null && ueberschrift3 == null) {
                text3 = "";
                ueberschrift3 = "";
            }
            if (text4 == null && ueberschrift4 == null) {
                text4 = "";
                ueberschrift4 = "";
            }
            if (text5 == null && ueberschrift5 == null) {
                text5 = "";
                ueberschrift5 = "";
            }
            if (text6 == null && ueberschrift6 == null) {
                text6 = "";
                ueberschrift6 = "";
            }
            if (text7 == null && ueberschrift7 == null) {
                text7 = "";
                ueberschrift7 = "";
            }
            
            reb = new Rebsorte(sorteID, bezeichnung, ueberschrift1, text1, ueberschrift2, text2, ueberschrift3, text3, ueberschrift4, text4, ueberschrift5, text5, ueberschrift6, text6, ueberschrift7, text7);
           

        }
        dbcc.releaseConnection(conn);
        return reb;
    }

    public List<Wine> getWeinezuSpeisen(int speiseid) throws SQLException, Exception {

        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT w.\"WeinID\", w.\"Weinname\", wg.\"Bezeichnung\", w.\"Jahrgang\", w.\"Preis\", wg.\"Link\", w.\"Alkoholgehalt\", w.\"Beschreibung\", w.\"Bewertung\"\n"
                + "FROM \"Speise\" s INNER JOIN \"Rebsorte-Speise\" rs USING(\"SpeiseID\")\n"
                + "                INNER JOIN \"Rebsorte\" r USING(\"SorteID\")\n"
                + "                INNER JOIN \"Wein-Rebsorte\" wr USING(\"SorteID\")\n"
                + "                INNER JOIN \"Wein\" w USING(\"WeinID\")\n"
                + "                INNER JOIN \"Weingut\" wg USING(\"WeingutID\")\n"
                + "WHERE \"SpeiseID\" = " + speiseid + ";";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Wine> weinlist = new LinkedList<>();
        while (rs.next()) {

            int weinid = rs.getInt("weinid");
            String sorte = "Alle";
            String weinname = rs.getString("weinname");
            String weingutname = rs.getString("bezeichnung");
            int jahrgang = rs.getInt("jahrgang");
            double preis = rs.getDouble("preis");
            String weinlink = rs.getString("link");
            double alkoholgehalt = rs.getDouble("alkoholgehalt");
            String beschreibung = rs.getString("beschreibung");
            String bewertung = rs.getString("bewertung");
            Wine wine = new Wine(weinid, sorte, weinname, weingutname, jahrgang, preis, weinlink, alkoholgehalt, beschreibung, bewertung);
            weinlist.add(wine);

        }
        dbcc.releaseConnection(conn);
        return weinlist;
    }

    public List<Speise> getSpeisen() throws SQLException, Exception {
        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT DISTINCT(\"Überkategorie\")\n"
                + "FROM \"Speise\";";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Speise> speisen = new LinkedList<>();
        while (rs.next()) {

            String ueberkategorie = rs.getString("Überkategorie");

            Speise sp = new Speise(ueberkategorie);
            speisen.add(sp);

        }
        dbcc.releaseConnection(conn);
        return speisen;
    }

    public List<Speise> getSpeisenBeschreibung(String ueberkategorie) throws SQLException, Exception {
        Connection conn = dbcc.getConnection();
        Statement stat = conn.createStatement();
        String sqlString = "";

        sqlString = "SELECT \"SpeiseID\", \"Bezeichnung\"\n"
                + "FROM \"Speise\"\n"
                + "WHERE \"Überkategorie\" = '" + ueberkategorie + "';";

        ResultSet rs = stat.executeQuery(sqlString);
        List<Speise> speisen = new LinkedList<>();
        while (rs.next()) {
            int speiseid = rs.getInt("SpeiseID");
            String bezeichnung = rs.getString("Bezeichnung");

            Speise sp = new Speise(speiseid, bezeichnung);
            speisen.add(sp);

        }
        dbcc.releaseConnection(conn);
        return speisen;
    }
}
