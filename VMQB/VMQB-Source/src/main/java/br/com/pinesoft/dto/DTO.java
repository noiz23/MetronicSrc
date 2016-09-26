package br.com.pinesoft.dto;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;


/**
 * This class represents the design pattern Data Transfer Object 
 * 
 * 
 */
public class DTO implements Serializable
{
   /**
    * 
    */
   private static final long serialVersionUID = -3074247646816045000L;
   
   private HashMap<String,Object> fields = null;
   private boolean newObject = true;

   /**
    * Associates a value to a field
    * @param name Field name
    * @param value Field value
    */
   public void setValue(String name, Object value)
   {
      if (fields == null)
      {
         fields = new HashMap<String,Object>();
      }

      if (fields.containsKey(name))
      {
         fields.remove(name);
      }

      fields.put(name, value);

   }

   /**
    * Returns a value of a field, given its name.
    * @param name Name of the field
    * @return Value of the field
    */
   public Object getValue(String name)
   {
      if (fields == null)
      {
         return null;
      }
      
      String key = name;
      
      Iterator keys = fields.keySet().iterator();
      
      while( keys.hasNext() ){
         String aux = (String)keys.next();
         if( name.equalsIgnoreCase( aux ) ){
        	 key = aux;
         }
      }
      
      return fields.get(key);
   }


   /**
    * Returns the number of fields in the DTO.
    * @return Number of fields in the DTO
   */
   public int getNumberOfFields()
   {
      if (fields == null)
      {
         return 0;
      }

      return fields.size();
   }

   /**
    * Returns a set with the names of the fields of the DTO.
    * @return Set with the names of the fields
   */
   public Set getFieldsNames()
   {
      Set result = null;

      if (fields == null)
      {
         return result;
      }

      return fields.keySet();
   }

   /**
    * Returns true if this is a new object.
    * @return boolean
    */
   public boolean isNew()
   {
      return newObject;
   }

   /**
    * Sets if the object should be treated as a newly created object.
    * @param isNovo The isNovo to set
    */
   public void setNew(boolean novo)
   {
      this.newObject = novo;
   }

   /**
   * Returns the value of a field as a string, given its name.
   * @param name Field name
   * @return The field value
   */
   public String getString(String name)
   {
      Object obj = getValue(name);
      if (obj != null)
      {
         return getValue(name).toString();
      }
      else
      {
         return null;
      }
   }
   
   
   /**
    * toString() Implementation. Returns the names of the fields and their values in
    * a string format.
    * 
    * @return Returns the fields and its values in a string format.
    */
   public String toString()
   {
      StringBuilder retorno = new StringBuilder( "vo{ " );
      
      Set nomeColunas = getFieldsNames();
      
	  for( int i = 0; i< nomeColunas.size(); i++ )
	  {
	  	 if( i != 0 )
	  	 {
            retorno.append( ", " );	 	
	  	 }
         retorno.append( nomeColunas.toArray()[i] + "=" + getValue( nomeColunas.toArray()[i] + "" ) );	
	  }
	  
	  retorno.append( " }" );
	  
	  return  retorno.toString();
   	
   }

   
   /**
    * Returns the names of the fields and their values in
    * a XML format.
    * 
    * @return Returns the fields and its values in a xml format.
    */
   public String toXML()
   {
      StringBuilder retorno = new StringBuilder( "<row>" );
      
      Set nomeColunas = getFieldsNames();
      
	  for( int i = 0; i< nomeColunas.size(); i++ )
	  {
         retorno.append( "<" + nomeColunas.toArray()[i].toString().trim() + ">" );
         retorno.append(  getValue( nomeColunas.toArray()[i] + "" ) );	
         retorno.append( "</" + nomeColunas.toArray()[i].toString().trim() + ">" );
	  }
	  
	  retorno.append( "</row>" );
	  
	  return  retorno.toString();
   	
   }
}
