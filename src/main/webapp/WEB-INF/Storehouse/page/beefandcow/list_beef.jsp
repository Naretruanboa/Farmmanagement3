<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${cattleT }" var="cattle">
										<tr>
									<c:if test="${cattle.typeCattle.id == 1 }">
											<td><%=i++ %></td>							 
											<td>${cattle.num}</td>
											<td>${cattle.numDate}</td>
											<td>${cattle.name}</td>
											<td>${cattle.breed.value}</td>
											<%-- <td>${cattle.typeCattle.id}</td> --%>
											<td>
											
											<form:form action="detail_cow?id=${cattle.id}" method="POST" commandName="cattlen">
												<input id="id" name="id" type="hidden"  value="${cattle.id}">
													<button type="submit" class="btn btn-warning">
													<i class="glyphicon glyphicon-search "></i>
													</button>
											</form:form>
																				
											</td>
							
											<td>	
										<form:form action="edit_beefTk?id=${cattle.id }" method="POST" >
												<button type="submit" class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
												</button>
										</form:form>
										</td>	
																			
										<c:if test="${sessionScope.privilege == 1}">
									<td>
				        					<button class="btn btn-danger"	value="${cattle.id }" onclick="chkdelC(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
				        				</td>
				        					</c:if>							
										 </c:if>
										</tr>
									</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>