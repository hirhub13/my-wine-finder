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
@Table(name = "Weintyp")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Weintyp.findAll", query = "SELECT w FROM Weintyp w")
    , @NamedQuery(name = "Weintyp.findByTypID", query = "SELECT w FROM Weintyp w WHERE w.typID = :typID")
    , @NamedQuery(name = "Weintyp.findByBezeichnung", query = "SELECT w FROM Weintyp w WHERE w.bezeichnung = :bezeichnung")})
public class Weintyp implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "TypID")
    private Integer typID;
    @Basic(optional = false)
    @Column(name = "Bezeichnung")
    private String bezeichnung;
    @OneToMany(mappedBy = "typID")
    private Collection<Wein> weinCollection;

    public Weintyp() {
    }

    public Weintyp(Integer typID) {
        this.typID = typID;
    }

    public Weintyp(Integer typID, String bezeichnung) {
        this.typID = typID;
        this.bezeichnung = bezeichnung;
    }

    public Integer getTypID() {
        return typID;
    }

    public void setTypID(Integer typID) {
        this.typID = typID;
    }

    public String getBezeichnung() {
        return bezeichnung;
    }

    public void setBezeichnung(String bezeichnung) {
        this.bezeichnung = bezeichnung;
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
        hash += (typID != null ? typID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Weintyp)) {
            return false;
        }
        Weintyp other = (Weintyp) object;
        if ((this.typID == null && other.typID != null) || (this.typID != null && !this.typID.equals(other.typID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "beans.Weintyp[ typID=" + typID + " ]";
    }
    
}
