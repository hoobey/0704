package ht.gerenphone;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GerenPhoneService {

	DaoImpl dao = new DaoImpl();
	List list;
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
		GerenPhoneDomain st=(GerenPhoneDomain)obj;
		sql="select * from user_info,photo where photo_is_examine='·ñ' and user_info.user_info_id=photo.photo_u_id";
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}
	
	public void Del(String id) {
		sql = "delete from photo where photo_u_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);		
	}
	
	public void UpdateExamine(String id){
		sql = "update photo set photo_is_examine='ÊÇ' where photo_u_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=examine==="+sql);	
	}
	public List queryUrl(String id) {
		// TODO Auto-generated method stub
		sql = "select photo_url from photo where photo_u_id='"+id+"'";
		list = dao.executeQuery(sql);
		System.out.println("=queryOne==="+sql);
		return list;
	}
}


