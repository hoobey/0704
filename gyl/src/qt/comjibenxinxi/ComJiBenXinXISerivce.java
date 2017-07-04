package qt.comjibenxinxi;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComJiBenXinXISerivce {
	DaoImpl dao=new DaoImpl();
	String sql;
	public List comjibenquery(String company_id) {
		// TODO Auto-generated method stub
		sql="select company_id,big_address_id,small_address_id,com_contact_address,com_post_code,com_contact_telephone,com_contact_people,com_fax,com_extent,isnull(com_url,'') as com_url,com_email,com_summary from company where company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}
	public List querysheng() {
		// TODO Auto-generated method stub
		sql="select * from big_address";
		System.out.println("sheng========="+sql);
		List list=dao.executeQuery(sql);
		return list;
	}
	
	public List queryshi(String id)
	{
		sql="select * from small_address where big_address_id='"+id+"'";
		System.out.println("sheng========="+sql);
		List list=dao.executeQuery(sql);		
		return list;
		
	}
	public void jibenxinxiupdate(Object obj) {
		// TODO Auto-generated method stub
		ComJiBenXinXIDomain st=(ComJiBenXinXIDomain)obj;
		sql="update company set big_address_id='"+st.getBig_address_id()+"',small_address_id='"+st.getSmall_address_id()+"',com_contact_address='"+st.getCom_contact_address()+"',com_post_code='"+st.getCom_post_code()+"',com_contact_telephone='"+st.getCom_contact_telephone()+"',com_contact_people='"+st.getCom_contact_people()+"',com_fax='"+st.getCom_fax()+"',com_extent='"+st.getCom_extent()+"',com_url='"+st.getCom_url()+"',com_email='"+st.getCom_email()+"',com_summary='"+st.getCom_summary()+"' where company_id='"+st.getCompany_id()+"'";
		dao.executeUpdate(sql);
		System.out.println("comjibengai======"+sql);
		
	}
	/**
	 * 想让我省对的市也是选中的，就查一下我市的列表
	 * 
	 * 
	 * */
	
	
	public List danqianshiquery(String sheng) {
		// TODO Auto-generated method stub
		sql="select * from small_address where big_address_id='"+sheng+"'";
		List list=dao.executeQuery(sql);
		return list;
	}

}


