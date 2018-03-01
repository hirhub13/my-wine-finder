/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author hirhu
 */
public class Wine {

    private int weinid;
    private String sorte;
    private String weinname;
    private String weingut;
    private int jahrgang;
    private Double preis;
    private String weinlink;
    private double alkoholgehalt;
    private String beschreibung;
    private String bewertung;
    private String plz;
    private String ort;
    private String strasse;
    private String bundesland;
    private String mail;
            
    public Wine(int weinid, String sorte, String weinname, String weingut, int jahrgang, Double preis, String weinlink, double alkoholgehalt, String beschreibung) {
        this.weinid = weinid;
        this.sorte = sorte;
        this.weinname = weinname;
        this.weingut = weingut;
        this.jahrgang = jahrgang;
        this.preis = preis;
        this.weinlink = weinlink;
        this.alkoholgehalt = alkoholgehalt;
        this.beschreibung = beschreibung;
    }

    public Wine(int weinid, String sorte, String weinname, String weingut, int jahrgang, Double preis, String weinlink, double alkoholgehalt, String beschreibung, String bewertung) {
        this.weinid = weinid;
        this.sorte = sorte;
        this.weinname = weinname;
        this.weingut = weingut;
        this.jahrgang = jahrgang;
        this.preis = preis;
        this.weinlink = weinlink;
        this.alkoholgehalt = alkoholgehalt;
        this.beschreibung = beschreibung;
        this.bewertung = bewertung;
    }

    public Wine(int weinid, String sorte, String weinname, String weingut, int jahrgang, Double preis, String weinlink, double alkoholgehalt, String beschreibung, String bewertung, String plz, String ort, String strasse, String bundesland, String mail) {
        this.weinid = weinid;
        this.sorte = sorte;
        this.weinname = weinname;
        this.weingut = weingut;
        this.jahrgang = jahrgang;
        this.preis = preis;
        this.weinlink = weinlink;
        this.alkoholgehalt = alkoholgehalt;
        this.beschreibung = beschreibung;
        this.bewertung = bewertung;
        this.plz = plz;
        this.ort = ort;
        this.strasse = strasse;
        this.bundesland = bundesland;
        this.mail = mail;
    }

    public Wine(int weinid, String sorte, String weinname, String weingut, int jahrgang, Double preis, double alkoholgehalt) {
        this.weinid = weinid;
        this.sorte = sorte;
        this.weinname = weinname;
        this.weingut = weingut;
        this.jahrgang = jahrgang;
        this.preis = preis;
        this.alkoholgehalt = alkoholgehalt;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
    public String getBundesland() {
        return bundesland;
    }

    public void setBundesland(String bundesland) {
        this.bundesland = bundesland;
    }
    
    public String getPlz() {
        return plz;
    }

    public void setPlz(String plz) {
        this.plz = plz;
    }

    public String getOrt() {
        return ort;
    }

    public void setOrt(String ort) {
        this.ort = ort;
    }

    public String getStrasse() {
        return strasse;
    }

    public void setStrasse(String strasse) {
        this.strasse = strasse;
    }
    
    

    public String getBewertung() {
        return bewertung;
    }

    public void setBewertung(String bewertung) {
        this.bewertung = bewertung;
    }

    public int getWeinid() {
        return weinid;
    }

    public void setWeinid(int weinid) {
        this.weinid = weinid;
    }

    public String getSorte() {
        return sorte;
    }

    public void setSorte(String sorte) {
        this.sorte = sorte;
    }

    public String getWeinname() {
        return weinname;
    }

    public void setWeinname(String weinname) {
        this.weinname = weinname;
    }

    public String getWeingut() {
        return weingut;
    }

    public void setWeingut(String  weingut) {
        this.weingut = weingut;
    }

    public int getJahrgang() {
        return jahrgang;
    }

    public void setJahrgang(int jahrgang) {
        this.jahrgang = jahrgang;
    }

    public Double getPreis() {
        return preis;
    }

    public void setPreis(Double preis) {
        this.preis = preis;
    }

    public String getWeinlink() {
        return weinlink;
    }

    public void setWeinlink(String weinlink) {
        this.weinlink = weinlink;
    }

    public double getAlkoholgehalt() {
        return alkoholgehalt;
    }

    public void setAlkoholgehalt(double alkoholgehalt) {
        this.alkoholgehalt = alkoholgehalt;
    }

    public String getBeschreibung() {
        return beschreibung;
    }

    public void setBeschreibung(String beschreibung) {
        this.beschreibung = beschreibung;
    }
    
    @Override
    public String toString() {
        return "Wine{" + "weinid=" + weinid + ", sorte=" + sorte + ", weinname=" + weinname + ", weingut=" + weingut + ", jahrgang=" + jahrgang + ", preis=" + preis + ", weinlink=" + weinlink + ", alkoholgehalt=" + alkoholgehalt + '}';
    }
}
