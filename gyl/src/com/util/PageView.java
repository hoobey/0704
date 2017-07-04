package com.util;

import javax.servlet.jsp.JspWriter;
import java.io.IOException;
import java.util.Enumeration;
import java.util.StringTokenizer;
import javax.servlet.http.HttpServletRequest;

//import com.cwap.oa.controller.util.MultiLangsString;
//import com.cwap.oa.controller.util.MultiLangsUtil;

/**
 * 通过JSP调用，将分页内容显示到WEB页面。
 * 不支持图片、按钮等，只支持文字。
 * 用法:
 * 在JSP页面按如下形式定义:
 * <% PageView view = new PageView(request,out,page); %>
 * 按缺省形式显示
 * <% view.setVisible(true); %>
 * 按指定形式显示
 * <% view.setVisible(true,0,1); %>
 */
public class PageView {
  /**
   * 多语言字符
   */
  //private MultiLangsString multiLangs;
  /**
   * 当前页面的URL
   */
  private String currentUrl;
  /**
   * 风格
   */
  private String style;
  /**
   * 链接样式
   */
  private String linkCss;
  
  private String linkCss2;
  /**
   * 在"上一页"两边是否加上"["和"]"
   */
  private boolean useSquareBrackets;
  /**
   * 客户端请求
   */
  private HttpServletRequest request;
  /**
   * 页面输出对象
   */
  private JspWriter out;
  /**
   * WEB页面
   */
  private Page page;

  /**
   * 构造器,创建一个分页内容
   * @param: request 客户端请求
   * @param: out 页面输出对象
   * @param: page WEB页面
   */
  public PageView(HttpServletRequest request, JspWriter out, Page page) {
//    new PageView(request, out, page, "no");
    this.request = request;
    this.out = out;
    currentUrl = request.getRequestURL().toString();
    //multiLangs = MultiLangsUtil.getMultiLangsString(request,"page");
    this.page = page;
  }

  /**
   * 构造器,创建一个分页内容
   * @param: request 客户端请求
   * @param: out 页面输出对象
   * @param: page WEB页面
   * @param: style 连接显示的样式
   */
  public PageView(HttpServletRequest request, JspWriter out, Page page,
                  String linkCss) {
    this.request = request;
    this.out = out;
    currentUrl = request.getRequestURL().toString();
    //multiLangs = MultiLangsUtil.getMultiLangsString(request,"page");
    this.page = page;
    if(linkCss == null || linkCss.equals("no") || linkCss.equals(""))
      this.linkCss = null;
    else
      this.linkCss = linkCss;
  }
  
  public PageView(HttpServletRequest request, JspWriter out, Page page,
          String linkCss,String linkCss2) {
	this.request = request;
	this.out = out;
	currentUrl = request.getRequestURL().toString();
	//multiLangs = MultiLangsUtil.getMultiLangsString(request,"page");
	this.page = page;
	if(linkCss == null || linkCss.equals("no") || linkCss.equals(""))
	this.linkCss = null;
	else
	this.linkCss = linkCss;
	if(linkCss2 == null || linkCss2.equals("no") || linkCss2.equals(""))
	this.linkCss2 = null;
	else
	this.linkCss2 = linkCss2;
  }

  /**
   * 显示一共有多少行
   */
  private void viewTotal() throws IOException {
    out.print("共计" + ":" + page.getTotal() + "条&nbsp;");
  }

  /**
   * 显示一共有多少页
   */
  private void viewTotalPage() throws IOException {
    out.print("分页" + ":" + page.getTotalPage() + "&nbsp;");
  }

  /**
   * 显示当前是第几页
   */
  private void viewCurrentPage() throws IOException {
    out.print("当前页" + ":" + page.getCurrentPageNumber() + "&nbsp;");
  }

  /**
   * 显示当前是第几页/一共有多少页
   */
  private void viewTotalAndCurrent() throws IOException {
    out.print(page.getCurrentPageNumber() + "&nbsp;/&nbsp;" + page.getTotalPage() +
              "&nbsp;");
  }

  /**
   * 显示每页有多少行
   */
  private void viewPageSize() throws IOException {
    out.print("每页" + ":" + page.getPageSize() + "&nbsp;");
  }

  /**
   * 显示首页
   */
  private void viewFirstPage() throws IOException {
    if (useSquareBrackets) {
      out.print("[");
    }
    out.print("<a href=\"" + currentUrl + "?pageNumber=1" +
              getParamsFromCurrentURL(request, "pageNumber") + "\"");
    if (this.linkCss != null)
      out.print(" class=\"" + this.linkCss + "\"");
    out.print(">");
    out.print("首页" + "</a>");
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * 显示上一页
   */
  private void viewPreviousPage() throws IOException {
    if (useSquareBrackets) {
      out.print("[");
    }
    if (page.hasPreviousPage()) {
      out.print("<a href=\"" + currentUrl + "?pageNumber=" +
                page.getPreviousPageNumber() +
                getParamsFromCurrentURL(request, "pageNumber") + "\"");
      if (this.linkCss != null)
        out.print(" class=\"" + this.linkCss + "\"");
      out.print(">");
    }
    out.print("上一页");
    if (page.hasPreviousPage()) {
      out.print("</a>");
    }
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * 显示下一页
   */
  private void viewNextPage() throws IOException {
    if (useSquareBrackets) {
      out.print("[");
    }
    if (page.hasNextPage()) {
      out.print("<a href=\"" + currentUrl + "?pageNumber=" +
                page.getNextPageNumber() +
                getParamsFromCurrentURL(request, "pageNumber") + "\"");
      if (this.linkCss != null)
        out.print(" class=\"" + this.linkCss + "\"");
      out.print(">");
    }
    out.print("下一页");
    if (page.hasNextPage()) {
      out.print("</a>");
    }
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * 显示尾页
   */
  private void viewLastPage() throws IOException {
    if (useSquareBrackets) {
      out.print("[");
    }
    out.print("<a href=\"" + currentUrl + "?pageNumber=" + page.getTotalPage() +
              getParamsFromCurrentURL(request, "pageNumber") + "\"");
    if (this.linkCss != null)
      out.print(" class=\"" + this.linkCss + "\"");
    out.print(">");

    out.print("尾页");
    out.print("</a>");
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * 显示转到第几页
   */
  private void viewGotoPage() throws IOException {
    //wuboquan此处是跳专翻页修改
    //out.println("转到"+"<SELECT name=\"jumpPage\" onchange=\"JumpingPage('parent',this,0)\">");
    out.println("转到" +
        "<SELECT name=\"jumpPage\" onchange=\"JumpingPage('self',this,0)\"");
    if (this.linkCss2 != null)
        out.print(" class=\"" + this.linkCss2 + "\"");
      out.print(">");
    
    //end此处是跳专翻页修改
    for (int i = 1; i <= page.getTotalPage(); i++) {
      if (i == page.getCurrentPageNumber()) {
        out.println("&nbsp;&nbsp;<OPTION selected value=" + i + ">" + i +
                    "</OPTION>");
      }
      else {
        out.println("&nbsp;&nbsp;<OPTION value=" + i + ">" + i + "</OPTION>");
      }
    }
    out.println("</SELECT>");
    //定义javascript方法JumpingPage()
    out.println("<SCRIPT LANGUAGE=\"JavaScript\">");
    out.println("function JumpingPage(targ,selObj,restore){");
    out.println("  eval(targ+\".location.href='" + currentUrl +
                "?pageNumber=\"+selObj.options[selObj.selectedIndex].value+\"" +
                getParamsFromCurrentURL(request, "pageNumber") + "'\");");
    out.println("  if (restore) selObj.selectedIndex=0;");
    out.println("  return ;");
    out.println("}");
    out.println("</SCRIPT>");
  }

  /**
   * 从URL中获取参数
   * @param: request 客户端请求
   * @param: exceptionParamNames 排除在外的参数
   */
  private static String getParamsFromCurrentURL(HttpServletRequest request,
                                                String exceptionParamNames) {
    String params = "";
    Enumeration e = request.getParameterNames();
    outer:while (e.hasMoreElements()) {
      String key = (String) e.nextElement();
      StringTokenizer st = new StringTokenizer(exceptionParamNames, ",");
      while (st.hasMoreTokens()) {
        String exceptionName = st.nextToken();
        if (key.equals(exceptionName)) {
          continue outer;
        }
      }
      String value = request.getParameter(key);
      if (!key.equals("changeorderids")) 
       // params += "&" + key + "=" + java.net.URLEncoder.encode(value); //为论坛翻页增加转码
    	  params += "&" + key + "=" + GBK.toGBK(value); 
    }
    return params;
  }

  /**
   * 按缺省形式显示分页内容,如果visible为true,则显示分页内容,
   * 否则,不显示分页内容
   * @param: visible 显示开关
   */
  public void setVisible(boolean visible) {
    if (visible) {
      viewPage(false, 0, 0);
    }
  }

  /**
   * 按指定形式显示分页内容,如果visible为true,则显示分页内容,
   * 否则,不显示分页内容
   * @param: visible 显示开关
   * @param: style 风格
   * @param: order 显示顺序
   */
  public void setVisible(boolean visible, int style, int order) {
    if (visible) {
      viewPage(false, style, order);
    }
  }

  /**
   * 按指定形式显示分页内容,如果visible为true,则显示分页内容,
   * 否则,不显示分页内容
   * @param: visible 显示开关
   * @param: useSquareBrackets 是否加上"["和"]"的开关
   * @param: style 风格
   * @param: order 显示顺序
   */
  public void setVisible(boolean visible, boolean useSquareBrackets, int style,
                         int order) {
    if (visible) {
      viewPage(useSquareBrackets, style, order);
    }
  }

  /**
   * 按指定形式显示分页内容
   * @param: useSquareBrackets 是否加上"["和"]"的开关
   * @param: style 风格
   * @param: order 显示顺序
   * order为0,
   * 表示完整形式,按如下顺序显示:
   * 共计:18 分页:2 当前页:1 每页:10 首页 前页 后页 尾页 转到□□□□
   * order为1,
   * 表示简洁形式,按如下顺序显示:
   * 前页 后页 尾页 1/2
   * order为2,
   * 表示完整形式2,按如下顺序显示:
   * 共计:18 每页:10 转到□□□□ 首页 前页 后页 尾页 1/2
   */
  private void viewPage(boolean useSquareBrackets, int style, int order) {
    this.useSquareBrackets = useSquareBrackets;
    if (style == 0) {
      this.style = "";
    }
    else {
      if (style > 0 && style < 3) {
        this.style = "_STYLE" + Integer.toString(style);
      }
      else {
        this.style = "";
      }
    }
    try {
      //wuboquan
      out.println("<table border='0' align='center' bordercolordark='#000000' bordercolorlight='#FFFFFF'>" +
                  "<tr align='center' valign='middle'><td");
      if (this.linkCss != null)
          out.print(" class=\"" + this.linkCss + "\"");
        out.print(">");
      //wuboquan end
      switch (order) {
        case 1: //首页  前页  后页  尾页  1 / 1
          viewFirstPage();
          viewPreviousPage();
          viewNextPage();
          viewLastPage();
          viewTotalAndCurrent();
          break;
        case 2: //共计:2 每页:2 转到   1 首页  前页  后页  尾页  1 / 1
          viewTotal();
          viewPageSize();
          viewGotoPage();
          viewFirstPage();
          viewPreviousPage();
          viewNextPage();
          viewLastPage();
          viewTotalAndCurrent();
          break;
        case 3: //共计：0 0/0页 首页 前页 后页 尾页
          viewTotal();
          viewTotalAndCurrent();
          viewFirstPage();
          viewPreviousPage();
          viewNextPage();
          viewLastPage();
          break;
        default: //共计:2 分页:1 当前页:1 每页:2 首页  前页  后页  尾页  转到   1
          viewTotal();
          viewTotalPage();
          viewCurrentPage();
          viewPageSize();
          viewFirstPage();
          viewPreviousPage();
          viewNextPage();
          viewLastPage();
          viewGotoPage();
          break;
      }
      //wuboquan
      out.println("</td></tr></table>");
      //wuboquan end

    }
    catch (IOException e) {
      e.printStackTrace();
    }
  }

public String getCurrentUrl() {
	return currentUrl;
}

public void setCurrentUrl(String currentUrl) {
	this.currentUrl = currentUrl;
}
  
  
}

