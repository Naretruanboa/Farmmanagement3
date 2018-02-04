<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>
    
    <c:if test="${num==1 }">
<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				    <c:forEach items="${standardlist }" var="st">
				    <tr>
				      		<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 1 : <input type="text" class="form-control text-center" name="start1" id="start1" value="${st.startCalf1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end1" id="end1" value="${st.endCalf1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>   
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 2 : <input type="text" class="form-control text-center" name="start2" id="start2" value="${st.startCalf2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end2" id="end2" value="${st.endCalf2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 3 : <input type="text" class="form-control text-center" name="start3" id="start3" value="${st.startCalf3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end3" id="end3" value="${st.endCalf3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				  </tr>
				  </c:forEach>
				</tbody>
</table>
</c:if>

    <c:if test="${num==2 }">
<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				    <c:forEach items="${standardlist }" var="st">
				    <tr>
				      		<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 1 : <input type="text" class="form-control text-center" name="start1" id="start1" value="${st.startIntermediate1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end1" id="end1" value="${st.endIntermediate1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>   
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 2 : <input type="text" class="form-control text-center" name="start2" id="start2" value="${st.startIntermediate2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end2" id="end2" value="${st.endIntermediate2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 3 : <input type="text" class="form-control text-center" name="start3" id="start3" value="${st.startIntermediate3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end3" id="end3" value="${st.endIntermediate3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				  </tr>
				  </c:forEach>
				</tbody>
</table>
</c:if>

<c:if test="${num==3 }">
<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				    <c:forEach items="${standardlist }" var="st">
				    <tr>
				      		<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 1 : <input type="text" class="form-control text-center" name="start1" id="start1" value="${st.startJunior1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end1" id="end1" value="${st.endJunior1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>   
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 2 : <input type="text" class="form-control text-center" name="start2" id="start2" value="${st.startJunior2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end2" id="end2" value="${st.endJunior2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 3 : <input type="text" class="form-control text-center" name="start3" id="start3" value="${st.startJunior3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end3" id="end3" value="${st.endJunior3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				  </tr>
				  </c:forEach>
				</tbody>
</table>
</c:if>

<c:if test="${num==4 }">
<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				    <c:forEach items="${standardlist }" var="st">
				    <tr>
				      		<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 1 : <input type="text" class="form-control text-center" name="start1" id="start1" value="${st.startSenior1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end1" id="end1" value="${st.endSenior1}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>   
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 2 : <input type="text" class="form-control text-center" name="start2" id="start2" value="${st.startSenior2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end2" id="end2" value="${st.endSenior2}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				   </tr>
				   <tr>
				   			<td class="text-center"style=" vertical-align:middle;">
				      			รุ่นที่ 3 : <input type="text" class="form-control text-center" name="start3" id="start3" value="${st.startSenior3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;ถึง&nbsp;&nbsp;
				      			<input type="text" class="form-control" name="end3" id="end3" value="${st.endSenior3}" style="width:50px; display:inline;"/>&nbsp;&nbsp;เดือน
				      		</td>
				  </tr>
				  </c:forEach>
				</tbody>
</table>
</c:if>