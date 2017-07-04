package ht.articleclass;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ArticleClassService {
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

	public void Add(Object obj)
	{
		ArticleClassDomain domain=(ArticleClassDomain)obj;
		sql="insert into article_sort(article_sort_name) values('"+domain.getArticle_sort_name()+"')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
	
	public void Del(String id) {
		sql = "delete from article_sort where article_sort_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);

	}

	public List Query(Object obj) {
		// TODO Auto-generated method stub
		ArticleClassDomain st=(ArticleClassDomain)obj;
		sql="select * from article_sort";
		if(null!=st.getArticle_sort_name())
		{
			System.out.println("====="+st.getArticle_sort_name());
			sql=sql+" where article_sort_name like '%"+st.getArticle_sort_name()+"%'";
		}
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;		
	}
	public List QueryOne(String id) {
		// TODO Auto-generated method stub
		sql = "select * from article_sort where article_sort_id='"+id+"'";
		list = dao.executeQuery(sql);
		System.out.println("=queryOne==="+sql);
		return list;
	}	
	public void Update(Object obj) {
		// TODO Auto-generated method stub
		ArticleClassDomain domain = (ArticleClassDomain)obj;
		sql = "update article_sort set article_sort_name='"+domain.getArticle_sort_name()+"' where article_sort_id='"+domain.getArticle_sort_id()+"'";
		System.out.println("=update==="+sql);
		dao.executeUpdate(sql);
	}
	
}


