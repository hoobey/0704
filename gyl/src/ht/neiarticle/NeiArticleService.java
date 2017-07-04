package ht.neiarticle;

import java.util.List;

import com.dao.DaoImpl;

import com.util.Page;
import com.util.PageConfig;

public class NeiArticleService {
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
		NeiArticleDomain st=(NeiArticleDomain)obj;
		//is_recommend为是否推荐，查的单词又忘了意思，记注.
		sql="select * from article,article_sort where is_recommend='否' and article_sort.article_sort_id=article.article_sort_id ";
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
	
	public List QueryLB()
	{
		sql = "select * from article_sort";
		list = dao.executeQuery(sql);
		System.out.println("=QueryLB==="+sql);
		return list;
	}

	
	public List QueryOne(String id) {
		// TODO Auto-generated method stub
		sql = "select * from article,article_sort where article_id='"+id+"' and article.article_sort_id=article_sort.article_sort_id";
		list = dao.executeQuery(sql);
		System.out.println("=queryOne==="+sql);
		return list;
	}
	
	public void Add(Object obj) {
		// TODO Auto-generated method stub
		NeiArticleDomain domain = (NeiArticleDomain)obj;
		sql = "insert into article(article_name,look_count,update_time,content,article_sort_id,is_recommend,is_examine) values('"+domain.getArticle_name()+"',"+domain.getCount()+",getdate(),'"+domain.getContent()+"','"+domain.getArticle_sort_id()+"','否','是')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
	
	public void Del(String id) {
		// TODO Auto-generated method stub
		sql = "delete from article where article_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
	}
	
	public void Update(Object obj) {
		// TODO Auto-generated method stub
		NeiArticleDomain domain = (NeiArticleDomain)obj;
		sql = "update article set article_name='"+domain.getArticle_name()+"',look_count="+domain.getCount()+",update_time=getdate(),article_sort_id='"+domain.getArticle_sort_id()+"',content='"+domain.getContent()+"' where article_id='"+domain.getArticle_id()+"'";
		System.out.println("=update==="+sql);
		dao.executeUpdate(sql);
	}

}
