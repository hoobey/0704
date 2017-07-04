/**
 * 
 */
package qt.login;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import qt.login.LoginService;

import com.util.Data;



/**
 * 登陆Action
 * @author lkx
 *
 */
public class LoginAction extends HttpServlet {

	private LoginService loginService=new LoginService();
	private List Loginlist;
	private String actionType;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("来到了service");
		
		actionType=(String)request.getParameter("actionType");
		
		if(actionType.equals("qtdl")){
			qtdl(request,response);
		}
		else if(actionType.equals("yzm")){
			yzm(request,response);
		}
		else if(actionType.equals("tuichu")){
			System.out.println("=======");
			tuichu(request,response);
		}
	}
	public void yzm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//设置页面不缓存
		response.setHeader("Pragma","No-cache");
		response.setHeader("Cache-Control","no-cache");
		response.setDateHeader("Expires", 0);
		
		// 在内存中创建图象
		int width=60;
		int height=20;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		
		// 获取图形上下文
		Graphics g = image.getGraphics();
		
		//生成随机类
		Random random = new Random();
		
		// 设定背景色
		g.setColor(getRandColor(200,250));
		g.fillRect(0, 0, width, height);
		
		//设定字体
		g.setFont(new Font("Times New Roman",Font.PLAIN,18));
		
		//画边框
		//g.setColor(new Color());
		//g.drawRect(0,0,width-1,height-1);
		
		
		// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
		g.setColor(getRandColor(160,200));
		for (int i=0;i<155;i++)
		{
			 int x = random.nextInt(width);
			 int y = random.nextInt(height);
	        int xl = random.nextInt(12);
	        int yl = random.nextInt(12);
		 	g.drawLine(x,y,x+xl,y+yl);
		}
		
		// 取随机产生的认证码(4位数字)
		String sRand="";
		for (int i=0;i<4;i++){
		    String rand=String.valueOf(random.nextInt(10));
		    sRand+=rand;
		    // 将认证码显示到图象中
		    g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));// 调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成
		    g.drawString(rand,13*i+6,16);
		}
		
		// 将认证码存入SESSION
		HttpSession session=request.getSession();
		session.setAttribute("rand",sRand);
		
		
		// 图象生效
		g.dispose();
		
		// 输出图象到页面
		ImageIO.write(image, "JPEG", response.getOutputStream());
		
		
	}
	
		Color getRandColor(int fc,int bc){//给定范围获得随机颜色
        Random random = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
        }
	
	/**
	 * 登陆方法
	 * */
	public void qtdl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//接收前台的值
		Map map1;
		String loginName=(String)request.getParameter("loginName");
		String loginPassword=(String)request.getParameter("loginPassword");
		String yzm1=(String)request.getParameter("yzm");
		String select=(String)request.getParameter("bj");
		HttpSession sess=request.getSession();
		String yzm=sess.getAttribute("rand").toString();
		System.out.println("---------"+yzm);
		System.out.println("---------"+yzm1);
		//判断用户名空不空
		//空
		//返回no
		System.out.println("loginName==="+loginName);
		System.out.println("loginPassword==="+loginPassword);
		if(loginName==null || loginName.equals("")||loginPassword==null || loginPassword.equals(""))
		{
			response.sendRedirect("jsp/qt/error.jsp?error=no");
			return;
		}
		else
		{
			if(!yzm.equals(yzm1))
			{
				response.sendRedirect("jsp/qt/error.jsp?error=erroryzm");
				return;
			}
			System.out.println("select==========="+select);
			if(select.equals("0"))
				{
					Loginlist=loginService.GeQuery(loginName, loginPassword);
					System.out.println(Loginlist.size());
					if(Loginlist == null || Loginlist.isEmpty())
					{
						System.out.println(Loginlist.size());
						response.sendRedirect("jsp/qt/error.jsp?error=error");
					}
					else
					{
						//通过用户请求创建一个session
						HttpSession session=request.getSession();
						//把用户信息list放入session
						session.setAttribute("Loginlist", Loginlist);
						//登录时间
						session.setAttribute("loginTime", Data.CurrentYMDHSMTime());
						loginService.dengupdatetime(Data.CurrentYMDHSMTime(),loginName,loginPassword);
						
						RequestDispatcher(request,response,"jsp/qt/gerenguanli.jsp");
					}
				}
			else if (select.equals("1"))
			{
					Loginlist=loginService.CoQuery(loginName, loginPassword);
					if(Loginlist == null || Loginlist.isEmpty())
					{
						response.sendRedirect("jsp/qt/error.jsp?error=error");
						return;
					}
					else
					{
						//通过用户请求创建一个session
						HttpSession session=request.getSession();
						//把登录信息list让如session
						session.setAttribute("Loginlist", Loginlist);
						//登录时间
						session.setAttribute("loginTime", Data.CurrentYMDHSMTime());
						loginService.dengupdatetime1(Data.CurrentYMDHSMTime(),loginName,loginPassword);						
						RequestDispatcher(request,response,"jsp/qt/comguanli.jsp");
					}
			}

		System.out.println(Loginlist.size());

	}
}
	public void tuichu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("====tui==========");
		HttpSession session=request.getSession();
		//清空session
		session.setAttribute("Loginlist", "");
		RequestDispatcher(request,response,"jsp/qt/shouye.jsp");
	}
	/**
	 * 转页方法
	 * */
	public void RequestDispatcher (HttpServletRequest request,HttpServletResponse response,String str) throws ServletException, IOException{
		System.out.println("==============");
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request, response);
	}

}
