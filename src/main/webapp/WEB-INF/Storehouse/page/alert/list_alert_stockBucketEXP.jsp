<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${BucketList}" var="buckexp">
<fmt:parseDate value="${buckexp.dayExpN}" pattern="yyyy-MM-dd" var="dayExpN" />
				      <tr>
				    <td><%=i++ %></td>
				   <td>${buckexp.number }</td>
					<td>${buckexp.name }</td>
				    <td><fmt:formatDate value="${dayExpN}" pattern="dd-MM-yyyy"/></td>
				    
									<c:if test="${sessionScope.privilege ==1}">	<td>
						<input type="hidden" name="check" id="check[${buckexp.id }]" value="0"/>
						<input type="hidden" name="id" id="id" value="${buckexp.id}"/>
										    <label class="checkbox">
							  					<input type="checkbox" name="check" id="chk"  data-toggle="checkbox" 
							  						onclick="Javascript: if(this.checked){
							  							document.getElementById('check[${buckexp.id }]').disabled = true;
							  						}
							  						else{
							  							document.getElementById('check[${buckexp.id }]').disabled = false;
							  						}" 
							 					 value="1" />
							 				 </label>
										</td></c:if>
				   		</tr>
</c:forEach>
<input type="hidden" name="num" id="num" value="${num}"/>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>