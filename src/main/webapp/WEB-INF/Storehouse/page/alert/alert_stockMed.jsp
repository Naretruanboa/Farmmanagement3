<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<c:url value="/resources/js/baloon.js"/>"></script> <!-- สคริปเรียกalert -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>การแจ้งเตือน</title>
</head>
<body OnLoad="JavaScript:alert()">

   
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
	<jsp:include page="../menu.jsp"/>
<%int i=1,n=1,m=1,o=1,p=1,q=1,r=1; %>


		 <div class="container">
		 <hr>
		 
		<div class=" row form-group">
				<div class="form-inline">
				<br>
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							
							<p style="font-size: 28px; font-weight: 700; color: white;">การแจ้งเตือนคงคลัง</p>
						</div>
					</div>
				</div>
				
			</div>
		<hr>
		         

		<div class="col-md-3">
				<div class="panel panel-primary">
				
				<div class="panel-heading">
				
					<h4 class="panel-title"><font size="5">ประเภทการแจ้งเตือน</font></h4>
				</div>
				<div class="panel-body " >
					<ul id="myTab1" class="nav nav-pills  nav-justified " >
					<style>
					
					.nav-pills a:link  {
    					background-color: #CCFFFF;
					}
					
				 	/* .nav-pills > li.active > a, .nav-pills > li.active > a:focus {
       					 color: White;
        					background-color: #ffffFF;
    				} 
		 			 .nav-pills > li.active > a:hover {
           			 background-color: #efcb00;
            		color:black;
       			 }  */

			</style>
                <li class="active"><a href="alert"><font size="4"> ยาคงคลัง</font></a></li><br>
                <li><a href="alert?id=2" ><font size="4">น้ำเชื้อคงคลัง</font></a></li><br>
                 <li><a href="alert?id=3"><font size="4">วัตถุดิบคงคลัง</font></a></li><br>
                 <li><a href="alert?id=4"><font size="4">วัสดุ/อุปกรณ์คงคลัง</font></a></li><br>
                 <li><a href="alert?id=5" ><font size="4">วันหมดอายุของยา</font></a></li><br>
                <li><a href="alert?id=6" ><font size="4">วันหมดอายุของวัตถุดิบ</font></a></li><br>
                <li><a href="alert?id=7" ><font size="4">ปริมาณไนโตรเจนเหลวต่ำกว่ากำหนด</font></a></li>
              </ul>
				</div>
			</div>
		</div>

		 <!-- //ตาราง -->
		 <div class="col-md-9">  
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><font size="5">รายละเอียดข้อมูล</font></h4>
				</div>
				<div class="panel-body" >
				<div id="myTabContent" class="tab-content">
<div class="tab-pane fade active in" id="MEDICINE">
              <form id="alertMedicine">  
                 <table align="center" class="table table-striped table-hover  table-bordered">
				<thead>
				
					<tr>
						<th>ลำดับที่</th>
				        <th>รายการ</th>
				        <th>จำนวน</th>
				    	<th>หน่วย </th>
				    	<c:if test="${sessionScope.privilege ==1}"><th>ปิดการแจ้งเตือน </th></c:if>
				      </tr>
				
				    </thead>
				    <tbody style="text-align: center;" id="listalertStockMed">
				    
				</tbody>
			</table>
				
			</form>
			<div class="row form-group" id="page" align="center"></div>
			<c:if test="${sessionScope.privilege ==1}">
							<div class="text-center">
							<input type="checkbox" id="checkAll" data-toggle="checkbox" class="form-control hide"/>
							<button type="button" id="toggle" class="btn btn-embossed btn-primary" onclick="checkall()">เลือก/ไม่เลือก ทั้งหมด</button>
					   		<button type="button" class="btn btn-success" id="save">บันทึก</button>
					   		</div>
					   		<br>
			</c:if>
                </div>
  </div>
			</div>
		</div>
	</div>	  
</body>

<script type="text/javascript"> //สคริปแจ้งเตือน
$("#listalertStockMed").load('alert_stockMed',function(){
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
		for(i=0 ;i<=8;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
}); //จาก id list ที่ tbody จะทัมการโหลดไฟล์ alert_list มาแสดง


$(document).on('click','#pageNum',function(e){
	 var id =  $('[id=pageNum]').index(e.target);
	 $("#listalertStockMed").load('alert_stockMed',{ page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=8;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
}); 






//ปิดการแจ้งเตือน
$(document).on('click','#save',function(e){

$.ajax({
	url:"closeAlertMedicine",
	method:"GET",
	data:$("#alertMedicine").serialize()
}).done(function(s){
	swal({  title: "สำเร็จ",   
		text: "บันทึกเรียบร้อยแล้ว!", 
		type: "success",   
		showCancelButton: false,   
		timer: 2000,
		confirmButtonText: "OK!",
		closeOnConfirm: false }, 
		
		function(){   
			location.reload(); 
			});

}).fail(function() {
	 swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
}); 
/* }*/
e.preventDefault();
});

function checkall() {
    var a = document.getElementById("checkAll");
    var x = document.getElementsByName("check");

    if(a.checked == true)
    {
          a.checked = false;
          for(i=0;i<=x.length;i++){
      		if(x[i].type=="checkbox"){
      			x[i].checked=false;
      		}
      		if(x[i].type=="hidden"){
  				x[i].disabled=false;
  	
  		}
      	}
    }
 else
    {
          a.checked = true;
          for(i=0;i<=x.length;i++){
      		if(x[i].type=="checkbox"){
      				x[i].checked=true;
      		}
      		if(x[i].type=="hidden"){
  				x[i].disabled=true;
  			}
      	}
    }
}//end check ALL



var events = document.getElementById("events");        
baloon.autocheck(); 
var ag1 = ${AlertM};
//alert(ag1); เหลือจำนวนวันที่หมดอายุยา กับวัตถุดิบยังไม่ได้ใส่
var ag2 = ${AlertRaw};
var ag3 = ${AlertSemen};
var ag4 = ${AlertTool};
var ag5 = ${AlertBucket};
function alert(){
	if(ag1!=0){
		  baloon({
		        title: "แจ้งแตือนยา",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag1+" รายการแจ้งแตือน"].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	  /* window.location.href="index"; */ 
		        }
		
		    });
		  }
	if(ag2!=0){
		 baloon({
		        title: "แจ้งแตือนวัตถุดิบอาหารสัตว์",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag2+" รายการแจ้งแตือน"
		        ].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	/* window.location.href="index"; */
		        }
		
		    });
		}
	if(ag3!=0){
		 baloon({
		        title: "แจ้งแตือนน้ำเชื้อโค",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag3+" รายการแจ้งแตือน"
		        ].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	/* window.location.href="index"; */
		        }
		
		    });
		}
	if(ag4!=0){
		  baloon({
		        title: "แจ้งแตือนวัสดุ/อุปกรณ์",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag4+" รายการแจ้งแตือน"].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	 /* window.location.href="alert_stock";  */
		        }
		
		    });
		  }
	if(ag5!=0){
		  baloon({
		        title: "แจ้งแตือนถังเก็บน้ำเชื้อโค",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag5+" รายการแจ้งแตือน"].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	 /* window.location.href="alert_stock";  */
		        }
		
		    });
		  } 
	
 
		
 }/*end function*/
 </script>
 
</html>