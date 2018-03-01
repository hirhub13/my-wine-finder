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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author hirhu
 */
@Entity
@Table(name = "Weingut")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Weingut.findAll", query = "SELECT w FROM Weingut w")
    , @NamedQuery(name = "Weingut.findByWeingutID", query = "SELECT w FROM Weingut w WHERE w.weingutID = :weingutID")
    , @NamedQuery(name = "Weingut.findByBezeichnung", query = "SELECT w FROM Weingut w WHERE w.bezeichnung = :bezeichnung")
    , @NamedQuery(name = "Weingut.findByLink", query = "SELECT w FROM Weingut w WHERE w.link = :link")
    , @NamedQuery(name = "Weingut.findByStrasse", query = "SELECT w FROM Weingut w WHERE w.strasse = :strasse")
    , @NamedQuery(name = "Weingut.findByOrt", query = "SELECT w FROM Weingut w WHERE w.ort = :ort")
    , @NamedQuery(name = "Weingut.findByPlz", query = "SELECT w FROM Weingut w WHERE w.plz = :plz")
    , @NamedQuery(name = "Weingut.findByMail", query = "SELECT w FROM Weingut w WHERE w.mail = :mail")})
public class Weingut implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "WeingutID")
    private Integer weingutID;
    @Basic(optional = false)
    @Column(name = "Bezeichnung")
    private String bezeichnung;
    @Basic(optional = false)
    @Column(name = "Link")
    private String link;
    @Basic(optional = false)
    @Column(name = "Strasse")
    private String strasse;
    @Basic(optional = false)
    @Column(name = "Ort")
    private String ort;
    @Basic(optional = false)
    @Column(name = "Plz")
    private String plz;
    @Column(name = "Mail")
    private String mail;
    @OneToMany(mappedBy = "weingutID")
    private Collection<Wein> weinCollection;

    public Weingut() {
    }

    public Weingut(Integer weingutID) {
        this.weingutID = weingutID;
    }

    public Weingut(Integer weingutID, String bezeichnung, String link, String strasse, String ort, String plz) {
        this.weingutID = weingutID;
        this.bezeichnung = bezeichnung;
        this.link = link;
        this.strasse = strasse;
        this.ort = ort;
        this.plz = plz;
    }

    public Integer getWeingutID() {
        return weingutID;
    }

    public void setWeingutID(Integer weingutID) {
        this.weingutID = weingutID;
    }

    public String getBezeichnung() {
        return bezeichnung;
    }

    public void setBezeichnung(String bezeichnung) {
        this.bezeichnung = bezeichnung;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getStrasse() {
        return strasse;
    }

    public void setStrasse(String strasse) {
        this.strasse = strasse;
    }

    public String getOrt() {
        return ort;
    }

    public void setOrt(String ort) {
        this.ort = ort;
    }

    public String getPlz() {
        return plz;
    }

    public void setPlz(String plz) {
        this.plz = plz;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @XmlTransient
    public Collection<Wein> getWeinCollection() {
        return weinCollection;
    }

    public void setWeinCollection(Collection<Wein> weinCollection) {
        this.weinCollection = weinCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (weingutID != null ? weingutID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Weingut)) {
            return false;
        }
        Weingut other = (Weingut) object;
        if ((this.weingutID == null && other.weingutID != null) || (this.weingutID != null && !this.weingutID.equals(other.weingutID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "beans.Weingut[ weingutID=" + weingutID + " ]";
    }
    
}
