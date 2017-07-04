package ht.admin;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class AdminDomain {
	private String admin_id;
	private String admin_name;
	private String admin_login_name;
	private String admin_login_pass;
	private String admin_login_record;
	private String role_id;
	private String role_name;
	private String role_limit_id;
	private String limit_id;
	
	private int pageCount;

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_login_name() {
		return admin_login_name;
	}

	public void setAdmin_login_name(String admin_login_name) {
		this.admin_login_name = admin_login_name;
	}

	public String getAdmin_login_pass() {
		return admin_login_pass;
	}

	public void setAdmin_login_pass(String admin_login_pass) {
		this.admin_login_pass = admin_login_pass;
	}

	public String getAdmin_login_record() {
		return admin_login_record;
	}

	public void setAdmin_login_record(String admin_login_record) {
		this.admin_login_record = admin_login_record;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	public String getRole_limit_id() {
		return role_limit_id;
	}

	public void setRole_limit_id(String role_limit_id) {
		this.role_limit_id = role_limit_id;
	}

	public String getLimit_id() {
		return limit_id;
	}

	public void setLimit_id(String limit_id) {
		this.limit_id = limit_id;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
	
	
}


