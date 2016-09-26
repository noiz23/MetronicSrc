package cl.vmetrix.vmqb.util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
 
    private final static Map<String,SessionFactory> sessionFactoryList = new HashMap<String,SessionFactory>();
 
    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            return new Configuration()
            		.configure()
                    .buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
 
    public static SessionFactory getSessionFactory() {
    	return getSessionFactory(null);
    }
    
    public static SessionFactory getSessionFactory(String cfgName) {
    	
    	if( cfgName == null)
    		cfgName = "hibernate.cfg.xml";
    	
    	SessionFactory sf = sessionFactoryList.get( cfgName );
    	
    	if( sf == null ){
    		
    		Configuration configuration = new Configuration();
    		configuration.configure(cfgName);
    		StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder()
    				.applySettings(configuration.getProperties());
    		sf = configuration.buildSessionFactory(ssrb.build());
    		sessionFactoryList.put( cfgName, sf );
    	}
    		
    		
    	return sf;
    }
}