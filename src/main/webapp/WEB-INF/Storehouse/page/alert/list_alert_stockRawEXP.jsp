<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${RawList}" var="rawexp">
	<fmt:parseDate value="${rawexp.dayExp}" pattern="yyyy-MM-dd" var="dayExp" />
				      <tr>
				    <td><%=i++ %></td>
				     <td><fmt:formatDate value="${dayExp}" pattern="dd-MM-yyyy"/></td>   
		   			<td>${rawexp.rawMaterial.name }</td>
		    		<td>${rawexp.quantity }</td>
				    <td>${rawexp.rawMaterial.unitRawMaterial.value }</td>
				    
										<c:if test="${sessionScope.privilege ==1}"><td>
						<input type="hidden" name="check" id="check[${rawexp.id }]" value="0"/>
						<input type="hidden" name="id" id="id" value="${rawexp.id}"/>
										    <label class="checkbox">
							  					<input type="checkbox" name="check" id="chk"  data-toggle="checkbox" 
							  						onclick="Javascript: if(this.checked){
							  							document.getElementById('check[${rawexp.id }]').disabled = true;
							  						}
							  						else{
							  							document.getElementById('check[${rawexp.id }]').disabled = false;
							  						}" 
							 					 value="1" />
							 				 </label>
										</td></c:if>
				   		</tr>
</c:forEach>
<input type="hidden" name="num" id="num" value="${num}"/>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>