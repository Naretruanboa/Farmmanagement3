
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>

<c:forEach items="${weightG }" var="weigh">
									
									<tr>
										<td><%=i++ %></td>
										<td>${weigh.cattle.numDate }</td>
										<td>${weigh.date }</td>
										<td>${weigh.weightyear }</td>					
										<td>${weigh.member.first }&nbsp;${weigh.member.last }</td>
								
									</tr>
									
								</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>