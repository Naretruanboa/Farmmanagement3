<%@ page language="java" contentType="application/pdf; charset=UTF8"
    pageEncoding="UTF8"%>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="net.sf.jasperreports.engine.data.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page trimDirectiveWhitespaces="true"%>

<%
try{
	int i = (int)request.getAttribute("i");
	String path ="";
	List<Map<String,?>> dataSource = (List<Map<String,?>>) request.getAttribute("callist");
	JRDataSource jrDataSource = new JRBeanCollectionDataSource(dataSource);
	if(i==1){
		path="/WEB-INF/CertificateofCattle/report/pay.jrxml";
	}
	else{
		path="/WEB-INF/CertificateofCattle/report/pay_member.jrxml";
	}
	String jrxmlFile = session.getServletContext().getRealPath(path);
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