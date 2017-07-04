package qt.comzhaopinxinxi;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComZhaoPinXinXiService {
	DaoImpl dao=new DaoImpl();
	List list;
	String sql;
	public List query(String company_id) {
		// TODO Auto-generated method stub
		sql="select want_information_id,want_name,want_profession,want_position,want_age,want_look_count,want_language,want_time,want_keyword,want_amount,want_information.big_address_id,big_address.big_address_name,want_information.small_address_id,small_address.small_address_name,want_sex,want_month_wage,want_now_address,want_address,want_degree,want_experience,want_require,company_id from want_information ,big_address ,small_address where want_information.company_id='"+company_id+"' and want_information.big_address_id=big_address.big_address_id and want_information.small_address_id=small_address.small_address_id";
		list=dao.executeQuery(sql);
		System.out.println("=====zhaopinquery======"+sql);
		return list;
	}
	public List querysheng() {
		// TODO Auto-generated method stub
		sql="select * from big_address";
		list=dao.executeQuery(sql);
		System.out.println("sheng======"+sql);
		return list;
	}
	public List queryshi(String id)
	{
		sql="select * from small_address where big_address_id='"+id+"'";
		System.out.println("sheng========="+sql);
		List list=dao.executeQuery(sql);		
		return list;
		
	}
	public void add(Object obj) {
		// TODO Auto-generated method stub
		ComZhaoPinXinXiDomain st=(ComZhaoPinXinXiDomain)obj;
		sql="insert into want_information(want_name,want_profession,want_position,want_age,want_look_count,want_language,want_time,want_keyword,want_amount,big_address_id,small_address_id,want_sex,want_month_wage,want_now_address,want_address,want_degree,want_experience,want_require,company_id)" +
				"values('"+st.getWant_name()+"','"+st.getWant_profession()+"','"+st.getWant_position()+"','"+st.getWant_age()+"',0,'"+st.getWant_language()+"','"+st.getWant_time()+"','"+st.getWant_keyword()+"','"+st.getWant_amount()+"','"+st.getBig_address_id()+"','"+st.getSmall_address_id()+"','"+st.getWant_sex()+"','"+st.getWant_month_wage()+"','"+st.getWant_now_address()+"','"+st.getWant_address()+"','"+st.getWant_degree()+"','"+st.getWant_experience()+"','"+st.getWant_require()+"','"+st.getCompany_id()+"')";
		dao.executeUpdate(sql);
		System.out.println("add========"+sql);
	}
	public void del(String id) {
		// TODO Auto-generated method stub
		sql="delete from want_information where want_information_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("===delzhaopin======="+sql);
		
	}
	public List updatequery(String id) {
		// TODO Auto-generated method stub
		sql="select * from want_information where want_information_id='"+id+"'";
		List list=dao.executeQuery(sql);
		return list;
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
	public void zhaopinupdate(Object obj) {
		// TODO Auto-generated method stub
		ComZhaoPinXinXiDomain st=(ComZhaoPinXinXiDomain)obj;		
		sql="update want_information set want_name='"+st.getWant_name()+"',want_profession='"+st.getWant_profession()+"',want_position='"+st.getWant_position()+"',want_age='"+st.getWant_age()+"',want_language='"+st.getWant_language()+"',want_time='"+st.getWant_time()+"',want_keyword='"+st.getWant_keyword()+"',want_amount='"+st.getWant_amount()+"',big_address_id='"+st.getBig_address_id()+"',small_address_id='"+st.getSmall_address_id()+"',want_sex='"+st.getWant_sex()+"',want_month_wage='"+st.getWant_month_wage()+"',want_now_address='"+st.getWant_now_address()+"',want_address='"+st.getWant_address()+"',want_degree='"+st.getWant_degree()+"',want_experience='"+st.getWant_experience()+"',want_require='"+st.getWant_require()+"' where want_information_id='"+st.getWant_information_id()+"'";
		dao.executeUpdate(sql);
		System.out.println("===updatezhaopin======="+sql);		
	}
	public List kanquery(String want_information_id) {
		// TODO Auto-generated method stub
		sql="select * from want_information w,big_address b,small_address s where w.big_address_id=b.big_address_id and w.small_address_id=s.small_address_id and want_information_id='"+want_information_id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("===kanqueryzhaopin======="+sql);
		return list;
	}

}


