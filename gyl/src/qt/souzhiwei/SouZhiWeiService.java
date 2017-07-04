package qt.souzhiwei;



import java.util.List;

import com.dao.DaoImpl;

import com.util.Page;
import com.util.PageConfig;

public class SouZhiWeiService {
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
		SouZhiWeiDomain st=(SouZhiWeiDomain)obj;
		// TODO Auto-generated method stub
		//用来找到一些工作
		System.out.println(st.getWant_profession());
		sql="select * from want_information w inner join company  c on w.company_id =c.company_id where c.com_is_examine='是' ";
		if(null!=st.getWant_profession() && !st.getWant_profession().equals("0") && !st.getWant_profession().equals("=请选择职位大类别=")&&!st.getWant_profession().equals(""))
		{
			sql=sql+" and w.want_profession='"+st.getWant_profession()+"'";
		}
		if(null!=st.getWant_position() && !st.getWant_position().equals("0") && !st.getWant_position().equals("=请选择职位小类别=")&& !st.getWant_position().equals(""))
		{
			sql=sql+"  and w.want_position='"+st.getWant_position()+"'";
		}
		if(null!=st.getWant_keyword() && !st.getWant_keyword().equals(""))
		{
			sql=sql+" and w.want_keyword like '%"+st.getWant_keyword()+"%'";
		}		
		if(null!=st.getWant_degree() && !st.getWant_degree().equals("0") && !st.getWant_degree().equals(""))
		{
			sql=sql+" and w.want_degree='"+st.getWant_degree()+"'";
		}
		if(null!=st.getWant_experience() && !st.getWant_experience().equals("0") &&!st.getWant_experience().equals(""))
		{
			sql=sql+" and w.want_experience='"+st.getWant_experience()+"'";
		}
		if(null!=st.getBig_address_id() && !st.getBig_address_id().equals("0")&& !st.getBig_address_id().equals("")&&null!=st.getSmall_address_id() && !st.getSmall_address_id().equals("0")&& !st.getSmall_address_id().equals(""))
		{
			sql=sql+" and w.big_address_id='"+st.getBig_address_id()+"' and w.small_address_id='"+st.getSmall_address_id()+"'";
		}
		System.out.println("sssss=========="+dao.getCount());
		System.out.println("=gaoquery=="+sql);
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());		
		return list;		
	}
	public List zaiComQuery(String company_id) {
		// TODO Auto-generated method stub
		//企业的键接找详细信息
		sql="select company_id,com_login_name,com_login_pass,company_name,company.big_address_id,big_address.big_address_name,company.small_address_id,small_address.small_address_name,com_contact_address,com_post_code,com_contact_telephone,com_contact_people,com_fax,com_property,com_register_money,com_extent,isnull(com_url,'') as com_url,com_email,com_industry1,isnull(com_industry2,'') as com_industry2,isnull(com_industry3,'') as com_industry3,com_summary,com_is_examine,com_login_record from company ,big_address ,small_address where company.company_id='"+company_id+"' and company.big_address_id=big_address.big_address_id and company.small_address_id=small_address.small_address_id";
		list=dao.executeQuery(sql);
		System.out.println("=query=="+sql);
		return list;		
	}
	public List zaiComzhiQuery(String company_id) {
		// TODO Auto-generated method stub
		//企业的键接在找详细信息
		sql="select want_information_id,want_name,want_profession,want_position,want_age,want_look_count,want_language,want_time,want_keyword,want_amount,want_information.big_address_id,big_address.big_address_name,want_information.small_address_id,small_address.small_address_name,want_sex,want_month_wage,want_now_address,want_address,want_degree,want_experience,want_require,company_id from want_information ,big_address ,small_address where want_information.company_id='"+company_id+"' and want_information.big_address_id=big_address.big_address_id and want_information.small_address_id=small_address.small_address_id";
		list=dao.executeQuery(sql);
		System.out.println("=query=="+sql);
		return list;		
	}
	public List zaizhiQuery(String want_information_id) {
		// TODO Auto-generated method stub
		//企业的键接在在职位找详细信息
		sql="select c.company_id, com_login_name,company_name,b.big_address_name as comdadi,s.small_address_name as comxiaodi,com_contact_address,com_post_code,com_contact_telephone,com_contact_people,com_fax,com_property,com_register_money,com_extent,isnull(com_url,'') as com_url,com_email,com_industry1,isnull(com_industry2,'') as com_industry2,isnull(com_industry3,'') as com_industry3,com_summary,com_is_examine,com_login_record," +
				"want_information_id,want_name,want_profession,want_position,want_age,want_look_count,want_language,want_time,want_keyword,want_amount,b1.big_address_name as zhidadi,s1.small_address_name as zhixiaodi,want_sex,want_month_wage,want_now_address,want_address,want_degree,want_experience,want_require " +
				"from want_information w left join big_address b on w.big_address_id =b.big_address_id left join small_address s  on w.small_address_id =s.small_address_id  " +
				"left join company c on w.company_id=c.company_id  left join big_address b1 on c.big_address_id =b1.big_address_id left join small_address s1  on c.small_address_id =s1.small_address_id " +
				" where want_information_id='"+want_information_id+"'";
		list=dao.executeQuery(sql);
		System.out.println("=query=="+sql);
		return list;		
	}
	public void addone(String id,int count)
	{
		sql="update want_information set want_look_count="+count+"+1 where want_information_id='"+id+"'";
		dao.executeUpdate(sql);
	}


	public List querysheng() {
		// TODO Auto-generated method stub
		sql="select * from big_address";
		list=dao.executeQuery(sql);
		System.out.println("sheng======"+sql);
		return list;
	}


	

}
