<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${Listwean }" var="wea">
									<tr>
										<td><%=i++ %></td>
										<td>${wea.cattle.numDate }</td>
										<td>${wea.date }</td>
										<td>${wea.weigthwean }</td>					
										<td>${wea.member.first }&nbsp;${wea.member.last }</td>
										<td>
										<form:form action="wean_detail?id=${wea.id }" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${wea.id}">
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
										<form:form action="wean_edit?id=${wea.id }" method="POST" >
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form> 
																			
										</td>
										</c:if>			
										<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege ==2 || sessionScope.privilege ==3}">
										<td>
										<button class="btn btn-danger"	value="${wea.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
										</button>
																				
										</td>
										</c:if>	
									</tr>
								</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>