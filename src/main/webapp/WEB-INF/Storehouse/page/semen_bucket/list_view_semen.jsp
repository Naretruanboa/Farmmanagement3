<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${semenList}" var="semen">
					<tr>
									<td><%=i++%></td>
										<td>${semen.nameCattle }</td>
										<td>${semen.breed.value }</td>
										<td>${semen.HNumber }</td>										
										<td>${semen.color.value }</td>
										<td>${semen.tubeColor }</td>
										<td>${semen.tubeSize }</td>
										<td>
				        					<c:choose>
												<c:when test="${semen.bucket.number != null}">
													${semen.bucket.number}/${semen.canister}/${semen.rack}
												</c:when>
												<c:otherwise>
													-
												</c:otherwise>
											</c:choose>
										</td>
										<td>
										<form:form action="edit_semen" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${semen.id}">
											<button name="action" class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form>									
										</td>
										<td>	
										<button class="btn btn-danger"	value="${semen.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
											<%-- <form:form action="del_semen?id=${semen.id }" method="POST" commandName="show">
											
												<button name="action" type="submit" id="del_semen" class="btn btn-danger"
													onclick="return confirm('Do you want to delete?')"
												>
													<i class="glyphicon glyphicon glyphicon-remove"></i>
												</button>
											
											</form:form> --%>								
										</td>
					</tr>
</c:forEach>
<tr>
<td colspan="9"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>