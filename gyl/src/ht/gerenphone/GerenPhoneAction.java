package ht.gerenphone;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/** 
 * @author  lkx
 * @version 1.0 
 */

public class GerenPhoneAction extends HttpServlet {
	private List list;
	private GerenPhoneDomain domain=new GerenPhoneDomain();
	private GerenPhoneService service =new GerenPhoneService();

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
			else if(actionType.equals("alterexamine")){
				this.alterexamine(req, resp);
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
			String photo_id=req.getParameter("photo_id");
			String photo_url=req.getParameter("photo_url");
			String photo_is_examine=req.getParameter("photo_is_examine");

			domain.setUser_info_id(user_info_id);
			domain.setUser_info_name(user_info_name);
			domain.setPhoto_id(photo_id);
			domain.setPhoto_url(photo_url);
			domain.setPhoto_is_examine(photo_is_examine);
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
		req.setAttribute("phonelist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/gerenphone/geRenPhoneList.jsp",req,resp);
		
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("=============================");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			list=(List)service.queryUrl(id[i]);
			Map map=(Map) list.get(0);
			String url=(String) map.get("photo_url");
			System.out.println("============================="+url);		
			delupload(req,resp,url);
			service.Del(id[i]);
		}
		
		resp.sendRedirect("gerenphone?actionType=query");
	}
	
	protected void alterexamine(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("============alterexamine================");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.UpdateExamine(id[i]);
		}
		
		resp.sendRedirect("gerenphone?actionType=query");
		
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


