package qt.message;


import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class MessageService {
	DaoImpl dao=new DaoImpl();
	String sql;
	Page page;
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List query(Object obj) {
		// TODO Auto-generated method stub
		MessageDomain st=(MessageDomain)obj;
		sql="select * from message where message_is_examine='ÊÇ' order by message_updatetime desc";
		List list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		return list;
	}
	public List replyquery() {
		// TODO Auto-generated method stub
		sql="select * from message_reply r,message m where m.is_reply='ÊÇ' and m.message_id=r.message_id";
		List list=dao.executeQuery(sql);
		return list;
	}
	public void addmessage(Object obj) {
		// TODO Auto-generated method stub
		MessageDomain st=(MessageDomain)obj;
		sql="insert message(message_content,message_updatetime,message_is_examine,message_s_id,is_reply) values('"+st.getMessage_content()+"',getdate(),'·ñ','"+st.getMessage_s_id()+"','·ñ')";
		System.out.println("addmessage=========="+sql);
		dao.executeUpdate(sql);
	}

	
}


