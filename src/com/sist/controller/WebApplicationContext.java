package com.sist.controller;

import java.util.*;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import java.io.*;
public class WebApplicationContext {
	List<String> list = new ArrayList<String>();

	public WebApplicationContext(String path) {
		try {
			SAXParserFactory spf = SAXParserFactory.newInstance();
			SAXParser sp = spf.newSAXParser();
			HandlerMapping hm = new HandlerMapping();
			sp.parse(new File(path), hm);
			List<String> pack = hm.getList();
			for(String p:pack){
				List<String> ss = PackageScan.packageClassCreate(p);
				for(String s:ss){
					list.add(s);
				}
			}
			for(String str:list){
				System.out.println(str);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
