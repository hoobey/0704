package qt.gerentoujianli;

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

public class GeRenTouJianLiAction extends HttpServlet {
	GeRenTouJianLiSerivce serivce=new GeRenTouJianLiSerivce();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String	actionType=req.getParameter("actionType");
		if(actionType.equals("toudi"))
		{
			toudi(req,resp);
		}
	
	}
/**
 * ����ҵͶ�ݼ���
 * */	
	

	protected void toudi(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String want_information_id=req.getParameter("want_information_id");
		String user_info_id=req.getParameter("user_info_id");
		//1��ΪͶ�ݵı�����Ҫ��һ��������id ,2����Ϊ���뿴һ���û���д����û�У�������û�����id��������һ����
		List list=serivce.query(user_info_id);
		//�ȿ����û��ɲ�����Ͷ,��ǰ��û�м���
		if(list.size()>0)
		{
				Map map =(Map)list.get(0);	
				
				//�ȿɲ���Ͷ�еģ������Ƿ��д����
				if(map.get("resume_name")==null || map.get("resume_name").equals(""))
				{
					System.out.println("������Ϣûд");
					resp.sendRedirect("jsp/qt/no.jsp?gerencuo=jiben");
					return;
				}
				if(map.get("now_status")==null || map.get("now_status").equals(""))
				{
					System.out.println("��ְ������Ϣûд");
					resp.sendRedirect("jsp/qt/no.jsp?gerencuo=qzyx");
					return;
				}
				String resume_id=(String)map.get("resume_id");
				List ketoulist=serivce.ketouquery(company_id,want_information_id,user_info_id,resume_id);
				if(ketoulist.size()>0)
				{
					System.out.println("��Ͷ��");
					resp.sendRedirect("jsp/qt/no.jsp?gerencuo=congtou");
					return;
				}	
				//���������ˣ����ھ�Ҫ����,Ҳ�жϿɼ���
				serivce.Add(company_id,want_information_id,user_info_id,resume_id);
				System.out.println("����");
				RD("jsp/qt/ok.jsp",req, resp);
				return;
		}
		else
		{	
			System.out.println("û��д����");
			resp.sendRedirect("jsp/qt/no.jsp?gerencuo=jianli");
	
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
}


