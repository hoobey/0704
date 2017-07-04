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
		//�����ļ������ƣ�����Ϊ��̬�����ݿ�ȡ��
		String wjj="zhaopian";
		//����·��
		String lj="jsp/ceshi/uploadceshi/Error.jsp";
		//�����ϴ��Ƿ�ͼƬ
		boolean tp=true;
		//Ϊ�����󴴽�һ��DiskFileItemFactory����ͨ��������������ִ�н��������еı���Ŀ��������һ��List-fileItems�С� 
		DiskFileItemFactory dfif = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(dfif); 
		List fileItems=null;
		try {
			fileItems = sfu.parseRequest(request);
			
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

        	 //��鵱ǰ��Ŀ����ͨ����Ŀ�����ϴ��ļ��� 
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
	
	//ɾ���ļ�
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
					System.out.println("ɾ���ɹ�");
					
					fh="ɾ���ɹ�";
					
				}else{
					System.out.println("ɾ��ʧ��");
					fh="ɾ��ʧ��";
					
				}
			}else{
				System.out.println("û���ļ�"); 
				fh="û���ļ�";
				
			}
		}
		return fh;
	}
	
	//����ļ�
	public Map uploaded(HttpServletRequest request, HttpServletResponse response,String wjj,Map nrmap,boolean sftp)
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
		  response.setContentType("text/html");   
        // �����ַ�����ΪUTF-8, ͳһ���룬���������������   
        response.setCharacterEncoding("UTF-8");   
  
        // ʵ����һ��Ӳ���ļ�����,���������ϴ����ServletFileUpload   
        DiskFileItemFactory dfif = new DiskFileItemFactory();   

        dfif.setSizeThreshold(4096);// �����ϴ��ļ�ʱ������ʱ����ļ����ڴ��С,������4K.���ڵĲ��ֽ���ʱ����Ӳ��   

        dfif.setRepository(new File(request.getRealPath("/")   
                + "upload"));// ���ô����ʱ�ļ���Ŀ¼,web��Ŀ¼�µ�uploadĿ¼  

  
        // �����Ϲ���ʵ�����ϴ����   
        ServletFileUpload sfu = new ServletFileUpload(dfif);   
        // ��������ϴ���С   
        sfu.setSizeMax(MAX_SIZE);   
  
        PrintWriter out=null;
		try {
			out = response.getWriter();
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
            		if(!(new File(request.getRealPath(File.separator)+"filename").isDirectory()))
	            	{
	            		new File(request.getRealPath(File.separator)+"filename").mkdir();
	            	}
            		//�ж���û��wjj�ļ���
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
            	//�ϴ��ļ�
                fileItem.write(new File(request.getRealPath(File.separator)+"filename"+"/"+wjj+filename));   
                
                
            	jgmap.put("shuoming","�ļ��ϴ��ɹ�. �ѱ���Ϊ: " + prefix + "." + t_ext   
                        + "   �ļ���С: " + size + "�ֽ�");
            	jgmap.put("chenggong","1");
            	jgmap.put("url","filename/"+wjj+filename);
            	
            } catch (Exception e) {   
                e.printStackTrace();   
            }   
        

		return jgmap;
		
		
	}

}


