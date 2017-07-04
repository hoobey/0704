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
 * ��½Action
 * @author lkx
 *
 */
public class LoginAction extends HttpServlet {

	private LoginService loginService=new LoginService();
	private List Loginlist;
	private String actionType;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("������service");
		
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
		
		
		//����ҳ�治����
		response.setHeader("Pragma","No-cache");
		response.setHeader("Cache-Control","no-cache");
		response.setDateHeader("Expires", 0);
		
		// ���ڴ��д���ͼ��
		int width=60;
		int height=20;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		
		// ��ȡͼ��������
		Graphics g = image.getGraphics();
		
		//���������
		Random random = new Random();
		
		// �趨����ɫ
		g.setColor(getRandColor(200,250));
		g.fillRect(0, 0, width, height);
		
		//�趨����
		g.setFont(new Font("Times New Roman",Font.PLAIN,18));
		
		//���߿�
		//g.setColor(new Color());
		//g.drawRect(0,0,width-1,height-1);
		
		
		// �������155�������ߣ�ʹͼ���е���֤�벻�ױ���������̽�⵽
		g.setColor(getRandColor(160,200));
		for (int i=0;i<155;i++)
		{
			 int x = random.nextInt(width);
			 int y = random.nextInt(height);
	        int xl = random.nextInt(12);
	        int yl = random.nextInt(12);
		 	g.drawLine(x,y,x+xl,y+yl);
		}
		
		// ȡ�����������֤��(4λ����)
		String sRand="";
		for (int i=0;i<4;i++){
		    String rand=String.valueOf(random.nextInt(10));
		    sRand+=rand;
		    // ����֤����ʾ��ͼ����
		    g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));// ���ú�����������ɫ��ͬ����������Ϊ����̫�ӽ�������ֻ��ֱ������
		    g.drawString(rand,13*i+6,16);
		}
		
		// ����֤�����SESSION
		HttpSession session=request.getSession();
		session.setAttribute("rand",sRand);
		
		
		// ͼ����Ч
		g.dispose();
		
		// ���ͼ��ҳ��
		ImageIO.write(image, "JPEG", response.getOutputStream());
		
		
	}
	
		Color getRandColor(int fc,int bc){//������Χ��������ɫ
        Random random = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
        }
	
	/**
	 * ��½����
	 * */
	public void qtdl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//����ǰ̨��ֵ
		Map map1;
		String loginName=(String)request.getParameter("loginName");
		String loginPassword=(String)request.getParameter("loginPassword");
		String yzm1=(String)request.getParameter("yzm");
		String select=(String)request.getParameter("bj");
		HttpSession sess=request.getSession();
		String yzm=sess.getAttribute("rand").toString();
		System.out.println("---------"+yzm);
		System.out.println("---------"+yzm1);
		//�ж��û����ղ���
		//��
		//����no
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
						//ͨ���û����󴴽�һ��session
						HttpSession session=request.getSession();
						//���û���Ϣlist����session
						session.setAttribute("Loginlist", Loginlist);
						//��¼ʱ��
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
						//ͨ���û����󴴽�һ��session
						HttpSession session=request.getSession();
						//�ѵ�¼��Ϣlist����session
						session.setAttribute("Loginlist", Loginlist);
						//��¼ʱ��
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
		//���session
		session.setAttribute("Loginlist", "");
		RequestDispatcher(request,response,"jsp/qt/shouye.jsp");
	}
	/**
	 * תҳ����
	 * */
	public void RequestDispatcher (HttpServletRequest request,HttpServletResponse response,String str) throws ServletException, IOException{
		System.out.println("==============");
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request, response);
	}

}
