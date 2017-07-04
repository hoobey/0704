/**
 * 
 */
package ht.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ht.login.LoginService;

import com.util.Data;



/**
 * ��½Action
 * @author Administrator
 *
 */
public class LoginAction extends HttpServlet {

	/**
	 * 
	 */



	private LoginService loginService=new LoginService();
	private List Loginlist;
	private List Loginlist1;
	private String actionType;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("������service");
		actionType=(String)request.getParameter("actionType");
		if(actionType.equals("dl")){
			dl(request,response);
		}
	}
	
	
	/**
	 * ��½����
	 * */
	public void dl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//����ǰ̨�������ĵ�¼��������
		String loginName=(String)request.getParameter("loginName");
		System.out.println(loginName);
		String loginPassword=(String)request.getParameter("loginPassword");
		//�ж��û����ղ���
		//��
		//����no
		if(loginName==null || loginName.equals("")||loginPassword==null || loginPassword.equals(""))
		{
			response.sendRedirect("jsp/ht/error.jsp?error=no");

		}
		else
		{
			//����no
			//���ǿ� �������Ƿ���ȷ
			
			System.out.println(loginName);
			//ͨ��ҵ���Ĳ�ѯ�������鿴�û���Ȩ�ޡ�
			Loginlist=loginService.Query(loginName, loginPassword,"father_id='01'");
			Loginlist1=loginService.Query(loginName, loginPassword,"father_id<>'01' and father_id<>'-1'");
			System.out.println(Loginlist.size());
			//����˵��û�����,�����ûȨ��
			if(Loginlist == null || Loginlist.isEmpty())
			{
				RequestDispatcher(request,response,"jsp/ht/error.jsp?error=error");
			}
			else{
				//ͨ���û����󴴽�һ��session
				HttpSession session=request.getSession();
				//��Ȩ��list����session
				session.setAttribute("htLoginlist", Loginlist);
				session.setAttribute("htLoginlist1", Loginlist1);
				//�����Ա������
				List yhList=loginService.queryYh(loginName.trim(), loginPassword.trim());
				//����Ա�����ֺ͵�¼ʱ�����session
				session.setAttribute("htyhList", yhList);
				session.setAttribute("htloginTime", Data.CurrentYMDHSMTime());
				loginService.updatetime(Data.CurrentYMDHSMTime(),loginName,loginPassword);						
				RequestDispatcher(request,response,"jsp/ht/frame.jsp");
			}
		}
	
	}
	/**
	 * תҳ����
	 * */
	public void RequestDispatcher (HttpServletRequest request,HttpServletResponse response,String str) throws ServletException, IOException{
		System.out.println("===");
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request, response);
	}
}
