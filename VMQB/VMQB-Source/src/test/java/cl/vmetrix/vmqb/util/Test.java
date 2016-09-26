package cl.vmetrix.vmqb.util;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.engine.jdbc.connections.spi.ConnectionProvider;

import br.com.pinesoft.dto.DTO;
import br.com.pinesoft.dto.DTOUtil;
import cl.vmetrix.vmqb.entities.VMDatabase;
import cl.vmetrix.vmqb.entities.VMDatabaseFactoryException;
import cl.vmetrix.vmqb.entities.VMQuery;
import cl.vmetrix.vmqb.entities.VMTable;

public class Test {

	private static final String HIBERNATE_CFG_XML = "hibernate.cfg.xml";

	public static void main(String args[]) throws Exception {

		VMDatabase db = VMDatabase.getDatabaseInstance( HIBERNATE_CFG_XML  );
		
		List<String> fields = new ArrayList<String>();
		/*fields.add("AAZ_HISTORICAL_DATA.PLAZO");
		fields.add("AAZ_HISTORICAL_DATA.VALOR");
		fields.add("AAZ_INDEX_INFO.END_DATE");
		fields.add("AAZ_INDEX_INFO.FACTOR");*/
		fields.add("SIDE.TRANSACTION_DEAL_NUM");
		fields.add("SIDE.TRANSACTION_PROCESS_DATE");
		fields.add("TRANSACTIONT.TRANSACTION_DEAL_NUM");
		fields.add("TRANSACTIONT.TRANSACTION_PROCESS_DATE");
	
		List<String> tables = new ArrayList<String>();
		/*tables.add("AAZ_HISTORICAL_DATA");
		tables.add("AAZ_INDEX_INFO");*/
		tables.add("SIDE");
		tables.add("TRANSACTIONT");

		VMQuery query = VMQuery.buildQuery(db, tables, fields );
		
		System.out.println( query.getQueryString() );
		
		List<DTO> list = db.executeQuery( query );
		


		
		System.out.println( DTOUtil.toXML( list ) );
		
		
		
		for( DTO dto:list){
			System.out.println( dto );
		}
		
		
				
		//testTables(db);

	}

	private static void testTables(VMDatabase db ) throws VMDatabaseFactoryException {
		List<VMTable> tables = db.getTables();

		for (int i=0; i<tables.size();i++ ){
			System.out.println( ((VMTable)tables.get(i)).getTableName() );
		}
		
		System.out.println( ((VMTable)tables.get(0)).getTableName() + " - " + ((VMTable)tables.get(0)).getFields() );
		
		System.exit(-1);
	}

}
