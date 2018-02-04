<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
String p = request.getParameter("page");
int i = 0;
if (p != null){
int a =  Integer.parseInt(p);
	a=(a-1)*10;
	i=1+a; 
}
%>
<c:forEach items = "${rawListtttt}" var="raw">
				 	<tr>
				 		 <td><%=i++ %></td>
				 		 <td>${raw.name}</td>
				 		 <td>${raw.typeMaterial.value}</td>
				 		 <td>
				 		 <a href="edit_rawN?id=${raw.id}">
				 		 <button  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
								</a>
						</td>
						 <td><button class="btn btn-danger"	value="${raw.id }" onclick="chkdel(this.value)">
								<i class="glyphicon glyphicon glyphicon-remove"></i>
							</button></td>
				 	</tr>
				 	</c:forEach>
<tr>
<td colspan="6"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>