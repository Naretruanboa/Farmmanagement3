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
										<td>
											<form:form action="breed_detail?id=${breeding.id }" method="POST">
												<input id="id" name="id" type="hidden" value="">
												<button type="submit" class="btn btn-success">
												<i class="fa fa-search-plus"></i>
												</button>
											</form:form>
										</td> 	
											<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege ==2 || sessionScope.privilege ==3}">	
										
											
										<td>
										<form:form action="breeding_edit?id=${breeding.id }" method="POST" commandName="sh">
												<button type="submit" class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
												</button>
										</form:form>
										</td>										
										<td>
										<button class="btn btn-danger"	value="${breeding.id }" onclick="bredel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
										</button>
										</td>
											</c:if>			
									 
										
									
							
									</tr>
								</c:forEach>
<!-- <tr>
<td colspan="7"><br></td>
</tr> -->
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>