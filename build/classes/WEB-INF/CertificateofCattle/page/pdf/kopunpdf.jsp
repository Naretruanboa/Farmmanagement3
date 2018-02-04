<%@ page language="java" contentType="application/pdf; charset=UTF8"
    pageEncoding="UTF8"%>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="net.sf.jasperreports.engine.data.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page trimDirectiveWhitespaces="true"%>

<%
try{
	String i = (String)request.getAttribute("form");
	String path ="";
	List<Map<String,?>> dataSource = (List<Map<String,?>>) request.getAttribute("cowlist");
	JRDataSource jrDataSource = new JRBeanCollectionDataSource(dataSource);
	if(i.equals("5")){
		path = "/WEB-INF/CertificateofCattle/report/kopun5.jrxml";
	}
	else if(i.equals("4")){
		path = "/WEB-INF/CertificateofCattle/report/kopun4.jrxml";
	}
	else if(i.equals("3")){
		path = "/WEB-INF/CertificateofCattle/report/kopun3.jrxml";
	}
	else if(i.equals("2")){
		path = "/WEB-INF/CertificateofCattle/report/kopun2.jrxml";
	}
	else{
		path = "/WEB-INF/CertificateofCattle/report/kopun1.jrxml";
	}
	String jrxmlFile = session.getServletContext().getRealPath(path);
	
	
	Map<String, Object> parameters = new HashMap<String, Object>();
	InputStream input = new FileInputStream(new File(jrxmlFile));
	JasperReport jasperReport = JasperCompileManager.compileReport(input);
	HashMap parameterMap = new HashMap();
	parameterMap.put("path",session.getServletContext().getRealPath("/img/festivity/"));
	JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,parameterMap, jrDataSource);
	JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	response.getOutputStream().flush();
	response.getOutputStream().close();
	
}catch(Exception e){
	e.printStackTrace();
}
%>
