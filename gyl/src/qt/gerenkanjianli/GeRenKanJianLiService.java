package qt.gerenkanjianli;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenKanJianLiService {
	DaoImpl dao=new DaoImpl();
	List list;
	String sql;
	
	
	public List Query(String id){
		sql="select email,resume_id,resume_name,resume_look_count,resume_sex,resume_birth,resume_age,work_year,marital_status,account_place1,account_place2,identity_num,graduate_date,stu_or_social,graduate_school,major,educational_level,telephone1,telephone2,contact_address,post_code,now_live_city1,now_live_city2,study_history,self_assess,user_language,user_language_ability,special_expertise,special_use_time,now_status,hope_job_category,now_industry,now_occupation,now_position,hope_money,hope_industry,hope_occupation,hope_position,hope_address1,hope_address2 " +
				"from resume,user_info where resume.user_info_id='"+id+"' and resume.user_info_id=user_info.user_info_id";
		list=dao.executeQuery(sql);
		System.out.println("==query=="+sql);
		return list;		
	}

	public List QueryPhone(String id){
		sql="select * from photo where photo_u_id='"+id+"' and photo_is_examine='ÊÇ'";
		list=dao.executeQuery(sql);
		System.out.println("==query=="+sql);
		return list;		
	}
}


