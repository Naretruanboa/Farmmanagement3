<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${SemenimList }" var="list">
<fmt:parseDate value="${list.day}" pattern="yyyy-MM-dd" var="Day" />
								<tr>
									<td><%=i++ %></td>
									<td><fmt:formatDate value="${Day}" pattern="dd-MM-yyyy"/></td>   
									<td>${list.semen.nameCattle }</td>
									<td>${list.quantity }</td>
									<td>หลอด (โด๊ส)</td>
									<td>${list.price}</td>
									<td>${list.member.first} ${list.member.last}</td>
									<c:if test="${sessionScope.privilege == 1}">
									 <td>
				        					<button class="btn btn-danger"	value="${list.id }" onclick="chkdel(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
				        			</td> 
				        			</c:if>
								</tr>	
								</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>