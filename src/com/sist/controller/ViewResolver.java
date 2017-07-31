package com.sist.controller;

public class ViewResolver {
   private String prefix;
   private String suffix;
   public ViewResolver(){
	   //prefix="user/";
	   suffix=".jsp";
   }
   public String jspFind(String jspName){
	   return jspName+suffix;
   }
}
