<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>    
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<thead>
					<tr>
						<th>ลำดับที่</th>						
				    	<th>ชื่อวัสดุ/อุปกรณ์</th>			      
				        <th>จำนวนคงคลัง</th>
				        <th>หน่วย</th>    
				      </tr>
				</thead> 
				
				 	<tbody style="text-align: center;" > 
						<c:forEach items="${toolList}" var="tool">
						<tr>
							<td><%=i++%></td>						
				    		<td>${tool.name }</td>	   	
				        	<td>
								<c:choose>
									<c:when test="${tool.quantity != null}">
										${tool.quantity }
									</c:when>
									<c:otherwise>
										0
									</c:otherwise>
								</c:choose>				        	
				        	</td>	
				        	<td>${tool.unitTool.value }</td>
						</tr>
</c:forEach>
					</tbody>
<input type="hidden" id="count" value="${count}">
<input type="hidden" id="countPage" value="${countPage}"/>
<input type="hidden" id="Page" value="${page}"/>