package qt.chuanzhaopian;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class zhaoPianAction extends HttpServlet {
	zhaoPianService service1=new zhaoPianService();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("zhaopian"))
		{
			zhaopian( req, resp);
		}
		if(actionType.equals("shangchuan"))
		{
			shangchuan( req, resp);
		}
		if(actionType.equals("del"))
		{
			del( req, resp);
		}
	}
	protected void zhaopian(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {	
		HttpSession session=req.getSession();
		List Loginlist=(List)session.getAttribute("Loginlist");
		Map zhaopianmap =(Map)Loginlist.get(0);
		String gerenid = (String) zhaopianmap.get("user_info_id");
		System.out.println("gerenid==" + gerenid);
		List zhaopianList=service1.zhaopianquery(gerenid);
		req.setAttribute("zhaopianList", zhaopianList);
		RequestDispatcher(req,resp,"jsp/qt/chuanzhaopian.jsp");

	}
	
	public void RequestDispatcher (HttpServletRequest request,HttpServletResponse response,String str) throws ServletException, IOException{
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request, response);
	}
	
	public void del(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException
	{
		HttpSession session=request.getSession();
		List Loginlist=(List)session.getAttribute("Loginlist");
		if(session.getAttribute("Loginlist")==null || session.getAttribute("Loginlist").equals(""))
		{
			try {
				RequestDispatcher(request,response,"jsp/qt/shouye.jsp");
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			return;
		}
		Map zhaopianmap =(Map)Loginlist.get(0);
		String gerenid = (String) zhaopianmap.get("user_info_id");
		
		List zhaopianList=service1.zhaopianquery(gerenid);
		if(zhaopianList.size()>0)
		{
			Map map=(Map)zhaopianList.get(0);
			String url=map.get("photo_url").toString();
			delupload(request,response,url);
			service1.del(gerenid);
		}
		try {
			response.sendRedirect("chuanzhaopian?actionType=zhaopian");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void shangchuan(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException
	{  
		//设置文件夹名称，可以为动态从数据库取出
		String wjj="zhaopian";
		//返回路径
		String lj="jsp/ceshi/uploadceshi/Error.jsp";
		//设置上传是否图片
		boolean tp=true;
		//为该请求创建一个DiskFileItemFactory对象，通过它来解析请求。执行解析后，所有的表单项目都保存在一个List-fileItems中。 
		DiskFileItemFactory dfif = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(dfif); 
		List fileItems=null;
		try {
			fileItems = sfu.parseRequest(request);
			
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

        	 //检查当前项目是普通表单项目还是上传文件。 
        	if(fi.isFormField())
        	{
        	}else{
        		HttpSession session=request.getSession();
        		List Loginlist=(List)session.getAttribute("Loginlist");
        		if(session.getAttribute("Loginlist")==null || session.getAttribute("Loginlist").equals(""))
        		{
        			try {
						RequestDispatcher(request,response,"jsp/qt/shouye.jsp");
					} catch (ServletException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
        			return;
        		}
        		Map zhaopianmap =(Map)Loginlist.get(0);
        		String gerenid = (String) zhaopianmap.get("user_info_id");
        		List zhaopianList=service1.zhaopianquery(gerenid);
        		if(zhaopianList.size()==0)
        		{
        			fjmap.put("wj",fi);
            		
            		
            		Map amap=(Map)uploaded(request,response,wjj,fjmap,tp);
            		if(amap.get("chenggong").toString().equals("1"))
            		{
    	        		
    	        		service1.Add(gerenid, amap.get("url").toString());
            		}
        		}else{
        			Map bmap=(Map)zhaopianList.get(0);
            		String urla=bmap.get("photo_url").toString();
        			delupload(request,response,urla);
        			fjmap.put("wj",fi);
            		
            		
            		Map amap=(Map)uploaded(request,response,wjj,fjmap,tp);
            		if(amap.get("chenggong").toString().equals("1"))
            		{
    	        		
    	        		service1.Upd(gerenid, amap.get("url").toString());
            		}
        		}
        		
        	}
        }
        
        try {
			response.sendRedirect("chuanzhaopian?actionType=zhaopian");
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
	
	//添加文件
	public Map uploaded(HttpServletRequest request, HttpServletResponse response,String wjj,Map nrmap,boolean sftp)
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
		  response.setContentType("text/html");   
        // 设置字符编码为UTF-8, 统一编码，处理出现乱码问题   
        response.setCharacterEncoding("UTF-8");   
  
        // 实例化一个硬盘文件工厂,用来配置上传组件ServletFileUpload   
        DiskFileItemFactory dfif = new DiskFileItemFactory();   

        dfif.setSizeThreshold(4096);// 设置上传文件时用于临时存放文件的内存大小,这里是4K.多于的部分将临时存在硬盘   

        dfif.setRepository(new File(request.getRealPath("/")   
                + "upload"));// 设置存放临时文件的目录,web根目录下的upload目录  

  
        // 用以上工厂实例化上传组件   
        ServletFileUpload sfu = new ServletFileUpload(dfif);   
        // 设置最大上传大小   
        sfu.setSizeMax(MAX_SIZE);   
  
        PrintWriter out=null;
		try {
			out = response.getWriter();
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
            		if(!(new File(request.getRealPath(File.separator)+"filename").isDirectory()))
	            	{
	            		new File(request.getRealPath(File.separator)+"filename").mkdir();
	            	}
            		//判断有没有wjj文件夹
            		if(!(new File(request.getRealPath(File.separator)+"filename"+File.separator+wjj).isDirectory()))
	            	{
	            	new File(request.getRealPath(File.separator)+"filename"+File.separator+wjj).mkdir();
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
                fileItem.write(new File(request.getRealPath(File.separator)+"filename"+"/"+wjj+filename));   
                
                
            	jgmap.put("shuoming","文件上传成功. 已保存为: " + prefix + "." + t_ext   
                        + "   文件大小: " + size + "字节");
            	jgmap.put("chenggong","1");
            	jgmap.put("url","filename/"+wjj+filename);
            	
            } catch (Exception e) {   
                e.printStackTrace();   
            }   
        

		return jgmap;
		
		
	}

}


