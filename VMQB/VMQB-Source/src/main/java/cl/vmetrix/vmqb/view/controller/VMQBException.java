package cl.vmetrix.vmqb.view.controller;

public class VMQBException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2360504546228533144L;

	
	public VMQBException(String message, Throwable e) {
		super( message, e);
	}
	
	public VMQBException(String message) {
		super( message );
	}


}
