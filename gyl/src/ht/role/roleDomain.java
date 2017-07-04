package ht.role;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class roleDomain {
	private String role_id;
	private String role_name;
	private String admin_role_id;
	private String admin_id;
	private String role_limit_id;
	private String limit_id;	
	private int pageCount;
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
	public String getAdmin_role_id() {
		return admin_role_id;
	}
	public void setAdmin_role_id(String admin_role_id) {
		this.admin_role_id = admin_role_id;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
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


