package com.util;

import javax.servlet.jsp.JspWriter;
import java.io.IOException;
import java.util.Enumeration;
import java.util.StringTokenizer;
import javax.servlet.http.HttpServletRequest;

//import com.cwap.oa.controller.util.MultiLangsString;
//import com.cwap.oa.controller.util.MultiLangsUtil;

/**
 * ͨ��JSP���ã�����ҳ������ʾ��WEBҳ�档
 * ��֧��ͼƬ����ť�ȣ�ֻ֧�����֡�
 * �÷�:
 * ��JSPҳ�水������ʽ����:
 * <% PageView view = new PageView(request,out,page); %>
 * ��ȱʡ��ʽ��ʾ
 * <% view.setVisible(true); %>
 * ��ָ����ʽ��ʾ
 * <% view.setVisible(true,0,1); %>
 */
public class PageView {
  /**
   * �������ַ�
   */
  //private MultiLangsString multiLangs;
  /**
   * ��ǰҳ���URL
   */
  private String currentUrl;
  /**
   * ���
   */
  private String style;
  /**
   * ������ʽ
   */
  private String linkCss;
  
  private String linkCss2;
  /**
   * ��"��һҳ"�����Ƿ����"["��"]"
   */
  private boolean useSquareBrackets;
  /**
   * �ͻ�������
   */
  private HttpServletRequest request;
  /**
   * ҳ���������
   */
  private JspWriter out;
  /**
   * WEBҳ��
   */
  private Page page;

  /**
   * ������,����һ����ҳ����
   * @param: request �ͻ�������
   * @param: out ҳ���������
   * @param: page WEBҳ��
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
   * ������,����һ����ҳ����
   * @param: request �ͻ�������
   * @param: out ҳ���������
   * @param: page WEBҳ��
   * @param: style ������ʾ����ʽ
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
   * ��ʾһ���ж�����
   */
  private void viewTotal() throws IOException {
    out.print("����" + ":" + page.getTotal() + "��&nbsp;");
  }

  /**
   * ��ʾһ���ж���ҳ
   */
  private void viewTotalPage() throws IOException {
    out.print("��ҳ" + ":" + page.getTotalPage() + "&nbsp;");
  }

  /**
   * ��ʾ��ǰ�ǵڼ�ҳ
   */
  private void viewCurrentPage() throws IOException {
    out.print("��ǰҳ" + ":" + page.getCurrentPageNumber() + "&nbsp;");
  }

  /**
   * ��ʾ��ǰ�ǵڼ�ҳ/һ���ж���ҳ
   */
  private void viewTotalAndCurrent() throws IOException {
    out.print(page.getCurrentPageNumber() + "&nbsp;/&nbsp;" + page.getTotalPage() +
              "&nbsp;");
  }

  /**
   * ��ʾÿҳ�ж�����
   */
  private void viewPageSize() throws IOException {
    out.print("ÿҳ" + ":" + page.getPageSize() + "&nbsp;");
  }

  /**
   * ��ʾ��ҳ
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
    out.print("��ҳ" + "</a>");
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * ��ʾ��һҳ
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
    out.print("��һҳ");
    if (page.hasPreviousPage()) {
      out.print("</a>");
    }
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * ��ʾ��һҳ
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
    out.print("��һҳ");
    if (page.hasNextPage()) {
      out.print("</a>");
    }
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * ��ʾβҳ
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

    out.print("βҳ");
    out.print("</a>");
    if (useSquareBrackets) {
      out.print("]");
    }
    out.print("&nbsp;\n");
  }

  /**
   * ��ʾת���ڼ�ҳ
   */
  private void viewGotoPage() throws IOException {
    //wuboquan�˴�����ר��ҳ�޸�
    //out.println("ת��"+"<SELECT name=\"jumpPage\" onchange=\"JumpingPage('parent',this,0)\">");
    out.println("ת��" +
        "<SELECT name=\"jumpPage\" onchange=\"JumpingPage('self',this,0)\"");
    if (this.linkCss2 != null)
        out.print(" class=\"" + this.linkCss2 + "\"");
      out.print(">");
    
    //end�˴�����ר��ҳ�޸�
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
    //����javascript����JumpingPage()
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
   * ��URL�л�ȡ����
   * @param: request �ͻ�������
   * @param: exceptionParamNames �ų�����Ĳ���
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
       // params += "&" + key + "=" + java.net.URLEncoder.encode(value); //Ϊ��̳��ҳ����ת��
    	  params += "&" + key + "=" + GBK.toGBK(value); 
    }
    return params;
  }

  /**
   * ��ȱʡ��ʽ��ʾ��ҳ����,���visibleΪtrue,����ʾ��ҳ����,
   * ����,����ʾ��ҳ����
   * @param: visible ��ʾ����
   */
  public void setVisible(boolean visible) {
    if (visible) {
      viewPage(false, 0, 0);
    }
  }

  /**
   * ��ָ����ʽ��ʾ��ҳ����,���visibleΪtrue,����ʾ��ҳ����,
   * ����,����ʾ��ҳ����
   * @param: visible ��ʾ����
   * @param: style ���
   * @param: order ��ʾ˳��
   */
  public void setVisible(boolean visible, int style, int order) {
    if (visible) {
      viewPage(false, style, order);
    }
  }

  /**
   * ��ָ����ʽ��ʾ��ҳ����,���visibleΪtrue,����ʾ��ҳ����,
   * ����,����ʾ��ҳ����
   * @param: visible ��ʾ����
   * @param: useSquareBrackets �Ƿ����"["��"]"�Ŀ���
   * @param: style ���
   * @param: order ��ʾ˳��
   */
  public void setVisible(boolean visible, boolean useSquareBrackets, int style,
                         int order) {
    if (visible) {
      viewPage(useSquareBrackets, style, order);
    }
  }

  /**
   * ��ָ����ʽ��ʾ��ҳ����
   * @param: useSquareBrackets �Ƿ����"["��"]"�Ŀ���
   * @param: style ���
   * @param: order ��ʾ˳��
   * orderΪ0,
   * ��ʾ������ʽ,������˳����ʾ:
   * ����:18 ��ҳ:2 ��ǰҳ:1 ÿҳ:10 ��ҳ ǰҳ ��ҳ βҳ ת����������
   * orderΪ1,
   * ��ʾ�����ʽ,������˳����ʾ:
   * ǰҳ ��ҳ βҳ 1/2
   * orderΪ2,
   * ��ʾ������ʽ2,������˳����ʾ:
   * ����:18 ÿҳ:10 ת���������� ��ҳ ǰҳ ��ҳ βҳ 1/2
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
        case 1: //��ҳ  ǰҳ  ��ҳ  βҳ  1 / 1
          viewFirstPage();
          viewPreviousPage();
          viewNextPage();
          viewLastPage();
          viewTotalAndCurrent();
          break;
        case 2: //����:2 ÿҳ:2 ת��   1 ��ҳ  ǰҳ  ��ҳ  βҳ  1 / 1
          viewTotal();
          viewPageSize();
          viewGotoPage();
          viewFirstPage();
          viewPreviousPage();
          viewNextPage();
          viewLastPage();
          viewTotalAndCurrent();
          break;
        case 3: //���ƣ�0 0/0ҳ ��ҳ ǰҳ ��ҳ βҳ
          viewTotal();
          viewTotalAndCurrent();
          viewFirstPage();
          viewPreviousPage();
          viewNextPage();
          viewLastPage();
          break;
        default: //����:2 ��ҳ:1 ��ǰҳ:1 ÿҳ:2 ��ҳ  ǰҳ  ��ҳ  βҳ  ת��   1
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

