package com.fck;

 
 import java.io.File;
 import java.io.IOException;
 import java.io.PrintWriter;
 import java.util.List;
import java.util.UUID;

 import javax.servlet.ServletContext;
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import net.fckeditor.handlers.CommandHandler;
 import net.fckeditor.handlers.ConnectorHandler;
 import net.fckeditor.handlers.ExtensionsHandler;
 import net.fckeditor.handlers.RequestCycleHandler;
 import net.fckeditor.handlers.ResourceTypeHandler;
 import net.fckeditor.response.UploadResponse;
 import net.fckeditor.response.XmlResponse;
 import net.fckeditor.tool.Utils;
 import net.fckeditor.tool.UtilsFile;
 import net.fckeditor.tool.UtilsResponse;
 import org.apache.commons.fileupload.FileItem;
 import org.apache.commons.fileupload.FileItemFactory;
 import org.apache.commons.fileupload.disk.DiskFileItemFactory;
 import org.apache.commons.fileupload.servlet.ServletFileUpload;
 import org.apache.commons.io.FilenameUtils;
 import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 
 public class FckConnectorServlet extends HttpServlet
 {
   private static final long serialVersionUID = -5742008970929377161L;
  private static final Logger logger = LoggerFactory.getLogger(FckConnectorServlet.class);
 
   public void init()
     throws ServletException, IllegalArgumentException
   {
    String realDefaultUserFilesPath = getServletContext().getRealPath(ConnectorHandler.getDefaultUserFilesPath());
 
    File defaultUserFilesDir = new File(realDefaultUserFilesPath);
    UtilsFile.checkDirAndCreate(defaultUserFilesDir);
 
     logger.info("ConnectorServlet successfully initialized!");
   }
 
   public void doGet(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
   {
     XmlResponse xr;
     logger.debug("Entering ConnectorServlet#doGet");
 
    response.setCharacterEncoding("UTF-8");
    response.setContentType("application/xml; charset=UTF-8");
     response.setHeader("Cache-Control", "no-cache");
    PrintWriter out = response.getWriter();
 
     String commandStr = request.getParameter("Command");
     String typeStr = request.getParameter("Type");
     String currentFolderStr = request.getParameter("CurrentFolder");
 
     logger.debug("Parameter Command: {}", commandStr);
     logger.debug("Parameter Type: {}", typeStr);
     logger.debug("Parameter CurrentFolder: {}", currentFolderStr);
 
     if (!(RequestCycleHandler.isEnabledForFileBrowsing(request))) {
       xr = new XmlResponse(1, "The current user isn't authorized for file browsing!");
     } else if (!(CommandHandler.isValidForGet(commandStr))) {
       xr = new XmlResponse(1, "Invalid command specified");
     } else if ((typeStr != null) && (!(ResourceTypeHandler.isValid(typeStr)))) {
      xr = new XmlResponse(1, "Invalid resource type specified");
     } else if (!(UtilsFile.isValidPath(currentFolderStr))) {
       xr = new XmlResponse(1, "Invalid current folder specified");
     } else {
       CommandHandler command = CommandHandler.getCommand(commandStr);
       ResourceTypeHandler resourceType = ResourceTypeHandler.getDefaultResourceType(typeStr);
 
      String typePath = UtilsFile.constructServerSidePath(request, resourceType);
       String typeDirPath = getServletContext().getRealPath(typePath);
 
       File typeDir = new File(typeDirPath);
      UtilsFile.checkDirAndCreate(typeDir);
 
      File currentDir = new File(typeDir, currentFolderStr);
 
      if (!(currentDir.exists())) {
        xr = new XmlResponse(102);
       }
       else {
         xr = new XmlResponse(command, resourceType, currentFolderStr, UtilsResponse.constructResponseUrl(request, resourceType, currentFolderStr, true, ConnectorHandler.isFullUrl()));
 
         if (command.equals(CommandHandler.GET_FOLDERS)) {
           xr.setFolders(currentDir);
        } else if (command.equals(CommandHandler.GET_FOLDERS_AND_FILES)) {
           xr.setFoldersAndFiles(currentDir);
         } else if (command.equals(CommandHandler.CREATE_FOLDER)) {
						//修改新建文件夹中文乱码   
					    
					    String temStr= request.getParameter("NewFolderName");   
					   temStr=new String(temStr.getBytes("iso8859-1"),"utf-8");   
					   	// 完毕  
          String newFolderStr = UtilsFile.sanitizeFolderName(request.getParameter("NewFolderName"));
 
           logger.debug("Parameter NewFolderName: {}", newFolderStr);
 
           File newFolder = new File(currentDir, newFolderStr);
           int errorNumber = 110;
 
          if (newFolder.exists())
             errorNumber = 101;
           else {
             try {
              errorNumber = (newFolder.mkdir()) ? 0 : 102;
             }
             catch (SecurityException e) {
              errorNumber = 103;
             }
           }
           xr.setError(errorNumber);
         }
       }
     }
 
     out.print(xr);
     out.flush();
     out.close();
    logger.debug("Exiting ConnectorServlet#doGet");
   }
 
   public void doPost(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
   {
     UploadResponse ur;
     logger.debug("Entering Connector#doPost");
 
     response.setCharacterEncoding("UTF-8");
     response.setContentType("text/html; charset=UTF-8");
     response.setHeader("Cache-Control", "no-cache");
    PrintWriter out = response.getWriter();
 
     String commandStr = request.getParameter("Command");
    String typeStr = request.getParameter("Type");
    String currentFolderStr = request.getParameter("CurrentFolder");
 
    logger.debug("Parameter Command: {}", commandStr);
     logger.debug("Parameter Type: {}", typeStr);
     logger.debug("Parameter CurrentFolder: {}", currentFolderStr);
 
    if ((Utils.isEmpty(commandStr)) && (Utils.isEmpty(currentFolderStr))) {
      commandStr = "QuickUpload";
       currentFolderStr = "/";
     }
 	 


     if (!(RequestCycleHandler.isEnabledForFileUpload(request))) {
       ur = new UploadResponse(new Object[] { new Integer(203), null, null, "The current user isn't authorized for file upload!" });
     }
    else if (!(CommandHandler.isValidForPost(commandStr))) {
      ur = new UploadResponse(new Object[] { new Integer(1), null, null, "Invalid command specified" });
    } else if ((typeStr != null) && (!(ResourceTypeHandler.isValid(typeStr)))) {
       ur = new UploadResponse(new Object[] { new Integer(1), null, null, "Invalid resource type specified" });
     } else if (!(UtilsFile.isValidPath(currentFolderStr))) {
       ur = UploadResponse.UR_INVALID_CURRENT_FOLDER;
     } else {
       ResourceTypeHandler resourceType = ResourceTypeHandler.getDefaultResourceType(typeStr);
 
      String typePath = UtilsFile.constructServerSidePath(request, resourceType);
       String typeDirPath = getServletContext().getRealPath(typePath);
 
       File typeDir = new File(typeDirPath);
       UtilsFile.checkDirAndCreate(typeDir);
 
      File currentDir = new File(typeDir, currentFolderStr);
 
      if (!(currentDir.exists())) {
         ur = UploadResponse.UR_INVALID_CURRENT_FOLDER;
       }
       else {
         String newFilename = null;
         FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

					// 修改上传中文名乱码   
					upload.setHeaderEncoding("UTF-8");   
					//  完毕  
         try
         {
          List items = upload.parseRequest(request);
 
          FileItem uplFile = (FileItem)items.get(0);
          String rawName = UtilsFile.sanitizeFileName(uplFile.getName());
          String filename = FilenameUtils.getName(rawName);
          String baseName = FilenameUtils.removeExtension(filename);
           String extension = FilenameUtils.getExtension(filename);
 			

					//修改上传文件名字，用UUID方法   
					filename=UUID.randomUUID().toString()+ "."+ extension;   
					//  完毕 
					
          if (!(ExtensionsHandler.isAllowed(resourceType, extension))) {
            ur = new UploadResponse(new Object[] { new Integer(202) });
           }
           //如果超出大小10M   
					else if(uplFile.getSize()> 10000 * 1024)    
					    //传递一个自定义的错误码   
					        ur = new UploadResponse(new Object[] { new Integer(204) });   
           else{
             File pathToSave = new File(currentDir, filename);
            int counter = 1;
            while (pathToSave.exists()) {
               newFilename = baseName.concat("(").concat(String.valueOf(counter)).concat(")").concat(".").concat(extension);
 
               pathToSave = new File(currentDir, newFilename);
              ++counter;
             }
 
             if (Utils.isEmpty(newFilename)) {
               ur = new UploadResponse(new Object[] { new Integer(0), UtilsResponse.constructResponseUrl(request, resourceType, currentFolderStr, true, ConnectorHandler.isFullUrl()).concat(filename) });
             }
             else
             {
               ur = new UploadResponse(new Object[] { new Integer(201), UtilsResponse.constructResponseUrl(request, resourceType, currentFolderStr, true, ConnectorHandler.isFullUrl()).concat(newFilename), newFilename });
             }
 
             if ((resourceType.equals(ResourceTypeHandler.IMAGE)) && (ConnectorHandler.isSecureImageUploads()))
             {
               if (UtilsFile.isImage(uplFile.getInputStream())) {
                uplFile.write(pathToSave);
               } else {
                 uplFile.delete();
                 ur = new UploadResponse(new Object[] { new Integer(202) });
               }
             }
             else uplFile.write(pathToSave);
           }
         }
         catch (Exception e) {
           ur = new UploadResponse(new Object[] { new Integer(203) });
         }
       }
 
     }
 	  
    out.print(ur);
    out.flush();
     out.close();
 
    logger.debug("Exiting Connector#doPost");
   }
 }