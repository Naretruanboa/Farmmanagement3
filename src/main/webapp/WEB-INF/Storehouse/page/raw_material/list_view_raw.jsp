<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${rawList}" var="rawmaterial">
						<tr>
										<td><%=i++%></td>
										<td>${rawmaterial.name }</td>
										<td>${rawmaterial.typeMaterial.value }</td>	
										<td>${rawmaterial.place }</td>									
										
										<td>
										<form:form action="edit_raw" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${rawmaterial.id}">
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form>								
										</td>
										<td>
										<button class="btn btn-danger"	value="${rawmaterial.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
											<%-- <form:form action="del_raw?id=${rawmaterial.id }" method="POST" commandName="show">
											
												<button name="action" type="submit" id="del_raw" class="btn btn-danger"
													onclick="return confirm('Do you want to delete?')"
												>
													<i class="glyphicon glyphicon glyphicon-remove"></i>
												</button>
											
											</form:form> --%>								
										</td>
						</tr>
						
</c:forEach>
<tr>
<td colspan="6"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>