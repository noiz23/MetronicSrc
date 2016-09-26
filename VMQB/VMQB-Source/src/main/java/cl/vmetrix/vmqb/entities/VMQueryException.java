package cl.vmetrix.vmqb.entities;

import cl.vmetrix.vmqb.view.controller.VMQBException;

public class VMQueryException extends VMQBException {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2324995556219454549L;

	public VMQueryException(String message) {
		super(message);
	}

	public VMQueryException(String message, Throwable e) {
		super(message, e);
		// TODO Auto-generated constructor stub
	}

}
