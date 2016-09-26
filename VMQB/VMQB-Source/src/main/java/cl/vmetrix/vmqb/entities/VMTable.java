package cl.vmetrix.vmqb.entities;

import java.util.ArrayList;
import java.util.List;

public class VMTable {

	private String dbName;
	private String tableName;
	private List<String> fields;


	public VMTable(String dbName, String tableName) {
		this.dbName = dbName;
		this.tableName = tableName;
	}

	public String getTableName() {
		return tableName;
	}
	
	public String getDatabaseName() {
		return dbName;
	}

	public List<String> getFields() throws VMDatabaseFactoryException {
		if( fields == null ){
			fields = new ArrayList<String>();
			
			VMDatabase db = VMDatabase.getDatabaseInstance( dbName );
			
			fields = db.getFieldsNames( getTableName() );
			
		}
		
		return fields;
	}
	
}
