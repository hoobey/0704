package qt.chuanzhaopian;

import ht.articleclass.ArticleClassDomain;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class zhaoPianService {
	DaoImpl dao=new DaoImpl();
	String sql;
	List list;
	List yhList;
	List zhaopianList;
	
	public List zhaopianquery(String id){
		sql="select * from photo where photo_u_id='"+id+"'";
		zhaopianList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return zhaopianList;		
	}
	
	public void Add(String id,String url)
	{
		sql="insert into photo(photo_url,photo_u_id,photo_is_examine) values('"+url+"','"+id+"','·ñ')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
	
	public void Upd(String id,String url)
	{
		sql="Update photo set photo_url='"+url+"' where photo_u_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
	
	public void del(String id)
	{
		sql="delete from photo  where photo_u_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}

}


