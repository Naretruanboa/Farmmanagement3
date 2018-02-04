<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
String p = request.getParameter("page");
int i = 1;
if (p != null){
int a =  Integer.parseInt(p);
	a=(a-1)*10;
	i=1+a; 
}
%>
<c:forEach items = "${rawListtttt}" var="rawnu">
				 	<tr>
				 		 <td><%=i++ %></td>
				 		 <td>${rawnu.rawMaterial.name}</td>
				 		 <td>${rawnu.dm}</td>
				 		 <td>${rawnu.protein}</td>
				 		 <td>${rawnu.tdn}</td>
				 		 <td>${rawnu.ndf}</td>
				 		 <td>${rawnu.adf}</td>
				 		 <td>${rawnu.ca}</td>
				 		 <td>${rawnu.p}</td>
				 		 <td>${rawnu.nfc}</td>
				 		 <td>${rawnu.uip}</td>
				 		 <td>${rawnu.dip}</td>
				 		 <td>${rawnu.vitA}</td>
				 		 <td>${rawnu.vitE}</td>
				 		 <td>
				 		 <a href="edit_rawnu?id=${rawnu.id}">
				 		 <button  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button> 
								</a>
						</td>
						 <td>
						 	<button class="btn btn-danger"	value="${rawnu.id }" onclick="chkdel(this.value)">
								<i class="glyphicon glyphicon glyphicon-remove"></i>
							</button>
						</td>
				 	</tr>
				 	</c:forEach>
<!-- <tr>
<td colspan="6"><br></td>
</tr> -->
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>