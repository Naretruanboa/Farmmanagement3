<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${ListStam }" var="number">

									<tr>
										<td><%=i++ %></td>
										<td>${number.cattle.num }</td>
										<td>${number.cattle.numDate }</td>
										<td>${number.date }</td>									
										<td>${number.member.first }&nbsp; ${number.member.last}</td>
										<td>
										
										<form:form action="numbercat_detail?id=${number.id }" method="POST" commandName="show">
											<input id="id" name="id" type="hidden" value="${number.id}">
											<button class="btn btn-success">
												<i class="fa fa-search-plus"></i>
											</button>
										</form:form>											
											<a href="">
												<input id="id" name="id" type="hidden" value="${number.id}">
			  								</a>
			  							</td>
			  							
			  							<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege == 2 || sessionScope.privilege == 3 }">
										
										<td>	
										<form:form action="numbercat_edit?id=${number.id }" method="POST" >
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form> 								
										</td>
										</c:if>
										
										<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege == 2 || sessionScope.privilege == 3 }">
										
										<td>
											<button class="btn btn-danger"	value="${number.id}" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>										
										</td>
										
										</c:if>
								
									</tr>
								</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>