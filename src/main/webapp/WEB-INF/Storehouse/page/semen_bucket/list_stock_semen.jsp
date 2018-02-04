<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${semenList }" var="semen">
						<tr>
							<td><%=i++%></td>						
				    		<td>${semen.nameCattle }</td>
				    		<td>${semen.HNumber }</td>	
				    		<td>${semen.breed.value }</td>	   
				        	<td>
				        		<c:choose>
									<c:when test="${semen.quantity != null}">
										${semen.quantity }
									</c:when>
									<c:otherwise>
										0
									</c:otherwise>
								</c:choose>
				        	</td>	
				        	<td>หลอด (โดีส)</td>	
				        	<td>
				        		<c:choose>
									<c:when test="${semen.bucket.number != null}">
										${semen.bucket.number}/${semen.canister}/${semen.rack}
									</c:when>
									<c:otherwise>
										-
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
</c:forEach>
<tr>
<td colspan="9"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>