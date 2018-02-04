<%@page import="net.sf.jasperreports.engine.util.JRLoader"%>
<%@page import="net.sf.jasperreports.engine.design.JasperDesign"%>
<%@page import="net.sf.jasperreports.engine.xml.JRXmlLoader"%>
<%@page import="net.sf.jasperreports.engine.data.JRBeanCollectionDataSource"%>
<%@page import="net.sf.jasperreports.engine.JasperExportManager"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JasperCompileManager"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="net.sf.jasperreports.engine.JRDataSource"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.*"%>
<%@ page contentType="application/pdf"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	try {
		List<Map<String, ?>> dataSource = (List<Map<String, ?>>) request.getAttribute("memberslist");
		JRDataSource jrDataSource = new JRBeanCollectionDataSource(dataSource);
		//String jrxmlFile = session.getServletContext().getRealPath("/report/memberreport.jrxml");
		//String jrxmlFile = session.getServletContext().getRealPath("D:/Copy/workspace/jsp/jsptest/src/main/webapp/WEB-INF/pages/report/memberreport.jrxml");
		//String jrxmlFile = "D:/Copy/workspace/jsp/jsptest/src/main/webapp/WEB-INF/pages/report/memberreport.jrxml";
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/reports/memberreport.jasper");
		//String jrxmlFile = "D:/Copy/workspace/jsp/jsptest/src/main/resources/reports/memberreport.jrxml";	
		//JasperDesign jd  = JRXmlLoader.load("D:/Copy/workspace/jsp/jsptest/src/main/resources/reports/memberreport.jasper");
		JasperReport jasperReport =  (JasperReport) JRLoader.loadObject(new File(path));//"D:/Copy/workspace/jsp/jsptest/src/main/resources/reports/memberreport.jasper"));//JasperCompileManager.compileReport(jrxmlFile);
		//JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, jrDataSource);
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null,jrDataSource);
		JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
		response.getOutputStream().flush();
		response.getOutputStream().close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>