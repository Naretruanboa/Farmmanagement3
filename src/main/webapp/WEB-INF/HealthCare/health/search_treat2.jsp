<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
								<c:forEach items="${treat }" var="treatment">
									<tr>
										<td><%=i++ %></td>
										<td>${cattle.num }</td>
										<td>${cattle.numDate }</td>										
										<td>${cattle.name }</td>
										<td>${cattle.calved }</td>
										<td>${cattle.statusBreed.value }</td>
										<td>${cattle.color.nameColor }</td>	
										
										<td>
										<form:form action="treat_his_detail?id=${treatment.id }" method="GET" commandName="sh">
												<button type="submit" class="btn btn-success">
												<i class="fa fa-search-plus"></i>
												</button>
										</form:form>
										</td>
										
							<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege ==2 || sessionScope.privilege ==3}">			
										<td>
										<form:form action="edit_treatment?id=${treatment.id }" method="POST" commandName="sh">
												<button type="submit" class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
												</button>
											</form:form>
										</td>										
										<td>
										<button class="btn btn-danger"	value="${treatment.id }" onclick="chkdel(this.value)">
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