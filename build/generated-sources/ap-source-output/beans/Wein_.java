package beans;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Wein.class)
public abstract class Wein_ {

	public static volatile SingularAttribute<Wein, String> weinname;
	public static volatile SingularAttribute<Wein, byte[]> bild;
	public static volatile CollectionAttribute<Wein, Rebsorte> rebsorteCollection;
	public static volatile SingularAttribute<Wein, Double> preis;
	public static volatile SingularAttribute<Wein, Weingut> weingutID;
	public static volatile SingularAttribute<Wein, Integer> jahrgang;
	public static volatile SingularAttribute<Wein, Double> alkoholgehalt;
	public static volatile SingularAttribute<Wein, String> beschreibung;
	public static volatile SingularAttribute<Wein, Weintyp> typID;
	public static volatile SingularAttribute<Wein, String> bewertung;
	public static volatile SingularAttribute<Wein, Integer> weinID;

}

