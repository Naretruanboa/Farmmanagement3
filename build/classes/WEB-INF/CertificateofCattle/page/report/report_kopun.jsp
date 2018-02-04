<%@ page language="java" contentType="application/pdf; charset=UTF8"
    pageEncoding="UTF8"%>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="net.sf.jasperreports.engine.data.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page trimDirectiveWhitespaces="true"%>

<%
try{
	List<Map<String,?>> dataSource = (List<Map<String,?>>) request.getAttribute("punlist");
	JRDataSource jrDataSource = new JRBeanCollectionDataSource(dataSource);
	String jrxmlFile = session.getServletContext().getRealPath("/WEB-INF/CertificateofCattle/report/report_pun.jrxml");
	InputStream input = new FileInputStream(new File(jrxmlFile));
	JasperReport jasperReport = JasperCompileManager.compileReport(input);
	JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null, jrDataSource);
	JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	response.getOutputStream().flush();
	response.getOutputStream().close();
}catch(Exception e){
	e.printStackTrace();
}
%>