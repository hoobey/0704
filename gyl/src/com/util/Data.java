package com.util;

import java.io.*;
import java.util.*;
import java.text.*;
 
 public final class Data implements Serializable {
	  public static final String CurrentTime(){
		    String curTime="";
		    //��ʽ��ʱ�俪ʼ
		    SimpleDateFormat formatter;
		    java.util.Date currentDate=new java.util.Date();
		    formatter=new SimpleDateFormat("yyyy-MM-dd");
		    currentDate=Calendar.getInstance().getTime();
		    //��ʽ��ʱ�����
		    curTime= formatter.format(currentDate);
		    return curTime;
		  }
	  public static final String CurrentYMDTime(){
		  String curTime="";
		    //��ʽ��ʱ�俪ʼ
		    SimpleDateFormat formatter;
		    java.util.Date currentDate=new java.util.Date();
		    formatter=new SimpleDateFormat("yyyy��MM��dd��");
		    currentDate=Calendar.getInstance().getTime();
		    //��ʽ��ʱ�����
		    curTime= formatter.format(currentDate);
		    return curTime;
		  }
	  public static final String CurrentYMDHSMTime(){
		  String curTime="";
		    //��ʽ��ʱ�俪ʼ
		    SimpleDateFormat formatter;
		    java.util.Date currentDate=new java.util.Date();
		    formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    currentDate=Calendar.getInstance().getTime();
		    //��ʽ��ʱ�����
		    curTime= formatter.format(currentDate);
		    return curTime;
		  }
 public static final String N(){
	  String curTime="";
	    //��ʽ��ʱ�俪ʼ
	    SimpleDateFormat formatter;
	    java.util.Date currentDate=new java.util.Date();
	    formatter=new SimpleDateFormat("yyyy");
	    currentDate=Calendar.getInstance().getTime();
	    //��ʽ��ʱ�����
	    curTime= formatter.format(currentDate);
	    return curTime;
	  }
 }

