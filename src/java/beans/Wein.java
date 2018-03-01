/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author hirhu
 */
@Entity
@Table(name = "Wein")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Wein.findAll", query = "SELECT w FROM Wein w")
    , @NamedQuery(name = "Wein.findByWeinID", query = "SELECT w FROM Wein w WHERE w.weinID = :weinID")
    , @NamedQuery(name = "Wein.findByWeinname", query = "SELECT w FROM Wein w WHERE w.weinname = :weinname")
    , @NamedQuery(name = "Wein.findByJahrgang", query = "SELECT w FROM Wein w WHERE w.jahrgang = :jahrgang")
    , @NamedQuery(name = "Wein.findByPreis", query = "SELECT w FROM Wein w WHERE w.preis = :preis")
    , @NamedQuery(name = "Wein.findByAlkoholgehalt", query = "SELECT w FROM Wein w WHERE w.alkoholgehalt = :alkoholgehalt")
    , @NamedQuery(name = "Wein.findByBeschreibung", query = "SELECT w FROM Wein w WHERE w.beschreibung = :beschreibung")
    , @NamedQuery(name = "Wein.findByBewertung", query = "SELECT w FROM Wein w WHERE w.bewertung = :bewertung")})
public class Wein implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "WeinID")
    private Integer weinID;
    @Basic(optional = false)
    @Column(name = "Weinname")
    private String weinname;
    @Basic(optional = false)
    @Column(name = "Jahrgang")
    private int jahrgang;
    @Basic(optional = false)
    @Column(name = "Preis")
    private double preis;
    @Basic(optional = false)
    @Column(name = "Alkoholgehalt")
    private double alkoholgehalt;
    @Lob
    @Column(name = "Bild")
    private byte[] bild;
    @Column(name = "Beschreibung")
    private String beschreibung;
    @Column(name = "Bewertung")
    private String bewertung;
    @ManyToMany(mappedBy = "weinCollection")
    private Collection<Rebsorte> rebsorteCollection;
    @JoinColumn(name = "WeingutID", referencedColumnName = "WeingutID")
    @ManyToOne
    private Weingut weingutID;
    @JoinColumn(name = "TypID", referencedColumnName = "TypID")
    @ManyToOne
    private Weintyp typID;

    public Wein() {
    }

    public Wein(Integer weinID) {
        this.weinID = weinID;
    }

    public Wein(Integer weinID, String weinname, int jahrgang, double preis, double alkoholgehalt) {
        this.weinID = weinID;
        this.weinname = weinname;
        this.jahrgang = jahrgang;
        this.preis = preis;
        this.alkoholgehalt = alkoholgehalt;
    }

    public Integer getWeinID() {
        return weinID;
    }

    public void setWeinID(Integer weinID) {
        this.weinID = weinID;
    }

    public String getWeinname() {
        return weinname;
    }

    public void setWeinname(String weinname) {
        this.weinname = weinname;
    }

    public int getJahrgang() {
        return jahrgang;
    }

    public void setJahrgang(int jahrgang) {
        this.jahrgang = jahrgang;
    }

    public double getPreis() {
        return preis;
    }

    public void setPreis(double preis) {
        this.preis = preis;
    }

    public double getAlkoholgehalt() {
        return alkoholgehalt;
    }

    public void setAlkoholgehalt(double alkoholgehalt) {
        this.alkoholgehalt = alkoholgehalt;
    }

    public byte[] getBild() {
        return bild;
    }

    public void setBild(byte[] bild) {
        this.bild = bild;
    }

    public String getBeschreibung() {
        return beschreibung;
    }

    public void setBeschreibung(String beschreibung) {
        this.beschreibung = beschreibung;
    }

    public String getBewertung() {
        return bewertung;
    }

    public void setBewertung(String bewertung) {
        this.bewertung = bewertung;
    }

    @XmlTransient
    public Collection<Rebsorte> getRebsorteCollection() {
        return rebsorteCollection;
    }

    public void setRebsorteCollection(Collection<Rebsorte> rebsorteCollection) {
        this.rebsorteCollection = rebsorteCollection;
    }

    public Weingut getWeingutID() {
        return weingutID;
    }

    public void setWeingutID(Weingut weingutID) {
        this.weingutID = weingutID;
    }

    public Weintyp getTypID() {
        return typID;
    }

    public void setTypID(Weintyp typID) {
        this.typID = typID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (weinID != null ? weinID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Wein)) {
            return false;
        }
        Wein other = (Wein) object;
        if ((this.weinID == null && other.weinID != null) || (this.weinID != null && !this.weinID.equals(other.weinID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "beans.Wein[ weinID=" + weinID + " ]";
    }
    
}
