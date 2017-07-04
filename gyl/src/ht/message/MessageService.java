package ht.message;





import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class MessageService {

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
	
	public List Query(Object obj)
	{
		MessageDomain st= (MessageDomain)obj;
		sql="select message_id, message_content,message_updatetime,user_info_name,message_is_examine,is_reply from message m inner join user_info u on m.message_s_id=u.user_info_id "+
		"union all "+
		"(select message_id, message_content,message_updatetime,company_name,message_is_examine,is_reply from message m inner join company c on "+
		"m.message_s_id=c.company_id) order by message_updatetime asc";
		System.out.println("===query===sql=="+sql);
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;	
	}
	
	public void Del(String id) {
		sql = "delete from message where message_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del1==="+sql);	
		sql = "delete from message_reply where message_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);	
	}
	
	
	public void addReply(Object obj)
	{
		MessageDomain st=(MessageDomain)obj;
		sql="insert into message_reply(message_reply_content,message_reply_time,message_id) values('"+st.getMessage_reply_content()+"',getdate(),'"+st.getMessage_id()+"')";
		System.out.println("===addsql=="+sql);
		dao.executeUpdate(sql);
	}
	
	public void updateReply(String id)
	{
		sql="update message set is_reply='ÊÇ' where 	message_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=examine==="+sql);	
	}
	public void UpdateExamine(String id){

		sql = "update message set message_is_examine='ÊÇ' where message_id='"+id+"'";
		dao.executeUpdate(sql);
		}
	
	public List QueryOne(String id)
	{
		sql = "select * from message where message_id='"+id+"'";
		list = dao.executeQuery(sql);
		System.out.println("===message======="+sql);
		return list;
	}	
	
	public List QueryReplyOne(String id)
	{
		sql = "select message.message_id,message.message_content,message_reply.message_reply_content from message_reply,message where message.message_id='"+id+"' and message.message_id=message_reply.message_id";
		list = dao.executeQuery(sql);
		System.out.println("========================="+sql);
		return list;
	}
	
	public void updateReplyContent(Object obj)
	{
		MessageDomain st=(MessageDomain)obj;
		sql="update message_reply set message_reply_content='"+st.getMessage_reply_content()+"' where 	message_id='"+st.getMessage_id()+"'";
		dao.executeUpdate(sql);
		System.out.println("=examine==="+sql);	
	}
	public List MeiHuiQuery(Object obj) {
		// TODO Auto-generated method stub
		MessageDomain st= (MessageDomain)obj;
		sql="select * from (select message_id, message_content,message_updatetime,user_info_name,message_is_examine,is_reply from message m inner join user_info u on m.message_s_id=u.user_info_id " +
				"union all " +
				"select message_id, message_content,message_updatetime,company_name,message_is_examine,is_reply from message m inner join company c on " +
				"m.message_s_id=c.company_id) a  where a.is_reply='·ñ' order by a.message_updatetime asc";
		System.out.println("===query===sql=="+sql);
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}
	public List MeiShenQuery(Object obj) {
		// TODO Auto-generated method stub
		MessageDomain st= (MessageDomain)obj;
		sql="select * from (select message_id, message_content,message_updatetime,user_info_name,message_is_examine,is_reply from message m inner join user_info u on m.message_s_id=u.user_info_id " +
				"union all " +
				"select message_id, message_content,message_updatetime,company_name,message_is_examine,is_reply from message m inner join company c on " +
				"m.message_s_id=c.company_id) a  where a.message_is_examine='·ñ' order by a.message_updatetime asc";
		System.out.println("===query===sql=="+sql);
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}

}


