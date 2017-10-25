package model;

import java.io.Serializable;

public class Loginbean implements Serializable {
	private String id;
	private String pass;

	public Loginbean() {
	}

	public Loginbean(String id,String pass) {
		this.id = id;
		this.pass = pass;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}

