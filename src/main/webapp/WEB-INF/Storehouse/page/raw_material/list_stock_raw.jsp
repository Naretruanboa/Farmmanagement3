<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${rawList}" var="raw">
						<tr>
							<td><%=i++%></td>						
				    		<td>${raw.name }</td>	   	
				        	<td>${raw.typeMaterial.value }</td>	
				        	<td>
				        		<c:choose>
									<c:when test="${raw.quantity != null}">
										${raw.quantity }
									</c:when>
									<c:otherwise>
										0
									</c:otherwise>
								</c:choose>
				        	
				        	</td>	
				        	<td>${raw.unitRawMaterial.value }</td>	
				        	<td>${raw.place }</td>
						</tr>
						</c:forEach>
<tr>
<td colspan="6"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>