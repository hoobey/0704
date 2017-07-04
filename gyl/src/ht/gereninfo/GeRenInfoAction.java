package ht.gereninfo;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.GBK;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenInfoAction extends HttpServlet {
	private List list;
	private GeRenInfoDomain domain=new GeRenInfoDomain();
	private GeRenInfoService service =new GeRenInfoService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		System.out.println("==========test======"+actionType+"===========");
		if(actionType.equals("query")){
			this.query(req, resp);
		}
			else if(actionType.equals("del")){
				this.del(req, resp);
		}
	
	}
	
		
		protected void RD(String URL,HttpServletRequest req, HttpServletResponse resp)
		{
			RequestDispatcher rd=req.getRequestDispatcher(URL);
			try {
				rd.forward(req, resp);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		protected void ST(HttpServletRequest req, HttpServletResponse resp)
		{
			String user_info_id=req.getParameter("user_info_id");
			String user_info_name=req.getParameter("user_info_name");
			String user_login_record=req.getParameter("user_login_record");
			String resume_name=GBK.toGBK(req.getParameter("resume_name"));
			String resume_age=req.getParameter("resume_age");
			String work_year=req.getParameter("work_year");
			String graduate_school=GBK.toGBK(req.getParameter("graduate_school"));
			String contact_address=GBK.toGBK(req.getParameter("contact_address"));
			String study_history=GBK.toGBK(req.getParameter("study_history"));
			domain.setUser_info_id(user_info_id);
			domain.setUser_info_name(user_info_name);
			domain.setUser_login_record(user_login_record);
			domain.setResume_name(resume_name);
			domain.setResume_age(resume_age);
			domain.setWork_year(work_year);
			domain.setGraduate_school(graduate_school);
			domain.setContact_address(contact_address);
			domain.setStudy_history(study_history);
		}
		

	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=(String)req.getParameter("pageNumber");
		int pageCount=1;
		if(page!=null && page!=""){
			pageCount=Integer.parseInt(page);			
		}
		domain.setPageCount(pageCount);
		List list=service.Query(domain);
		req.setAttribute("userinfolist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/gereninfo/geRenInfoList.jsp",req,resp);
		
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("=============================");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			list=(List)service.queryUrl(id[i]);
			if(list.size()!=0)
			{
				Map map=(Map) list.get(0);			
				String url=(String) map.get("photo_url");
				System.out.println("============================="+url);		
				delupload(req,resp,url);
				service.Del(id[i]);
			}
			else
			{
				service.Del(id[i]);
			}
		}
		
		resp.sendRedirect("gereninfo?actionType=query");
	}

	//删除文件
	public String delupload(HttpServletRequest request, HttpServletResponse response,String url)
	{
		String fileName=url;
		
		String   downloadFileDir=request.getRealPath(File.separator);
		String fh="";
		String tpdz=downloadFileDir+fileName;
		if(tpdz==null)
		{
			
		}else{
			File file=new File(tpdz);
			boolean cz=file.exists();
			if(cz==true)
			{
				boolean a=file.delete();
				//System.out.println(a);
				if(a==true)
				{
					System.out.println("删除成功");
					
					fh="删除成功";
					
				}else{
					System.out.println("删除失败");
					fh="删除失败";
					
				}
			}else{
				System.out.println("没有文件"); 
				fh="没有文件";
				
			}
		}
		return fh;
	}
}


