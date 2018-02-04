<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
String p = request.getParameter("page");
int i = 1;
if (p != null){
int a =  Integer.parseInt(p);
	a=(a-1)*10;
	i=1+a; 
}
%>
<c:forEach items = "${x}" var="formula">
				 	<tr>
				 		 <td><%=i++ %></td>
				 		 <td>${formula.sumweight}</td>
				 		 <td>${formula.cost}</td>
				 		 <td>${formula.dm1}</td>
				 		 <td>${formula.dm2}</td>
				 		 <td>${formula.cp1}</td>
				 		 <%-- <td>${formula.p1}</td>
				 		 <td>${formula.p2}</td> --%>
				 		
		
						<%--  <td><button class="btn btn-danger"	value="${formula.id }" onclick="chkdel(this.value)">
								<i class="glyphicon glyphicon glyphicon-remove"></i>
						 </button></td> --%>
				 		 <td><button class="btn btn-success" value="${formula.id }" onclick="report_show(${formula.id})"

>
								<i class="glyphicon glyphicon-file"></i>
						 </button></td>
				 	</tr>
				 	</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>