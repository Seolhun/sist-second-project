package com.sist.model;

public class HashingHTML {
	public static String strTohtml(String sText) {
		sText = sText.trim();
		sText = sText.replace("&", "&amp;");
		sText = sText.replace("#", "&#35;");
		sText = sText.replace("<", "&lt;");
		sText = sText.replace(">", "&gt;");
		sText = sText.replace("%", "&#37;");
		sText = sText.replace("\"", "&quot;");
		sText = sText.replace("'", "&#39;");
		sText = sText.replace(" ", "&nbsp;");
		sText = sText.replace("<br>", "\n");
		// System.out.println(sText);
		return sText;
	}

	public static String htmlTostr(String sText) {

		sText = sText.replace("&lt;", "<");
		sText = sText.replace("&gt;", ">");
		sText = sText.replace("&amp;", "&");
		sText = sText.replace("&#37;", (char) 37 + "");
		sText = sText.replace("&quot;", (char) 34 + "");
		sText = sText.replace("&#39;", (char) 39 + "");
		sText = sText.replace("&#35;", "#");
		sText = sText.replace("\n", "<br>");
		sText = sText.replace("&nbsp;", " ");

		// System.out.println(sText);
		return sText;
	}
	public static String htmlToSearch(String sText) {

		sText = sText.replace("&lt;", "<");
		sText = sText.replace("&gt;", ">");
		sText = sText.replace("&amp;", "&");
		sText = sText.replace("&#37;", (char) 37 + "");
		sText = sText.replace("&quot;", (char) 34 + "");
		sText = sText.replace("&#39;", (char) 39 + "");
		sText = sText.replace("&#35;", "#");
		sText = sText.replace("\n","");
		sText = sText.replace("&nbsp;", " ");
		sText = sText.replace("<p>", "");
		sText = sText.replace("</p>", "");
		// System.out.println(sText);
		return sText;
	}
}
