<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${toolList}" var="tool">
						<tr>
										<td><%=i++%></td>
										<td>${tool.name }</td>
										<td>${tool.typeTool.value }</td>	
										<td>${tool.place }</td>
										<td>
										<form:form action="edit_tool" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${tool.id}">
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form>
																	
										</td>
										<td>
											<button class="btn btn-danger"	value="${tool.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
										</td>
						</tr>
</c:forEach>
<tr>
<td colspan="6"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>