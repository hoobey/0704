package qt.gernjibenxinxi;


import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenJiBenXinXiService {
	DaoImpl dao=new DaoImpl();
	List list;
	String sql;
	
/**
 * 因为用的是一个表，加时得看看有没有加另一方面的信息
 * 
 * */	
	public List Queryid(String id){
		sql="select resume_id from resume where user_info_id='"+id+"'";
		list=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return list;		
	}	
	
	
	public List Query(String id){
		sql="select * from resume where user_info_id='"+id+"'";
		list=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return list;		
	}
	public void Add(Object obj) {
		// TODO Auto-generated method stub
		GeRenJiBenXinXiDomain domain = (GeRenJiBenXinXiDomain)obj;

	
		sql = "insert into resume(resume_name,resume_look_count,resume_sex,resume_birth,resume_age,work_year,marital_status,account_place1,account_place2," +
				"identity_num,graduate_date,stu_or_social,graduate_school,major,educational_level,telephone1,telephone2,contact_address,post_code,now_live_city1,now_live_city2,study_history,self_assess,user_language,user_language_ability,special_expertise,special_use_time,user_info_id) " +
				"values('"+domain.getResume_name()+"',0,'"+domain.getResume_sex()+"','"+domain.getResume_birth()+"','"+domain.getResume_age()+"','"+domain.getWork_year()+"','"+domain.getMarital_status()+"','"+domain.getAccount_place1()+"','"+domain.getAccount_place2()+"'," +
						"'"+domain.getIdentity_num()+"','"+domain.getGraduate_date()+"','"+domain.getStu_or_social()+"','"+domain.getGraduate_school()+"','"+domain.getMajor()+"','"+domain.getEducational_level()+"','"+domain.getTelephone1()+"','"+domain.getTelephone2()+"','"+domain.getContact_address()+"','"+domain.getPost_code()+"','"+domain.getNow_live_city1()+"','"+domain.getNow_live_city2()+"','"+domain.getStudy_history()+"','"+domain.getSelf_assess()+"','"+domain.getUser_language()+"','"+domain.getUser_language_ability()+"','"+domain.getSpecial_expertise()+"','"+domain.getSpecial_use_time()+"','"+domain.getUser_info_id()+"')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);		
	}
	public void update(Object obj) {
		// TODO Auto-generated method stub
		GeRenJiBenXinXiDomain domain = (GeRenJiBenXinXiDomain)obj;
		sql = "update resume set resume_name='"+domain.getResume_name()+"',resume_sex='"+domain.getResume_sex()+"',resume_birth='"+domain.getResume_birth()+"',resume_age='"+domain.getResume_age()+"',work_year='"+domain.getWork_year()+"',marital_status='"+domain.getMarital_status()+"',account_place1='"+domain.getAccount_place1()+"',account_place2='"+domain.getAccount_place2()+"'," +
				"identity_num='"+domain.getIdentity_num()+"',graduate_date='"+domain.getGraduate_date()+"',stu_or_social='"+domain.getStu_or_social()+"',graduate_school='"+domain.getGraduate_school()+"',major='"+domain.getMajor()+"',educational_level='"+domain.getEducational_level()+"',telephone1='"+domain.getTelephone1()+"',telephone2='"+domain.getTelephone2()+"'," +
						"contact_address='"+domain.getContact_address()+"',post_code='"+domain.getPost_code()+"',now_live_city1='"+domain.getNow_live_city1()+"',now_live_city2='"+domain.getNow_live_city2()+"',study_history='"+domain.getStudy_history()+"',self_assess='"+domain.getSelf_assess()+"',user_language='"+domain.getUser_language()+"',user_language_ability='"+domain.getUser_language_ability()+"',special_expertise='"+domain.getSpecial_expertise()+"',special_use_time='"+domain.getSpecial_use_time()+"' " +
								"where user_info_id='"+domain.getUser_info_id()+"' " ;
		dao.executeUpdate(sql);
		System.out.println("=update==="+sql);
	}
	/**
	 * 改时用来查的，实际上是多余的，用上面的就可以了，我真傻，不过既然写上了就这么地吧
	 * 
	 * */
	public List queryone(String id){
		sql="select * from resume where user_info_id='"+id+"'";
		list=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return list;		
	}
}


