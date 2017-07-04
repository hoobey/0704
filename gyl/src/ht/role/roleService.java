package ht.role;


import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class roleService {
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
		roleDomain st=(roleDomain)obj;
		sql="select * from role ";
		if(null!=st.getRole_name())
		{
			System.out.println("====="+st.getRole_name());
			sql=sql+" where role_name like '%"+st.getRole_name()+"%'";
		}
		List list=dao.executeQuery(sql,st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;		
	}

	public void Add(Object obj) {
		// TODO Auto-generated method stub
		roleDomain st=(roleDomain)obj;
		sql="insert into role(role_name) values('"+st.getRole_name()+"')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}

	public List QueryOne(String role_id) {
		// TODO Auto-generated method stub
		sql = "select * from role where role_id='"+role_id+"'";
		List list = dao.executeQuery(sql);
		System.out.println("=queryOne==="+sql);
		return list;
	}

	public void Update(Object obj) {
		// TODO Auto-generated method stub
		roleDomain st=(roleDomain)obj;
		sql = "update role set role_name='"+st.getRole_name()+"' where role_id='"+st.getRole_id()+"'";
		System.out.println("=update==="+sql);
		dao.executeUpdate(sql);
	}

	public void Del(String id) {
		// TODO Auto-generated method stub
		sql = "delete from role where role_id='"+id+"'";
		System.out.println("=del1==="+sql);
		dao.executeUpdate(sql);
		sql = "delete from admin_role where role_id='"+id+"'";
		System.out.println("=del2==="+sql);
		dao.executeUpdate(sql);
		sql = "delete from role_limit where role_id='"+id+"'";
		System.out.println("=del3==="+sql);
		dao.executeUpdate(sql);
	}

	public List queryone(String id) {
		// TODO Auto-generated method stub
		sql="select * from role where role_id='"+id+"'";
		System.out.println("sql========"+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

	public List limitquery(String sql1) {
		// TODO Auto-generated method stub
		sql="select * from limit";
		sql =sql+" where "+sql1;
		System.out.println("limit++++"+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

	public List youquery(String id) {
		// TODO Auto-generated method stub
		sql="select * from role_limit where role_id='"+id+"'";
		System.out.println("х╗оч"+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

	public void adminlimitdel(String role_id) {
		// TODO Auto-generated method stub
		sql="delete from role_limit where role_id='"+role_id+"'";
		System.out.println("=del==="+sql);
		dao.executeUpdate(sql);
	}

	public void fenquanxian(String role_id, String id) {
		// TODO Auto-generated method stub
		sql="insert into role_limit(role_id,limit_id) values('"+role_id+"','"+id+"')";
		System.out.println("=add==="+sql);
		dao.executeUpdate(sql);
	}
}


