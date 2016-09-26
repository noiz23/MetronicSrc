package cl.vmetrix.vmqb.entities;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.NativeQuery;

import br.com.pinesoft.dto.DTO;
import cl.vmetrix.vmqb.util.HibernateUtil;


public class VMDatabase {

	final static Logger logger = Logger.getLogger(VMDatabase.class);

    private final static Map<String,VMDatabase> databaseList = new HashMap<String,VMDatabase>();
    
	
	public static VMDatabase getDatabaseInstance( String configFile ) throws VMDatabaseFactoryException{
		
    	if( configFile == null)
    		throw new VMDatabaseFactoryException( "Database name not informed.");
    	
    	VMDatabase db = databaseList.get( configFile );
    	
    	if( db == null ){
    		db = new VMDatabase( configFile );
    		databaseList.put( configFile, db );
    	}
    		
    		
    	return db;
		
	}
	
	
	
	private String configFile;
	
	
	private VMDatabase(String configFile) {
		
		this.configFile = configFile;
		logger.debug("Trying to create a connection with the database using cfg file: " + configFile);
		HibernateUtil.getSessionFactory(configFile);
		logger.info("Connection with the database created successfuly using cfg file: " + configFile);

	}

	public List<VMTable> getTables() {
		SessionFactory sf = HibernateUtil.getSessionFactory(configFile);

		 List<VMTable> result = new  ArrayList<VMTable>();
		
		Session session = null;
		Transaction tx = null;
		try {

			
			session = sf.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			
			List<String> list = session.createSQLQuery("select name from sysobjects where type='U'").list();

			for( int i=0;i<list.size();i++){
			
				result.add( new VMTable( configFile, list.get(i) ) );
				
			}

			tx.commit();

		} catch (RuntimeException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			throw e;
		} finally {
			if (session != null) 
				session.close();
			
			

		}

		return result;
	}

	public List<String> getFieldsNames(String tableName) {

		List<String> fieldsNames = new ArrayList<String>();

		SessionFactory sf = HibernateUtil.getSessionFactory(configFile);
		
		Session session = null;
		Transaction tx = null;
		try {

			session = sf.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			
			String query = "SELECT  c.Name "
					+ " FROM sys.columns c inner JOIN sys.objects o ON o.object_id = c.object_id "
					+ " WHERE    o.type = 'U' "
					+ " and o.name = '"+tableName+"' "
					+ " ORDER BY c.Name ";
			
			List<String> list = session.createSQLQuery(query).list();

			for( int i=0;i<list.size();i++){
			
				fieldsNames.add( list.get(i) );
				
			}

			tx.commit();

		} catch (RuntimeException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			throw e;
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
		return fieldsNames;
		
	}

	public List<String> getJoins(List<String> tables) {
		List<String> joins = new ArrayList<String>();
		
		//TODO: CONFIGURAR EM ALGUMA PARTE.. BASE DE DATOS OU ARQUIVO DE CONFIGURACAO
//		joins.add("AAZ_HISTORICAL_DATA.FACTOR=AAZ_INDEX_INFO.FACTOR");
		joins.add("SIDE.TRANSACTION_DEAL_NUM = TRANSACTIONT.TRANSACTION_DEAL_NUM");
		joins.add("SIDE.TRANSACTION_PROCESS_DATE=TRANSACTIONT.TRANSACTION_PROCESS_DATE");
		
		return joins;
	}

	public String getName() {
		return configFile;
	}

	public List<DTO> executeQuery(VMQuery query) {

		SessionFactory sf = HibernateUtil.getSessionFactory(configFile);

		List<DTO> result = new  ArrayList<DTO>();
		
		Session session = null;
		Transaction tx = null;
		try {

			session = sf.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			
			NativeQuery hbQuery = session.createSQLQuery( query.getQueryString() );
			
			List list = hbQuery.list();
			
			for( int i=0;i<list.size();i++){
			
				Object[] row = (Object[]) list.get(i);
				
				DTO dto = new DTO();
				
				for( int j=0;j<row.length; j++ ){
					dto.setValue(query.getField(j), row[j]);
				}

				result.add( dto );
				
				if(i==10)
					break;
				
			}

			tx.commit();

		} catch (RuntimeException e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			throw e;
		} finally {
			if (session != null) {
				session.close();
			}
			/*if(sf.isOpen()){
				sf.close();
			}*/
		}
		
		
		return result;

	}

}
