package qt.comzhuce;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.util.GBK;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComZhuCeAction extends HttpServlet {
	ComZhuCeService service =new ComZhuCeService();
	ComZhuCeDomain domain=new ComZhuCeDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("chasheng"))
		{
			chasheng(req,resp);
		}
		
		if(actionType.equals("chaming"))
		{
			chaming(req,resp);
		}
		if(actionType.equals("chashi"))
		{
			chashi(req,resp);
		}
		if(actionType.equals("adddiyicomzhuce"))
		{
			adddiyicomzhuce(req,resp);
		}
		if(actionType.equals("chuanzhizhao"))
		{
			System.out.println("=============================");
			chuanzhizhao(req,resp);
		}
		if(actionType.equals("companyidquery"))
		{
			System.out.println("=============================");
			companyidquery(req,resp);
		}
	}
	
	
	protected void chasheng(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		List list=service.querysheng();
		System.out.println("�ҵ�����Ϊʲô������"+list.size());
		req.setAttribute("shenglist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comzhuce.jsp");
		rd.forward(req, resp);		
	}
	
	
	protected void adddiyicomzhuce(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		//ע�������
		service.addcomzhuce(domain);
		//��Ҫcompany��id�Ժ�,����phone����
		String name=domain.getCom_login_name();
		System.out.println("name============"+name);
		resp.sendRedirect("comzhuce?actionType=companyidquery&name="+name);		
	}
	/**
	 * ��ҵתӪҵִ��Ҫ��ҵid
	 * 
	 * */
	
	protected void companyidquery(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String name=req.getParameter("name");
		System.out.println("name1============"+name);
		List list=service.queryid(name);
		req.setAttribute("listid", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comzhucexiachuanzhizhao.jsp");
		rd.forward(req, resp);	
	}
	
	protected void chaming(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String ming=req.getParameter("ming");
		
		List list=service.queryming(ming);
		resp.setContentType("text/xml; charset=utf-8");
		//���OUT
		PrintWriter out = resp.getWriter();
		//д�븸�ڵ�
		out.print("<response>");
		if (list.size()>0) {
			//д���ӽ�� ǰ̨Ҫȡ������ӽ��
			out.print("<id>0</id>");
		} else {
			out.print("<id>1</id>");
		}
		out.print("</response>");
		out.close();
	}
	
	protected void chashi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String ming=req.getParameter("ming");
		
		List list=service.queryshi(ming);
		resp.setContentType("text/xml; charset=utf-8");
		//���OUT
		PrintWriter out = resp.getWriter();
		//д�븸�ڵ�
		out.print("<response>");
		out.print("<size>"+list.size()+"</size>");
		for(int i=0;i<list.size();i++)
		{
			Map map=(Map)list.get(i);
			out.print("<id>"+map.get("small_address_id")+"</id>");
			out.print("<name>"+map.get("small_address_name")+"</name>");
		}
		
		out.print("</response>");
		out.close();
	}
	
	protected void chuanzhizhao(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		
		//�����ļ������ƣ�����Ϊ��̬�����ݿ�ȡ��
		String wjj="zhizhao";
		//����·��
		String lj="jsp/ceshi/uploadceshi/Error.jsp";
		//�����ϴ��Ƿ�ͼƬ
		boolean tp=true;
		//Ϊ�����󴴽�һ��DiskFileItemFactory����ͨ��������������ִ�н��������еı���Ŀ��������һ��List-fileItems�С� 
		DiskFileItemFactory dfif = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(dfif); 
		List fileItems=null;
		try {
			fileItems = sfu.parseRequest(req);
			
		} catch (FileUploadException e) {
			
	           e.printStackTrace();
		}
		 // �õ������ϴ����ļ�  
        Iterator i = fileItems.iterator(); 


        Map fjmap=new HashMap();
        
        while(i.hasNext()) {
        	
        	//System.out.println("h============"+h);
//        	 �õ���ǰ�ļ�   
        	FileItem fi = (FileItem)i.next(); 
        	String fileName="";
        	String fileNamea="";
        	 //��鵱ǰ��Ŀ����ͨ����Ŀ�����ϴ��ļ��� 
        	if(fi.isFormField())
        	{
        		fileName = fi.getFieldName(); 
        	    //��ȡ��NAME��Ӧ��VALUEֵ
        	    fileNamea = fi.getString();
        	    fjmap.put(fileName,new String(fileNamea.getBytes("ISO-8859-1")));
        	}else{
        		System.out.println("---"+fi.getName());
    			fjmap.put("wj",fi);
          		Map amap=(Map)uploaded(req,resp,wjj,fjmap,tp);
        		if(amap.get("chenggong").toString().equals("1"))
        		{
        			//ҳ�����Ҵ��������ҵ��id 
	        		
	        		service.Add(fjmap.get("id").toString(), amap.get("url").toString());
        		}
        		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comzhuceok.jsp");
        		rd.forward(req, resp);
        		}	
        }
}
	//����ļ�
	public Map uploaded(HttpServletRequest req, HttpServletResponse resp,String wjj,Map nrmap,boolean sftp)
	{	
		//��Map��ȡ��һ�����Ƽ��ļ�·��
		FileItem fileItem=(FileItem)nrmap.get("wj");
		
		Map jgmap=new HashMap();
		final long MAX_SIZE = 30 * 1024 * 1024;// �����ϴ��ļ����ֵ   
        // �����ϴ����ļ���ʽ���б����Ϊ��̬���ݿ��ȡ
		String[] allowedExt=null;
		String[] tb=null;
        //�ж��Ƿ�ͼƬ
		System.out.println("sftp=============="+sftp);
		if(sftp==true)
		{
			allowedExt= new String[] {"jpg","gif","JPG","GIF"}; 
		}else{
			allowedExt = new String[] {"rar","zip","RAR","ZIP","doc","DOC","xls","XLS","xlsx","XLSX","txt","TXT","docx","DOCX","chm","CHM"}; 
			 //��Ӧͼ��
			tb = new String[] {"fu_rar.gif","fu_rar.gif","fu_rar.gif","fu_rar.gif","fu_doc.gif","fu_doc.gif","fu_exl.gif","fu_exl.gif","fu_exl.gif","fu_exl.gif","fu_txt.gif","fu_txt.gif","fu_doc.gif","fu_doc.gif","fu_qita.gif","fu_qita.gif"}; 
		}
		  resp.setContentType("text/html");   
        // �����ַ�����ΪUTF-8, ͳһ���룬���������������   
        resp.setCharacterEncoding("UTF-8");   
  
        // ʵ����һ��Ӳ���ļ�����,���������ϴ����ServletFileUpload   
        DiskFileItemFactory dfif = new DiskFileItemFactory();   

        dfif.setSizeThreshold(4096);// �����ϴ��ļ�ʱ������ʱ����ļ����ڴ��С,������4K.���ڵĲ��ֽ���ʱ����Ӳ��   

        dfif.setRepository(new File(req.getRealPath("/")   
                + "upload"));// ���ô����ʱ�ļ���Ŀ¼,web��Ŀ¼�µ�uploadĿ¼  

  
        // �����Ϲ���ʵ�����ϴ����   
        ServletFileUpload sfu = new ServletFileUpload(dfif);   
        // ��������ϴ���С   
        sfu.setSizeMax(MAX_SIZE);   
  
        PrintWriter out=null;
		try {
			out = resp.getWriter();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}   
		   //����ļ�·��
        String path=fileItem.getName();
        //����ļ���С
        long size=fileItem.getSize();
       //�ж��Ƿ񳬹��ߴ�
            if(size>MAX_SIZE)
            {   
            	jgmap.put("shuoming","�ļ��ߴ糬���涨��С:" + MAX_SIZE + "�ֽ�");
            	jgmap.put("chenggong","2");
                return jgmap;    
            }
            //�ж��Ƿ����ϴ��ļ�
            if ("".equals(path) || size == 0) {   
            	jgmap.put("shuoming","û���ϴ��ļ�...");
            	jgmap.put("chenggong","2");
                return jgmap;  
            }   
            // �õ�ȥ��·�����ļ���   
            String t_name = path.substring(path.lastIndexOf("\\") + 1);   
            // �õ��ļ�����չ��(����չ��ʱ���õ�ȫ��)   
            String t_ext = t_name.substring(t_name.lastIndexOf(".") + 1);   
            // �ܾ����ܹ涨�ļ���ʽ֮����ļ�����   
            int allowFlag = 0;   
            int allowedExtCount = allowedExt.length;
            //����ͼƬ��ʱ��ѡ���Ӧͼ��
            if(sftp==false){
	            for (; allowFlag < allowedExtCount; allowFlag++) {   
	                if (allowedExt[allowFlag].equals(t_ext))
	                {
	                	jgmap.put("tb",tb[allowFlag]);
	                    break;   
	                }
	            }   
            }
            String wj="";
            boolean sfxt=false;
            for (allowFlag = 0; allowFlag < allowedExtCount; allowFlag++) 
            {
            	if(t_ext.equals(allowedExt[allowFlag]))
            	{
            		sfxt=true;
            	}
            	wj=wj+"*." + allowedExt[allowFlag]+ "   ";   
                                        
            }
            if(sfxt==false)
            {
                jgmap.put("shuoming","�ϴ����Ͳ��ԣ����ϴ��������͵��ļ�"+wj);
            	jgmap.put("chenggong","2");
                return jgmap;
            } 
  
            long now = System.currentTimeMillis();   
            // ����ϵͳʱ�������ϴ��󱣴���ļ���   
            String prefix = String.valueOf(now);   
            // ����������ļ�����·��,������web��Ŀ¼�µ�ImagesUploadedĿ¼��   
//          String u_name = request.getRealPath("/") + "ImagesUploaded/"   
//                  + prefix + "." + t_ext;   
            String filename = prefix + "." + t_ext;   
            try {   
                // �����ļ���Ŀ¼��   
            	
            	//�ж�ϵͳ�Ƿ����ļ���
            	try
            	{
            		//�ж���û��filename�ļ���
            		if(!(new File(req.getRealPath(File.separator)+"filename").isDirectory()))
	            	{
	            		new File(req.getRealPath(File.separator)+"filename").mkdir();
	            	}
            		//�ж���û��wjj�ļ���
            		if(!(new File(req.getRealPath(File.separator)+"filename"+File.separator+wjj).isDirectory()))
	            	{
	            	new File(req.getRealPath(File.separator)+"filename"+File.separator+wjj).mkdir();
	            	}
            	}
            	catch(SecurityException e)
            	{
            	        e.printStackTrace();
            	}

            	if(!wjj.equals("")){
            		wjj=wjj+"/";
            	}
            	//�ϴ��ļ�
                fileItem.write(new File(req.getRealPath(File.separator)+"filename"+"/"+wjj+filename));   
                
                
            	jgmap.put("shuoming","�ļ��ϴ��ɹ�. �ѱ���Ϊ: " + prefix + "." + t_ext   
                        + "   �ļ���С: " + size + "�ֽ�");
            	jgmap.put("chenggong","1");
            	jgmap.put("url","filename/"+wjj+filename);
            	
            } catch (Exception e) {   
                e.printStackTrace();   
            }   
        

		return jgmap;
		
		
	}	
	
	
	
	
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String com_login_name=req.getParameter("com_login_name");
		String com_login_pass=req.getParameter("com_login_pass");
		String company_name=GBK.toGBK(req.getParameter("company_name"));
		String big_address_id=req.getParameter("sheng");
		String small_address_id=req.getParameter("shi");
		String com_contact_address=GBK.toGBK(req.getParameter("com_contact_address"));
		String com_post_code=req.getParameter("com_post_code");
		String com_contact_telephone=req.getParameter("com_contact_telephone");
		String com_contact_people=GBK.toGBK(req.getParameter("com_contact_people"));
		String com_fax=req.getParameter("com_fax");
		String com_property=GBK.toGBK(req.getParameter("com_property"));
		String com_register_money=req.getParameter("com_register_money");
		String com_extent=GBK.toGBK(req.getParameter("com_extent"));
		String com_url=req.getParameter("com_url");
		String com_email=req.getParameter("com_email");
		String com_industry1=GBK.toGBK(req.getParameter("com_industry1"));
		String com_industry2=GBK.toGBK(req.getParameter("com_industry2"));
		String com_industry3=GBK.toGBK(req.getParameter("com_industry3"));
		String com_summary=GBK.toGBK(req.getParameter("com_summary"));
		String com_login_record=req.getParameter("com_login_record");
		domain.setCompany_id(company_id);
		domain.setCom_login_name(com_login_name);
		domain.setCom_login_pass(com_login_pass);
		domain.setCompany_name(company_name);
		domain.setBig_address_id(big_address_id);
		domain.setSmall_address_id(small_address_id);
		domain.setCom_contact_address(com_contact_address);
		domain.setCom_post_code(com_post_code);
		domain.setCom_contact_telephone(com_contact_telephone);
		domain.setCom_contact_people(com_contact_people);
		domain.setCom_fax(com_fax);
		domain.setCom_property(com_property);
		domain.setCom_register_money(com_register_money);
		domain.setCom_extent(com_extent);
		domain.setCom_url(com_url);
		domain.setCom_email(com_email);
		domain.setCom_industry1(com_industry1);
		domain.setCom_industry2(com_industry2);
		domain.setCom_industry3(com_industry3);
		domain.setCom_summary(com_summary);
		domain.setCom_login_record(com_login_record);
	}

}


