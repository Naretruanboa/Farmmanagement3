<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${toolStockList}" var="tool">
						<tr>
							<td><%=i++%></td>						
				    		<td>${tool.name }</td>	   	
				        	<td>${tool.typeTool.value }</td>	
				        	<td>
				        		<%-- <c:if test="${UnitTool.id != null}">
										${tool.quantity }
								</c:if>
				        		<c:if test="${UnitTool.id == null}">
										0
								</c:if> --%>
								<c:choose>
									<c:when test="${tool.quantity != null}">
										${tool.quantity }
									</c:when>
									<c:otherwise>
										0
									</c:otherwise>
								</c:choose>				        	
				        	</td>	
				        	<td>${tool.unitTool.value }</td>	
				        	<td>${tool.place }</td>
				        	<c:if test="${sessionScope.privilege == 1}">
								<td>
				        			<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal" 
										data-id1="${tool.id }" data-name="${tool.name }" data-beforequantity="${tool.quantity }">ลดจำนวน
									</button>
				        		</td>
				        	</c:if>
						</tr>
</c:forEach>
<tr>
<td colspan="6"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>