/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hirhu
 */
@Entity
@Table(name = "Speise")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Speise.findAll", query = "SELECT s FROM Speise s")
    , @NamedQuery(name = "Speise.findBySpeiseID", query = "SELECT s FROM Speise s WHERE s.speiseID = :speiseID")
    , @NamedQuery(name = "Speise.findByBezeichnung", query = "SELECT s FROM Speise s WHERE s.bezeichnung = :bezeichnung")
    , @NamedQuery(name = "Speise.findBy\u00dcberkategorie", query = "SELECT s FROM Speise s WHERE s.\u00fcberkategorie = :\u00fcberkategorie")})
public class Speise implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "SpeiseID")
    private Integer speiseID;
    @Basic(optional = false)
    @Column(name = "Bezeichnung")
    private String bezeichnung;
    @Column(name = "\u00dcberkategorie")
    private String ueberkategorie;

    public Speise() {
    }

    public Speise(Integer speiseID) {
        this.speiseID = speiseID;
    }

    public Speise(Integer speiseID, String bezeichnung) {
        this.speiseID = speiseID;
        this.bezeichnung = bezeichnung;
    }

    public Speise(String ueberkategorie) {
        this.ueberkategorie = ueberkategorie;
    }
    
    

    public Integer getSpeiseID() {
        return speiseID;
    }

    public void setSpeiseID(Integer speiseID) {
        this.speiseID = speiseID;
    }

    public String getBezeichnung() {
        return bezeichnung;
    }

    public void setBezeichnung(String bezeichnung) {
        this.bezeichnung = bezeichnung;
    }

    public String getÜberkategorie() {
        return ueberkategorie;
    }

    public void setÜberkategorie(String ueberkategorie) {
        this.ueberkategorie = ueberkategorie;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (speiseID != null ? speiseID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Speise)) {
            return false;
        }
        Speise other = (Speise) object;
        if ((this.speiseID == null && other.speiseID != null) || (this.speiseID != null && !this.speiseID.equals(other.speiseID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "beans.Speise[ speiseID=" + speiseID + " ]";
    }
    
}
