<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${hornList }" var="horn">
									<tr>
										<td><%=i++ %></td>
										<td>${horn.cattle.numDate }</td>
										<td>${horn.date }</td>
										<td>${horn.typeHorn.value }</td>									
										<td>${horn.member.first }&nbsp;${horn.member.last }</td>
										<td>
										<form:form action="horndeter_detail?id=${horn.id }" method="POST">
											<input id="id" name="id" type="hidden"  value="${horn.id}">
											<button class="btn btn-success">
												<i class="fa fa-search-plus"></i>
											</button>
										</form:form>
											
											<a href="">
												<input id="id" name="id" type="hidden"  value="${horn.id}">
			  								</a>
			  							</td>	
			  							<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege ==2 || sessionScope.privilege ==3}">
			  							
										<td>	
										<form:form action="horndeter_edit?id=${horn.id }" method="POST" commandName="sh"
										 >
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form> 
																			
										</td>
										</c:if>
										<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege ==2 || sessionScope.privilege ==3}">
										<td>
										<button class="btn btn-danger"	value="${horn.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
																				
										</td>
										</c:if>
									</tr>
								</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>