package qt.zhaowenzhang;

import ht.neiarticle.NeiArticleDomain;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ZhaoWenZhangService {
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
		ZhaoWenZhangDomain st=(ZhaoWenZhangDomain)obj;
		//is_examine因为让用户看到的必须是审核后的
		sql="select * from article where is_examine='是'";
		if(null!=st.getArticle_sort_id() && !st.getArticle_sort_id().equals("0") && !st.getArticle_sort_id().equals(""))
		{
			sql=sql+" and article_sort_id='"+st.getArticle_sort_id()+"'";
		}
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;		
	}
	
	public List QueryLB()
	{
		sql = "select * from article_sort";
		System.out.println("=QueryLB==="+sql);
		list = dao.executeQuery(sql);
		
		return list;
	}
	public List querycontent(String id)
	{
		sql = "select * from article where article_id='"+id+"'";
		list = dao.executeQuery(sql);
		System.out.println("=Query==="+sql);
		return list;
	}
	
	public void addone(String id,int count)
	{
		sql="update article set look_count="+count+"+1 where article_id='"+id+"'";
		dao.executeUpdate(sql);
	}
	public void addtui(Object obj)
	{
		ZhaoWenZhangDomain domain=(ZhaoWenZhangDomain)obj;
		sql="insert into article(article_name,look_count,update_time,content,article_sort_id,is_recommend,is_examine) " +
				"values('"+domain.getArticle_name()+"',0,getdate(),'"+domain.getContent()+"','"+domain.getArticle_sort_id()+"','是','否')";
		System.out.println("==add==="+sql);
		dao.executeUpdate(sql);
	}
}


