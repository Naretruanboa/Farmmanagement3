<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${ListY }" var="horn">
									<tr>
										<td><%=i++ %></td>
										<td>${horn.cattle.num }</td>
										<td>${horn.date }</td>
										<td>${horn.weightyear }</td>									
										<td>${horn.member.first }&nbsp;${horn.member.last }</td>
									</tr>
								</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>