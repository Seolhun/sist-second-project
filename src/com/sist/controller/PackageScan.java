package com.sist.controller;
import java.util.*;
import java.io.*;
// Class.forName("com.sist.movie.BoardController")   
public class PackageScan {
   public static List<String> packageClassCreate(String pack)
   {
	   List<String> list=new ArrayList<String>();
	   try
	   {
		   String path="C:\\Users\\aaa\\git\\SIST_Project2\\src\\"; // Çö¼ö Çü
		   //String path="C:\\Users\\sist\\git\\Sist\\SIST_Project2\\src\\"; //¼³ÈÆ
		   String real_path=path+pack.replace(".", "\\");
		   // java//com//sist//movie
		   // com.sist.movie.BoardController
		   File dir=new File(real_path);
		   File[] files=dir.listFiles();
		   for(File f:files)
		   {
			   String name=f.getName();
			   String ext=name.substring(name.lastIndexOf('.')+1);
			   if(ext.equals("java"))
			   {
				   String save=pack+"."+name;
				   list.add(save.substring(0,save.lastIndexOf('.')));
				   
			   }
		   }
		   
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   return list;
   }
}
