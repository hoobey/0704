package qt.comzhuce;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComZhuCeService {
	DaoImpl dao=new DaoImpl();
	String sql;
	
	
	public List querysheng()
	{
		sql="select * from big_address";
		System.out.println("sheng========="+sql);
		List list=dao.executeQuery(sql);		
		return list;
		
	}
	
	public List queryming(String ming)
	{
		sql="select * from company where com_login_name='"+ming+"'";
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
	public void addcomzhuce(Object obj)
	{
		ComZhuCeDomain st=(ComZhuCeDomain)obj;
		sql="insert into company(company_id,com_login_name,com_login_pass,company_name,big_address_id,small_address_id,com_contact_address,com_post_code,com_contact_telephone,com_contact_people,com_fax,com_property,com_register_money,com_extent,com_url,com_email,com_industry1,com_industry2,com_industry3,com_summary,com_is_examine,com_login_record)" +
				"values(newid(),'"+st.getCom_login_name()+"','"+st.getCom_login_pass()+"','"+st.getCompany_name()+"','"+st.getBig_address_id()+"','"+st.getSmall_address_id()+"','"+st.getCom_contact_address()+"','"+st.getCom_post_code()+"','"+st.getCom_contact_telephone()+"','"+st.getCom_contact_people()+"','"+st.getCom_fax()+"','"+st.getCom_property()+"','"+st.getCom_register_money()+"','"+st.getCom_extent()+"','"+st.getCom_url()+"','"+st.getCom_email()+"'," +
						"'"+st.getCom_industry1()+"','"+st.getCom_industry2()+"','"+st.getCom_industry3()+"','"+st.getCom_summary()+"','·ñ',getdate())";
		System.out.println("add========="+sql);
		dao.executeUpdate(sql);			
	}
	public List queryid(String name)
	{
		sql="select * from company where com_login_name='"+name+"'";
		System.out.println("queryid========="+sql);
		List list=dao.executeQuery(sql);		
		return list;
		
	}
	public void Add(String id,String url)
	{
		sql="insert into photo(photo_url,photo_u_id,photo_is_examine) values('"+url+"','"+id+"','·ñ')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
}


