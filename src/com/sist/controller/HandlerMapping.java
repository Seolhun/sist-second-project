package com.sist.controller;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import java.util.*;

public class HandlerMapping extends DefaultHandler{
	private List<String> list = new ArrayList<String>();

	public List<String> getList() {
		return list;
	}

	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		try{
			if(qName.equals("context:component-scan")){
				String pack = attributes.getValue("base-package");
				list.add(pack);
				
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	
}
