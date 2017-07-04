package ht.admin;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class AdminService {
	DaoImpl dao = new DaoImpl();
	String sql;
	Page page;
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List Query(Object obj) {
		// TODO Auto-generated method stub
		AdminDomain st=(AdminDomain)obj;
		sql="select * from admin ";
		if(null!=st.getAdmin_name())
		{
			System.out.println("====="+st.getAdmin_name());
			sql=sql+" where admin_name like '%"+st.getAdmin_name()+"%'";
		}
		List list=dao.executeQuery(sql,st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;		
	}

	public void Add(Object obj) {
		// TODO Auto-generated method stub
		AdminDomain st=(AdminDomain)obj;
		sql="insert into admin(admin_name,admin_login_name,admin_login_pass,admin_login_record) values('"+st.getAdmin_name()+"','"+st.getAdmin_login_name()+"','"+st.getAdmin_login_pass()+"',getdate())";
		System.out.println("sql===="+sql);
		dao.executeUpdate(sql);		
	}

	public List queryone(String id) {
		// TODO Auto-generated method stub
		sql="select * from admin where admin_id='"+id+"'";
		System.out.println("sql========"+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

	public void update(Object obj) {
		// TODO Auto-generated method stub
		AdminDomain st=(AdminDomain)obj;
		sql="update admin set admin_name='"+st.getAdmin_name()+"',admin_login_name='"+st.getAdmin_login_name()+"',admin_login_pass='"+st.getAdmin_login_pass()+"',admin_login_record=getdate() where admin_id='"+st.getAdmin_id()+"'";
		System.out.println("sql===="+sql);
		dao.executeUpdate(sql);	
	}

	public List rolequery() {
		// TODO Auto-generated method stub
		sql="select * from role";
		List list=dao.executeQuery(sql);
		return list;
	}

	public void Del(String id) {
		// TODO Auto-generated method stub
		sql = "delete from admin where admin_id='"+id+"'";
		System.out.println("=del1==="+sql);
		dao.executeUpdate(sql);
		sql = "delete from admin_role where admin_id='"+id+"'";
		System.out.println("=del2==="+sql);
		dao.executeUpdate(sql);
	}

	public List youquery(String id) {
		// TODO Auto-generated method stub
		sql="select * from admin_role where admin_id='"+id+"'";
		System.out.println("Ȩ"+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

	public void fenjiaose(String admin_id,String id) {
		// TODO Auto-generated method stub
		sql="insert into admin_role(admin_id,role_id) values('"+admin_id+"','"+id+"')";
		System.out.println("=add==="+sql);
		dao.executeUpdate(sql);
	}

	public void adminroledel(String id) {
		// TODO Auto-generated method stub
		sql="delete from admin_role where admin_id='"+id+"'";
		System.out.println("=del==="+sql);
		dao.executeUpdate(sql);
	}
	
}


