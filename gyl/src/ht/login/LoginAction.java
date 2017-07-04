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
 * 登陆Action
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
		System.out.println("来到了service");
		actionType=(String)request.getParameter("actionType");
		if(actionType.equals("dl")){
			dl(request,response);
		}
	}
	
	
	/**
	 * 登陆方法
	 * */
	public void dl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//接收前台穿过来的登录名和密码
		String loginName=(String)request.getParameter("loginName");
		System.out.println(loginName);
		String loginPassword=(String)request.getParameter("loginPassword");
		//判断用户名空不空
		//空
		//返回no
		if(loginName==null || loginName.equals("")||loginPassword==null || loginPassword.equals(""))
		{
			response.sendRedirect("jsp/ht/error.jsp?error=no");

		}
		else
		{
			//返回no
			//不是空 看密码是否正确
			
			System.out.println(loginName);
			//通过业务层的查询方法来查看用户的权限。
			Loginlist=loginService.Query(loginName, loginPassword,"father_id='01'");
			Loginlist1=loginService.Query(loginName, loginPassword,"father_id<>'01' and father_id<>'-1'");
			System.out.println(Loginlist.size());
			//就是说，没这个人,这个人没权限
			if(Loginlist == null || Loginlist.isEmpty())
			{
				RequestDispatcher(request,response,"jsp/ht/error.jsp?error=error");
			}
			else{
				//通过用户请求创建一个session
				HttpSession session=request.getSession();
				//把权限list让如session
				session.setAttribute("htLoginlist", Loginlist);
				session.setAttribute("htLoginlist1", Loginlist1);
				//查管理员的名字
				List yhList=loginService.queryYh(loginName.trim(), loginPassword.trim());
				//管理员的名字和登录时间放入session
				session.setAttribute("htyhList", yhList);
				session.setAttribute("htloginTime", Data.CurrentYMDHSMTime());
				loginService.updatetime(Data.CurrentYMDHSMTime(),loginName,loginPassword);						
				RequestDispatcher(request,response,"jsp/ht/frame.jsp");
			}
		}
	
	}
	/**
	 * 转页方法
	 * */
	public void RequestDispatcher (HttpServletRequest request,HttpServletResponse response,String str) throws ServletException, IOException{
		System.out.println("===");
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request, response);
	}
}
