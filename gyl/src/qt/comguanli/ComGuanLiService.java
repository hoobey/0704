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
	 * Ϊ��ҵ�Ƽ��˲�
	 * 
	 * */
	public List comquery(String company_id)
	{ 
		sql="select top 10 * from resume  where resume_name!='null' and now_status!='null' and major in(select want_profession from want_information where company_id='"+company_id+"') order by resume_id desc";
		System.out.println("�ҵ�����"+sql);
		List list=dao.executeQuery(sql);
		return list;
		
	}
	
	/**
	 * ���ж���Ͷ���ļ�
	 * 
	 * */
	public List shoutouquery(String company_id)
	{ 
		sql="select * from throw_history  where  company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("sssssssssssss"+sql);
		System.out.println("����"+list.size());
		return list;
		
	}
	/**
	 * ���ж���Ͷ���ļ�
	 * 
	 * */
	public List mianshiListquery(String company_id)
	{ 
		sql="select * from interview_info  where  company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		return list;
		
	}
	/**
	 * ���ղ��˶����˲�
	 * 
	 * */
	public List shoucangquery(String company_id)
	{ 
		sql="select * from save_man  where  company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		return list;
		
	}
}


