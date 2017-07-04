package qt.comguanli;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComGuanLiService {
	DaoImpl dao=new DaoImpl();
	String sql;
	
	/**
	 * 为企业推荐人才
	 * 
	 * */
	public List comquery(String company_id)
	{ 
		sql="select top 10 * from resume  where resume_name!='null' and now_status!='null' and major in(select want_profession from want_information where company_id='"+company_id+"') order by resume_id desc";
		System.out.println("找到的推"+sql);
		List list=dao.executeQuery(sql);
		return list;
		
	}
	
	/**
	 * 看有多少投来的简单
	 * 
	 * */
	public List shoutouquery(String company_id)
	{ 
		sql="select * from throw_history  where  company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("sssssssssssss"+sql);
		System.out.println("个数"+list.size());
		return list;
		
	}
	/**
	 * 看有多少投来的简单
	 * 
	 * */
	public List mianshiListquery(String company_id)
	{ 
		sql="select * from interview_info  where  company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		return list;
		
	}
	/**
	 * 看收藏了多少人才
	 * 
	 * */
	public List shoucangquery(String company_id)
	{ 
		sql="select * from save_man  where  company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		return list;
		
	}
}


