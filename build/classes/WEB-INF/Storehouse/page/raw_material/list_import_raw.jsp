<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${RawimList }" var="rawim">
<fmt:parseDate value="${rawim.day}" pattern="yyyy-MM-dd" var="Day" />
<fmt:parseDate value="${rawim.dayMfd}" pattern="yyyy-MM-dd" var="dayMfd"/>
<fmt:parseDate value="${rawim.dayExp}" pattern="yyyy-MM-dd" var="dayExp"/>
									<tr>
									<td><%=i++%></td>
									<td><fmt:formatDate value="${Day}" pattern="dd-MM-yyyy"/></td>
									<td>${rawim.rawMaterial.name }</td>
									<td>${rawim.quantity }</td>
									<td>${rawim.rawMaterial.unitRawMaterial.value }</td>
									<td><fmt:formatDate value="${dayMfd}" pattern="dd-MM-yyyy"/></td>
									<td><fmt:formatDate value="${dayExp}" pattern="dd-MM-yyyy"/></td>
									<td>${rawim.import_ }</td>
									<td>${rawim.member.first }</td>
									<c:if test="${sessionScope.privilege == 1}">
									<td>
				        		<button class="btn btn-danger"	value="${rawim.id }" onclick="chkdel(this.value)">
											<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
				        			</td>
				        			</c:if>
									</tr>
									</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>