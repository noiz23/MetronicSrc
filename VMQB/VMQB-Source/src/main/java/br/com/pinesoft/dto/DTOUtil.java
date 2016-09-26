package br.com.pinesoft.dto;

import java.util.List;

public class DTOUtil {

	public static String toXML(List<DTO> list) {
		StringBuffer sb = new StringBuffer("<results>");
		
		for( DTO dto:list){
			sb.append( dto.toXML() );
		}

		sb.append( "</results>");
		
		return sb.toString();
	}
	
	/**
	 * This function creates the arrays in the format  required to DataTables in the View.
	 * 
	 * @param listResults are the results for the generated query.
	 * @param fieldsSelected are the columns names for the final table.
	 * @return An object (in String format) required to DataTable.
	 */
	
	public static String toJSON(List<DTO> listResults, List<String> fieldsSelected){
		StringBuilder stb = new StringBuilder(1);
		stb.append("[");
		stb.append("{");
		stb.append("\"COLUMNS\":[");
		for(String columName: fieldsSelected)
			stb.append("{ title: \""+columName+"\" },");
		stb.append("],");
		stb.append("\"DATA\":[");
		for(DTO dto: listResults){
			stb.append("[");
				for(String columResult: fieldsSelected){
					stb.append("\""+dto.getString(columResult)+"\"");	
					stb.append(",");	
				}
				
				stb.append("],");
		}
		stb.append("]");
		stb.append("}");
		stb.append("]");

		return stb.toString();
	}

}
