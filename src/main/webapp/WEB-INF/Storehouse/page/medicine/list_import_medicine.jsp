<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${MedIMList }" var="medim" >
<fmt:parseDate value="${medim.day}" pattern="yyyy-MM-dd" var="myDay" />
<fmt:parseDate value="${medim.dayMfd}" pattern="yyyy-MM-dd" var="dayMfd"/>
<fmt:parseDate value="${medim.dayExp}" pattern="yyyy-MM-dd" var="dayExp"/>


									<tr>
									<td><%=i++%></td>
									<td><fmt:formatDate value="${myDay}" pattern="dd-MM-yyyy"/></td>
									<td>${medim.medicine.tradeName }</td>
									<td>${medim.quantity }</td>
									<td>${medim.medicine.unitMedicine.value }</td>
									<td><fmt:formatDate value="${dayMfd}" pattern="dd-MM-yyyy"/></td>
									<td><fmt:formatDate value="${dayExp}" pattern="dd-MM-yyyy"/></td>
									<td>${medim.import_ }</td>
									<td>${medim.member.first }</td>
									
									<c:if test="${sessionScope.privilege == 1}">
									<td>
				        					<button class="btn btn-danger"	value="${medim.id }" onclick="chkdel(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
				        			</td>
				        			</c:if>
									</tr>
</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>