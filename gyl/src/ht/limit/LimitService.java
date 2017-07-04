package ht.limit;


import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class LimitService {
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
		LimitDomain st=(LimitDomain)obj;
		sql="select * from limit where father_id='01'";
		if(null!=st.getLimit_name())
		{
			System.out.println("====="+st.getLimit_name());
			sql=sql+" and limit_name like '%"+st.getLimit_name()+"%'";
		}
		List list=dao.executeQuery(sql,st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;		
	}

	public void Add(Object obj,int id) {
		// TODO Auto-generated method stub
		LimitDomain st=(LimitDomain)obj;
		int id1=id+1;
		String limit_id="0"+id1;
		System.out.println("limit_id======="+limit_id);
		sql="insert into limit(limit_id,limit_name,is_link,father_id) values('"+limit_id+"','"+st.getLimit_name()+"','0','01')";
		System.out.println("da_add======="+sql);
		dao.executeUpdate(sql);
	}

	public List Querygaoid() {
		// TODO Auto-generated method stub
		sql="select max(limit_id) as limit_id from limit where father_id='01'";
		List list=dao.executeQuery(sql);
		return list;
	}
	
	public List Querydiid(String father_id) {
		// TODO Auto-generated method stub
		sql="select max(limit_id) as limit_id from limit where father_id='"+father_id+"'";
		System.out.println("====="+sql);
		List list=dao.executeQuery(sql);
		return list;
	}	

	public List diQuery(Object obj) {
		// TODO Auto-generated method stub
		LimitDomain st=(LimitDomain)obj;
		sql="select * from limit where father_id='"+st.getLimit_id()+"' ";
		if(null!=st.getLimit_name())
		{
			System.out.println("====="+st.getLimit_name());
			sql=sql+" and limit_name like '%"+st.getLimit_name()+"%'";
		}
		System.out.println("sql"+sql);
		List list=dao.executeQuery(sql,st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}

	public void diAdd(Object obj, String id) {
		// TODO Auto-generated method stub
		LimitDomain st=(LimitDomain)obj;
		int id1=Integer.parseInt(id);
		id1=id1+1;
		String limit_id=st.getFather_id()+"0"+id1;
		System.out.println("limit_id111======="+limit_id);
		sql="insert into limit(limit_id,limit_name,is_link,father_id,url) values('"+limit_id+"','"+st.getLimit_name()+"','1','"+st.getFather_id()+"','"+st.getUrl()+"')";
		System.out.println("da_add======="+sql);
		dao.executeUpdate(sql);
	}

	public List queryOne(String limit_id) {
		// TODO Auto-generated method stub
		sql="select * from limit where limit_id='"+limit_id+"'";
		System.out.println("sql========"+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

	public void gaoupdate(Object obj) {
		// TODO Auto-generated method stub
		LimitDomain st=(LimitDomain)obj;
		sql="update limit set limit_name='"+st.getLimit_name()+"' where limit_id='"+st.getLimit_id()+"'";
		System.out.println("sql===="+sql);
		dao.executeUpdate(sql);	
	}

	public void Del(String id) {
		// TODO Auto-generated method stub
		sql="delete from limit where limit_id='"+id+"'";
		System.out.println("del1===="+sql);
		dao.executeUpdate(sql);
		sql="delete from limit where father_id='"+id+"'";
		System.out.println("del2===="+sql);
		dao.executeUpdate(sql);
		sql="delete from role_limit where limit_id='"+id+"'";
		System.out.println("del3===="+sql);
		dao.executeUpdate(sql);
	}

	public void diupdate(Object obj) {
		// TODO Auto-generated method stub
		LimitDomain st=(LimitDomain)obj;
		sql="update limit set limit_name='"+st.getLimit_name()+"',url='"+st.getUrl()+"' where limit_id='"+st.getLimit_id()+"'";
		System.out.println("sql===="+sql);
		dao.executeUpdate(sql);			
	}

	public void diDel(String id) {
		// TODO Auto-generated method stub
		sql="delete from limit where limit_id='"+id+"'";
		System.out.println("del===="+sql);
		dao.executeUpdate(sql);
	}

}


