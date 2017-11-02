package model;

import java.io.Serializable;


public class Userbean implements Serializable {
	private String id;
	private String login_id;
	private String name;
	private String birth_date;
	private String pass;
	private String create_date;
	private String update_date;

	public Userbean() {
	}

	public Userbean(String id, String login_id, String name, String birth_date, String pass, String create_date,
			String update_date) {
		super();
		this.id = id;
		this.login_id = login_id;
		this.name = name;
		this.birth_date = birth_date;
		this.pass = pass;
		this.create_date = create_date;
		this.update_date = update_date;
	}

	public Userbean(String id,String pass) {
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

	public String getLogin_id() {
		return login_id;
	}

	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public String getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}

}

