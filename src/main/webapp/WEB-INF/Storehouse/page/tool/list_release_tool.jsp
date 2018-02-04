<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${ToolRList }" var="listrelease">
<fmt:parseDate value="${listrelease.day}" pattern="yyyy-MM-dd" var="Day" />
						<tr>
							<td><%=i++%></td>						
				    		<td><fmt:formatDate value="${Day}" pattern="dd-MM-yyyy"/></td>   
				    		<td>${listrelease.tool.name }</td>	   		
				        	<td>${listrelease.quantity }</td>
				        	<td>${listrelease.tool.unitTool.value}</td>
				        	<td>${listrelease.member.first }</td>
				        	<c:if test="${sessionScope.privilege == 1}">
									<td>
				        					<button class="btn btn-danger"	value="${listrelease.id }" onclick="chkdel(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
				        			</td>
				        			</c:if>
						</tr>
						</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>