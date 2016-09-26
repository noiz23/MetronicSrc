package cl.vmetrix.vmqb.view.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.pinesoft.dto.DTO;
import br.com.pinesoft.dto.DTOUtil;
import cl.vmetrix.vmqb.entities.VMDatabase;
import cl.vmetrix.vmqb.entities.VMDatabaseFactoryException;
import cl.vmetrix.vmqb.entities.VMQuery;
import cl.vmetrix.vmqb.entities.VMQueryException;
import cl.vmetrix.vmqb.entities.VMTable;

/*
 * author: Crunchify.com
 * 
 */

@Controller
public class MainPage {

	final static Logger logger = Logger.getLogger(MainPage.class);
	private static final String HIBERNATE_CFG_XML = "hibernate.cfg.xml";
	private static String instanceName = "hibernate.cfg.xml";

	@RequestMapping("/vmqbBuildScreen")
	public ModelAndView buildScreenSetup() {

		VMDatabase db;

		List<VMTable> tables;

		try {
			db = VMDatabase.getDatabaseInstance(instanceName);

			tables = db.getTables();

		} catch (Throwable e) {
			Exception VMQBException = new VMQBException("Error creating Database instance - " + instanceName, e);
			logger.error("Error creating Database instance - " + instanceName, e);

			return new ModelAndView("vmqbExceptionScreen", "exception", e);

		}

		return new ModelAndView("vmqbBuildScreen", "tableList", tables);
	}


	
	@RequestMapping(value="/resultsField.html")
	public @ResponseBody String listResults(@RequestParam("tables") String tables, @RequestParam("fields") String fields) throws VMDatabaseFactoryException, VMQueryException {
		logger.debug("inside controller function....");
		String tablesList [] = tables.split(",");
		String fielList [] = fields.split(",");
		List<DTO> listResults = new  ArrayList<DTO>();
		VMDatabase db = VMDatabase.getDatabaseInstance( HIBERNATE_CFG_XML);
		logger.info("Getting selected tables and fields..." );
		
		List<String> tableList = Arrays.asList(tablesList);
		List<String> fieldsSelected = Arrays.asList(fielList);
		logger.debug("End Getting selected tables and fields." );
		
		VMQuery query = VMQuery.buildQuery(db, tableList, fieldsSelected );
		
		logger.debug("Query to execute: "+ query.getQueryString() );
		
		
		
		listResults = db.executeQuery( query );
		
		logger.debug("Begins to show results..." );
		logger.debug("List columnames: ["+fields+"]");
		
//		String xml = DTOUtil.toXML( listResults );
		String jsonObject = DTOUtil.toJSON(listResults, fieldsSelected);
		
		
		
		logger.debug("Return object to jsp {"+jsonObject+"}" );
		
          
		return jsonObject;
	}
	
	
}