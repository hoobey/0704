package ht.shenarticle;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Data;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ShenArticleService {
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
	public void Del(String id) {
		sql = "delete from article where article_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);		
	}


	public List Query(Object obj) {
		// TODO Auto-generated method stub
		ShenArticleDomain st=(ShenArticleDomain)obj;
		sql="select * from article where is_recommend='ÊÇ'";
		if(null!=st.getArticle_name())
		{
			sql=sql+" and article_name like '%"+st.getArticle_name()+"%'";
		}
		sql=sql+"order by article.update_time desc";
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}


	public List QueryOne(String id) {
		// TODO Auto-generated method stub
		sql = "select * from article where article_id='"+id+"'";
		list = dao.executeQuery(sql);
		System.out.println("=queryOne==="+sql);
		return list;
	}


	public void Update(Object obj) {
		// TODO Auto-generated method stub
		ShenArticleDomain domain = (ShenArticleDomain)obj;
		sql = "update article set article_name='"+domain.getArticle_name()+"',update_time=getdate(),content='"+domain.getContent()+"' where article_id='"+domain.getArticle_id()+"'";
		System.out.println("=update==="+sql);
		dao.executeUpdate(sql);	
	}
	
	public void UpdateExamine(String id){
		sql = "update article set is_examine='ÊÇ' where article_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=examine==="+sql);	
	}
	public List QueryExamine(Object obj) {
		// TODO Auto-generated method stub
		ShenArticleDomain st=(ShenArticleDomain)obj;
		sql="select * from article where is_recommend='ÊÇ' and is_examine='·ñ'";
		if(null!=st.getArticle_name())
		{
			sql=sql+" and article_name like '"+st.getArticle_name()+"%'";
		}
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}
}


