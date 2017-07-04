package ht.comshen;

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

public class ComShenAction extends HttpServlet {
	ComShenService service=new ComShenService();
	ComShenDomain  domain=new ComShenDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			query(req,resp);
		}
		if(actionType.equals("queryone"))
		{
			queryone(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
		}
		if(actionType.equals("shen"))
		{
			shen(req,resp);
		}
	}
	
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=req.getParameter("pageNumber");
		int pageCount=1;
		if(page!=null&&page!="")
		{
			pageCount=Integer.parseInt(page);
		}
		domain.setPageCount(pageCount);
		List list=service.query(domain);
		req.setAttribute("comlist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/comshen/comshenList.jsp",req,resp);
		
	}

	protected void queryone(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		System.out.println("============"+company_id);
		List list=service.queryone(company_id);
		req.setAttribute("comxianglist", list);
		RD("jsp/ht/comshen/comxiang.jsp",req,resp);
		
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id=req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			List list=service.photoquery(id[i]);
			Map map=(Map)list.get(0);
			String url=(String)map.get("photo_url");
			delupload(req,resp,url);
			service.del(id[i]);
		}
		resp.sendRedirect("comshen?actionType=query");
		
	}
	protected void shen(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id=req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.shen(id[i]);
		}
		resp.sendRedirect("comshen?actionType=query");
		
	}
	protected void RD( String URL,HttpServletRequest req, HttpServletResponse resp)
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


