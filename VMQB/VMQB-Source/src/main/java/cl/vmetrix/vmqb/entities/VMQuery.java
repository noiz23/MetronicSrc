package cl.vmetrix.vmqb.entities;

import java.util.List;

public class VMQuery {

	private VMDatabase db;
	private List<String> tables;
	private List<String> fields;
	private List<String> joins;
	
	public static VMQuery buildQuery(VMDatabase db, List<String> tables, List<String> fields) throws VMQueryException {
		
		List<String> joins = db.getJoins( tables );
		
		if( joins == null || joins.isEmpty() ){
			throw new VMQueryException( "No joins have been set to database " + db.getName()  );
		}
		
		return new VMQuery( db, tables, fields, joins );
	}

	
	public VMQuery(VMDatabase db, List<String> tables, List<String> fields, List<String> joins) {

		this.db = db;
		this.tables=tables;
		this.fields=fields;
		this.joins=joins;

	}


	public String getQueryString() {

	
		StringBuffer selectedFields = new StringBuffer();
		for( String field : fields ){
			
			if( selectedFields.length() != 0 ){
				selectedFields.append("," + field);
				selectedFields.append(" as '"+field+"'");
			}
			else{
				selectedFields.append(field);
				selectedFields.append(" as '"+field+"'");
			}
		}
		
		StringBuffer selectedTables = new StringBuffer();
		for( String table : tables ){
			
			if( selectedTables.length() != 0 )
				selectedTables.append("," + table);
			else
				selectedTables.append(table);				
		}

		
		StringBuffer selectedJoins = new StringBuffer();
		for( String join : joins ){
			
			if( selectedJoins.length() != 0 )
				selectedJoins.append(" and " + join);
			else
				selectedJoins.append(join);				
		}
		
		
		StringBuffer query = new StringBuffer();
		

		query.append( "Select top 1000 " );
		query.append( selectedFields );
		query.append( " from " );
		query.append( selectedTables );
		query.append( " where " );
		query.append( selectedJoins );		
		
		return query.toString();
	}
	
	public String toString() {
		return getQueryString();
	}


	public String getField(int j) {
		return fields.get(j);
		
	}
}
