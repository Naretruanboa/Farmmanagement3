<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${ToolimList }" var="listim">
<fmt:parseDate value="${listim.day}" pattern="yyyy-MM-dd" var="Day" />
						<tr>
							<td><%=i++%></td>
							<td><fmt:formatDate value="${Day}" pattern="dd-MM-yyyy"/></td>   
							<td>${listim.tool.name }</td>
							<%-- <td>${listim.beforeQuantity }</td> --%>
							<td>${listim.quantity}</td>
							<td>${listim.tool.unitTool.value }</td>
							<td>${listim.import_ }</td>
							<td>${listim.member.first }</td>
							<c:if test="${sessionScope.privilege == 1}">
									<td>
				        					<button class="btn btn-danger"	value="${listim.id }" onclick="chkdel(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
				        			</td>
				        			</c:if>
						</tr>
</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>