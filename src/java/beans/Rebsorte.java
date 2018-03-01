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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
@Table(name = "Rebsorte")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Rebsorte.findAll", query = "SELECT r FROM Rebsorte r")
    , @NamedQuery(name = "Rebsorte.findBySorteID", query = "SELECT r FROM Rebsorte r WHERE r.sorteID = :sorteID")
    , @NamedQuery(name = "Rebsorte.findByBezeichnung", query = "SELECT r FROM Rebsorte r WHERE r.bezeichnung = :bezeichnung")
    , @NamedQuery(name = "Rebsorte.findBy\u00dcberschrift1", query = "SELECT r FROM Rebsorte r WHERE r.\u00fcberschrift1 = :\u00fcberschrift1")
    , @NamedQuery(name = "Rebsorte.findByText1", query = "SELECT r FROM Rebsorte r WHERE r.text1 = :text1")
    , @NamedQuery(name = "Rebsorte.findBy\u00dcberschrift2", query = "SELECT r FROM Rebsorte r WHERE r.\u00fcberschrift2 = :\u00fcberschrift2")
    , @NamedQuery(name = "Rebsorte.findByText2", query = "SELECT r FROM Rebsorte r WHERE r.text2 = :text2")
    , @NamedQuery(name = "Rebsorte.findBy\u00dcberschrift3", query = "SELECT r FROM Rebsorte r WHERE r.\u00fcberschrift3 = :\u00fcberschrift3")
    , @NamedQuery(name = "Rebsorte.findByText3", query = "SELECT r FROM Rebsorte r WHERE r.text3 = :text3")
    , @NamedQuery(name = "Rebsorte.findBy\u00dcberschrift4", query = "SELECT r FROM Rebsorte r WHERE r.\u00fcberschrift4 = :\u00fcberschrift4")
    , @NamedQuery(name = "Rebsorte.findByText4", query = "SELECT r FROM Rebsorte r WHERE r.text4 = :text4")
    , @NamedQuery(name = "Rebsorte.findBy\u00dcberschrift5", query = "SELECT r FROM Rebsorte r WHERE r.\u00fcberschrift5 = :\u00fcberschrift5")
    , @NamedQuery(name = "Rebsorte.findByText5", query = "SELECT r FROM Rebsorte r WHERE r.text5 = :text5")
    , @NamedQuery(name = "Rebsorte.findBy\u00dcberschrift6", query = "SELECT r FROM Rebsorte r WHERE r.\u00fcberschrift6 = :\u00fcberschrift6")
    , @NamedQuery(name = "Rebsorte.findByText6", query = "SELECT r FROM Rebsorte r WHERE r.text6 = :text6")
    , @NamedQuery(name = "Rebsorte.findBy\u00dcberschrift7", query = "SELECT r FROM Rebsorte r WHERE r.\u00fcberschrift7 = :\u00fcberschrift7")
    , @NamedQuery(name = "Rebsorte.findByText7", query = "SELECT r FROM Rebsorte r WHERE r.text7 = :text7")})
public class Rebsorte implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "SorteID")
    private Integer sorteID;
    @Basic(optional = false)
    @Column(name = "Bezeichnung")
    private String bezeichnung;
    @Column(name = "\u00dcberschrift1")
    private String ueberschrift1;
    @Column(name = "Text1")
    private String text1;
    @Column(name = "\u00dcberschrift2")
    private String ueberschrift2;
    @Column(name = "Text2")
    private String text2;
    @Column(name = "\u00dcberschrift3")
    private String ueberschrift3;
    @Column(name = "Text3")
    private String text3;
    @Column(name = "\u00dcberschrift4")
    private String ueberschrift4;
    @Column(name = "Text4")
    private String text4;
    @Column(name = "\u00dcberschrift5")
    private String ueberschrift5;
    @Column(name = "Text5")
    private String text5;
    @Column(name = "\u00dcberschrift6")
    private String ueberschrift6;
    @Column(name = "Text6")
    private String text6;
    @Column(name = "\u00dcberschrift7")
    private String ueberschrift7;
    @Column(name = "Text7")
    private String text7;
    @JoinTable(name = "Rebsorte-Speise", joinColumns = {
        @JoinColumn(name = "SorteID", referencedColumnName = "SorteID")}, inverseJoinColumns = {
        @JoinColumn(name = "SpeiseID", referencedColumnName = "SpeiseID")})
    @ManyToMany
    private Collection<Speise> speiseCollection;
    @JoinTable(name = "Wein-Rebsorte", joinColumns = {
        @JoinColumn(name = "SorteID", referencedColumnName = "SorteID")}, inverseJoinColumns = {
        @JoinColumn(name = "WeinID", referencedColumnName = "WeinID")})
    @ManyToMany
    private Collection<Wein> weinCollection;

    public Rebsorte() {
    }

    public Rebsorte(Integer sorteID) {
        this.sorteID = sorteID;
    }

    public Rebsorte(Integer sorteID, String bezeichnung) {
        this.sorteID = sorteID;
        this.bezeichnung = bezeichnung;
    }

    public Rebsorte(int sorteID, String bezeichnung, String ueberschrift1, String text1, String ueberschrift2, String text2, String ueberschrift3, String text3, String ueberschrift4, String text4, String ueberschrift5, String text5, String ueberschrift6, String text6, String ueberschrift7, String text7) {
        this.sorteID = sorteID;
        this.bezeichnung = bezeichnung;
        this.ueberschrift1 = ueberschrift1;
        this.text1 = text1;
        this.ueberschrift2 = ueberschrift2;
        this.text2 = text2;
        this.ueberschrift3 = ueberschrift3;
        this.text3 = text3;
        this.ueberschrift4 = ueberschrift4;
        this.text4 = text4;
        this.ueberschrift5 = ueberschrift5;
        this.text5 = text5;
        this.ueberschrift6 = ueberschrift6;
        this.text6 = text6;
        this.ueberschrift7 = ueberschrift7;
        this.text7 = text7;
    }

    public Integer getSorteID() {
        return sorteID;
    }

    public void setSorteID(Integer sorteID) {
        this.sorteID = sorteID;
    }

    public String getBezeichnung() {
        return bezeichnung;
    }

    public void setBezeichnung(String bezeichnung) {
        this.bezeichnung = bezeichnung;
    }

    public String getÜberschrift1() {
        return ueberschrift1;
    }

    public void setÜberschrift1(String ueberschrift1) {
        this.ueberschrift1 = ueberschrift1;
    }

    public String getText1() {
        return text1;
    }

    public void setText1(String text1) {
        this.text1 = text1;
    }

    public String getÜberschrift2() {
        return ueberschrift2;
    }

    public void setÜberschrift2(String ueberschrift2) {
        this.ueberschrift2 = ueberschrift2;
    }

    public String getText2() {
        return text2;
    }

    public void setText2(String text2) {
        this.text2 = text2;
    }

    public String getÜberschrift3() {
        return ueberschrift3;
    }

    public void setÜberschrift3(String ueberschrift3) {
        this.ueberschrift3 = ueberschrift3;
    }

    public String getText3() {
        return text3;
    }

    public void setText3(String text3) {
        this.text3 = text3;
    }

    public String getÜberschrift4() {
        return ueberschrift4;
    }

    public void setÜberschrift4(String ueberschrift4) {
        this.ueberschrift4 = ueberschrift4;
    }

    public String getText4() {
        return text4;
    }

    public void setText4(String text4) {
        this.text4 = text4;
    }

    public String getÜberschrift5() {
        return ueberschrift5;
    }

    public void setÜberschrift5(String ueberschrift5) {
        this.ueberschrift5 = ueberschrift5;
    }

    public String getText5() {
        return text5;
    }

    public void setText5(String text5) {
        this.text5 = text5;
    }

    public String getÜberschrift6() {
        return ueberschrift6;
    }

    public void setÜberschrift6(String ueberschrift6) {
        this.ueberschrift6 = ueberschrift6;
    }

    public String getText6() {
        return text6;
    }

    public void setText6(String text6) {
        this.text6 = text6;
    }

    public String getÜberschrift7() {
        return ueberschrift7;
    }

    public void setÜberschrift7(String ueberschrift7) {
        this.ueberschrift7 = ueberschrift7;
    }

    public String getText7() {
        return text7;
    }

    public void setText7(String text7) {
        this.text7 = text7;
    }

    @XmlTransient
    public Collection<Speise> getSpeiseCollection() {
        return speiseCollection;
    }

    public void setSpeiseCollection(Collection<Speise> speiseCollection) {
        this.speiseCollection = speiseCollection;
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
        hash += (sorteID != null ? sorteID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Rebsorte)) {
            return false;
        }
        Rebsorte other = (Rebsorte) object;
        if ((this.sorteID == null && other.sorteID != null) || (this.sorteID != null && !this.sorteID.equals(other.sorteID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "beans.Rebsorte[ sorteID=" + sorteID + " ]";
    }
    
}
