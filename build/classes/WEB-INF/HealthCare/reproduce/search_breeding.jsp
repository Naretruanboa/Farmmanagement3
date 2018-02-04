<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
								<c:forEach items="${breeding }" var="breeding">
									<tr>
										<td><%=i++ %></td>
										<td>${breeding.cattleByCattlemaId.num }</td>
										<td>${breeding.cattleByCattlefaId.num }</td>
										<td>${breeding.date }</td>
										<td>${breeding.member.first }&nbsp;${breeding.member.last  }</td>
									<%-- 	<td>${alt.value }</td> --%>
<%-- 										<td>
											<form:form action="detailbreeding?id=${breeding.id }" method="POST">
												<input id="id" name="id" type="hidden" value="">
												<button type="submit" class="btn btn-success">
												<i class="fa fa-search-plus"></i>
												</button>
											</form:form>
										</td> --%>
									
							
									</tr>
								</c:forEach>
<!-- <tr>
<td colspan="7"><br></td>
</tr> -->
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>