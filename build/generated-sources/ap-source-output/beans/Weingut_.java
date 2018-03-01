package beans;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Weingut.class)
public abstract class Weingut_ {

	public static volatile SingularAttribute<Weingut, String> ort;
	public static volatile SingularAttribute<Weingut, Integer> weingutID;
	public static volatile CollectionAttribute<Weingut, Wein> weinCollection;
	public static volatile SingularAttribute<Weingut, String> mail;
	public static volatile SingularAttribute<Weingut, String> bezeichnung;
	public static volatile SingularAttribute<Weingut, String> strasse;
	public static volatile SingularAttribute<Weingut, String> link;
	public static volatile SingularAttribute<Weingut, String> plz;

}

