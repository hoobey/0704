package com.util;

public class GBK {
	 public static String toGBK(String str)
    {
   	 try{
   		 if(str==null)
   		 {
   			 str="";
   		 }
   		 else
   		 {
   			 str=new String(str.getBytes("ISO-8859-1"),"GBK");
   		 }
   	 }
   	catch(Exception e)
   	{
   		e.printStackTrace();
   	}
   	return str;
   	 
    }
}
