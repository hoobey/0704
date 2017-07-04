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
		System.out.println("找到多少为什么不出来"+list.size());
		req.setAttribute("shenglist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comzhuce.jsp");
		rd.forward(req, resp);		
	}
	
	
	protected void adddiyicomzhuce(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		//注册向里加
		service.addcomzhuce(domain);
		//我要company的id以后,加下phone表中
		String name=domain.getCom_login_name();
		System.out.println("name============"+name);
		resp.sendRedirect("comzhuce?actionType=companyidquery&name="+name);		
	}
	/**
	 * 企业转营业执照要企业id
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
		//获得OUT
		PrintWriter out = resp.getWriter();
		//写入父节点
		out.print("<response>");
		if (list.size()>0) {
			//写入子结点 前台要取得这个子结点
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
		//获得OUT
		PrintWriter out = resp.getWriter();
		//写入父节点
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
		
		//设置文件夹名称，可以为动态从数据库取出
		String wjj="zhizhao";
		//返回路径
		String lj="jsp/ceshi/uploadceshi/Error.jsp";
		//设置上传是否图片
		boolean tp=true;
		//为该请求创建一个DiskFileItemFactory对象，通过它来解析请求。执行解析后，所有的表单项目都保存在一个List-fileItems中。 
		DiskFileItemFactory dfif = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(dfif); 
		List fileItems=null;
		try {
			fileItems = sfu.parseRequest(req);
			
		} catch (FileUploadException e) {
			
	           e.printStackTrace();
		}
		 // 得到所有上传的文件  
        Iterator i = fileItems.iterator(); 


        Map fjmap=new HashMap();
        
        while(i.hasNext()) {
        	
        	//System.out.println("h============"+h);
//        	 得到当前文件   
        	FileItem fi = (FileItem)i.next(); 
        	String fileName="";
        	String fileNamea="";
        	 //检查当前项目是普通表单项目还是上传文件。 
        	if(fi.isFormField())
        	{
        		fileName = fi.getFieldName(); 
        	    //获取表单NAME对应地VALUE值
        	    fileNamea = fi.getString();
        	    fjmap.put(fileName,new String(fileNamea.getBytes("ISO-8859-1")));
        	}else{
        		System.out.println("---"+fi.getName());
    			fjmap.put("wj",fi);
          		Map amap=(Map)uploaded(req,resp,wjj,fjmap,tp);
        		if(amap.get("chenggong").toString().equals("1"))
        		{
        			//页面上我传了这个企业的id 
	        		
	        		service.Add(fjmap.get("id").toString(), amap.get("url").toString());
        		}
        		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comzhuceok.jsp");
        		rd.forward(req, resp);
        		}	
        }
}
	//添加文件
	public Map uploaded(HttpServletRequest req, HttpServletResponse resp,String wjj,Map nrmap,boolean sftp)
	{	
		//从Map里取出一组名称加文件路径
		FileItem fileItem=(FileItem)nrmap.get("wj");
		
		Map jgmap=new HashMap();
		final long MAX_SIZE = 30 * 1024 * 1024;// 设置上传文件最大值   
        // 允许上传的文件格式的列表可以为动态数据库读取
		String[] allowedExt=null;
		String[] tb=null;
        //判断是否图片
		System.out.println("sftp=============="+sftp);
		if(sftp==true)
		{
			allowedExt= new String[] {"jpg","gif","JPG","GIF"}; 
		}else{
			allowedExt = new String[] {"rar","zip","RAR","ZIP","doc","DOC","xls","XLS","xlsx","XLSX","txt","TXT","docx","DOCX","chm","CHM"}; 
			 //对应图标
			tb = new String[] {"fu_rar.gif","fu_rar.gif","fu_rar.gif","fu_rar.gif","fu_doc.gif","fu_doc.gif","fu_exl.gif","fu_exl.gif","fu_exl.gif","fu_exl.gif","fu_txt.gif","fu_txt.gif","fu_doc.gif","fu_doc.gif","fu_qita.gif","fu_qita.gif"}; 
		}
		  resp.setContentType("text/html");   
        // 设置字符编码为UTF-8, 统一编码，处理出现乱码问题   
        resp.setCharacterEncoding("UTF-8");   
  
        // 实例化一个硬盘文件工厂,用来配置上传组件ServletFileUpload   
        DiskFileItemFactory dfif = new DiskFileItemFactory();   

        dfif.setSizeThreshold(4096);// 设置上传文件时用于临时存放文件的内存大小,这里是4K.多于的部分将临时存在硬盘   

        dfif.setRepository(new File(req.getRealPath("/")   
                + "upload"));// 设置存放临时文件的目录,web根目录下的upload目录  

  
        // 用以上工厂实例化上传组件   
        ServletFileUpload sfu = new ServletFileUpload(dfif);   
        // 设置最大上传大小   
        sfu.setSizeMax(MAX_SIZE);   
  
        PrintWriter out=null;
		try {
			out = resp.getWriter();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}   
		   //获得文件路径
        String path=fileItem.getName();
        //获得文件大小
        long size=fileItem.getSize();
       //判断是否超过尺寸
            if(size>MAX_SIZE)
            {   
            	jgmap.put("shuoming","文件尺寸超过规定大小:" + MAX_SIZE + "字节");
            	jgmap.put("chenggong","2");
                return jgmap;    
            }
            //判断是否有上传文件
            if ("".equals(path) || size == 0) {   
            	jgmap.put("shuoming","没有上传文件...");
            	jgmap.put("chenggong","2");
                return jgmap;  
            }   
            // 得到去除路径的文件名   
            String t_name = path.substring(path.lastIndexOf("\\") + 1);   
            // 得到文件的扩展名(无扩展名时将得到全名)   
            String t_ext = t_name.substring(t_name.lastIndexOf(".") + 1);   
            // 拒绝接受规定文件格式之外的文件类型   
            int allowFlag = 0;   
            int allowedExtCount = allowedExt.length;
            //不是图片的时候选择对应图标
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
                jgmap.put("shuoming","上传类型不对，请上传以下类型的文件"+wj);
            	jgmap.put("chenggong","2");
                return jgmap;
            } 
  
            long now = System.currentTimeMillis();   
            // 根据系统时间生成上传后保存的文件名   
            String prefix = String.valueOf(now);   
            // 保存的最终文件完整路径,保存在web根目录下的ImagesUploaded目录下   
//          String u_name = request.getRealPath("/") + "ImagesUploaded/"   
//                  + prefix + "." + t_ext;   
            String filename = prefix + "." + t_ext;   
            try {   
                // 保存文件到目录下   
            	
            	//判断系统是否有文件夹
            	try
            	{
            		//判断有没有filename文件夹
            		if(!(new File(req.getRealPath(File.separator)+"filename").isDirectory()))
	            	{
	            		new File(req.getRealPath(File.separator)+"filename").mkdir();
	            	}
            		//判断有没有wjj文件夹
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
            	//上传文件
                fileItem.write(new File(req.getRealPath(File.separator)+"filename"+"/"+wjj+filename));   
                
                
            	jgmap.put("shuoming","文件上传成功. 已保存为: " + prefix + "." + t_ext   
                        + "   文件大小: " + size + "字节");
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


