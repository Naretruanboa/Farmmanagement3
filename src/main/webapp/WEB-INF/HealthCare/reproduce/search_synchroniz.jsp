<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
								<c:forEach items="${sync }" var="synchroniz">
									<tr>
										<td><%=i++ %></td>
										<td>${synchroniz.cattle.num }</td>
										<td>${synchroniz.typeSync.value }</td>
										<td>${synchroniz.dateSync }</td>
										<td>${synchroniz.member.first }&nbsp;${synchroniz.member.last }</td>
									
									<td>
										<form:form action="synchroniz_detail?id=${synchroniz.id }" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${synchroniz.id}">
											<button type="submit" class="btn btn-success">
												<i class="glyphicon glyphicon-search "></i>
											</button>
										</form:form>									
										</td>
										<td>
										<form:form action="synchroniz_edit?id=${synchroniz.id }" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${synchroniz.id}">
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form>
											
											<a href="">
												<input id="id" name="id" type="hidden"  value="${synchroniz.id}">
			  								</a>
											
										<%-- <form:form action="edit_medicine?id=${medicine.id }" method="POST" >
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form> --%>
																			
										</td>
										<td>
										<button class="btn btn-danger"	value="${synchroniz.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
																				
										</td>
							
									</tr>
								</c:forEach>
<!-- <tr>
<td colspan="7"><br></td>
</tr> -->
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>