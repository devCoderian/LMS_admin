<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>출석관리</title>
<style type="text/css">
	.cursorArea{
		cursor: pointer;
	}
	input[type="number"]::-webkit-outer-spin-button,
	input[type="number"]::-webkit-inner-spin-button {
    	-webkit-appearance: none;
   	 	margin: 0;
	}
</style>
<jsp:include page="/WEB-INF/view/common/common_include.jsp"></jsp:include>

<!-- 차트 링크 -->
<script src="https://cdn3.devexpress.com/jslib/20.2.3/js/dx.all.js"></script>
<script type="text/javascript">

	var pageSize = 5;
	
	var vm;
	
	var date = new Date();
    var year = date.getFullYear(); 
    var month = new String(date.getMonth()+1); 
    var day = new String(date.getDate()); 
    if(month.length == 1){ 
        month = "0" + month; 
      } 	
    if(day.length == 1){ 
        day = "0" + day; 
      } 
	var result = year+"년 "+month+"월  "+day+"일";
	
	
	

	$(document).ready(function(){
		$('#atd').hide();
		$('#lecture_list').hide();
		listTut();
		init();
		
	})


   
   
   
	function init() {
		
		vm = new Vue({
		
			el : '#tutor_list',
			components : {
				'bootstrap-table' : BootstrapTable
			},
			data : {
				items : [],
				
			},
			methods : {
				lec_list:function(loginID){
				lecInfo(loginID);
				}
				
			}
			
		});
		
	 	lvm = new Vue ({
		
			
			el : '#lecture_list',
			components : {
				'bootstrap-table' : BootstrapTable
			},
			data : {
				items : [],
				
			},
			methods : {
				fatdInfo:function(lec_id){
				atdInfo(lec_id);
				
				},
			
				fsearchAll:function(lec_id){
					
				searchAll(lec_id);
				}
			
			
			}
			
		}) 
		
	}
	
	
	function listTut(currentPage){
		
		
		currentPage = currentPage || 1;
		
		
				
		var param = {
				
				currentPage : currentPage,
				 pageSize   : pageSize
		}
	
		var resultCallback = function(data) {
			
			listTutResult(data);
		};
		
		
		
		callAjax("/adm/admlistTut.do", "post", "json", true, param, resultCallback);
	}
	
	
	function listTutResult(data) {
		
		
		
		vm.items= [];
		vm.items = data.list_Tutor;
		
	}
	
	
	
	function lecInfo(loginID,currentPage){
		
		currentPage = currentPage || 1;
		
		 $('#lecture_list').show();
		 
		 
		 param = {
				 loginID : loginID,
				 currentPage : currentPage,
				 pageSize   : pageSize
				 
		 }
		 
		 var resultCallback1 = function(data) {
				
				lecInfoResult(data,currentPage);
			};
	 
		 callAjax("/adm/lec_List.do", "post", "json", true, param, resultCallback1);
	}
	
	function lecInfoResult(data,currentPage){
		
		lvm.items= [];
		lvm.items = data.lecture_List;
		
	}
	
	
	
	
   function atdInfo(id){
	      $('#atd').show();
	      $("#regDate").empty().append(result); 
	      
	      
	      $.ajax({
	         method : 'post'
	         ,url : "atdList"
	         ,data : {'lec_id':id}
	         ,success : function(resp){
	            if(resp == ""){alert("수강중인 학생이 없음");$('#atd').hide();}
	            var d = "";
	            $.each(resp,function(index,item){
	               d+= "<tr>"+"<td>"+"<input type='radio' id='check_E' value='"+id+','+item.std_id+",1' name='"+item.std_id+"'checked/>"+"</td>";
	               d+= "<td>"+item.std_id+"</td>";
	               d+= "<td>"+item.name+"</td>";
	               d+= "<td>"+item.tel+"</td>";
	               d+= "<td>"+"<input type='radio' id='check_E' value='"+id+','+item.std_id+",2' name='"+item.std_id+"'>"+"</td>";
	               d+= "<td>"+"<input type='radio' id='check_E' value='"+id+','+item.std_id+",3' name='"+item.std_id+"'>"+"</td>";
	               d+= "<td>"+"<input type='radio' id='check_E' value='"+id+','+item.std_id+",4' name='"+item.std_id+"'>"+"</td>";
	               d+= "<td>"+item.res+"%"+"</td>"+"</tr>";
	            })
	            $("#atd_List").html(d);
	            
	            // var chk =   $("dbserver").val()
	            
	         }
	         
	      })
	   }
		   
	   function sendAtd(){
		      var todayDate = document.getElementById("regDate").value;
		      var Arr = [];
		      $('input[id="check_E"]:checked').each(function(i){//체크된 리스트 저장
		              Arr.push($(this).val());
		           });
		      
		          $.ajax({
		           url : "atdReg",
		           type : "get",
		           data : {'Arr[]':Arr},
		           success : function(resp) {
		              alert("출석이 완료 되었습니다.");
		              history.go(0);
		           },
		           error : function() {
		              alert("전송 에러");
		           }
		        });    
		         }
	 
	   function searchAll(lec_id){
		      var param = {
		            lec_id : lec_id
		          }      
		          var resultCallback = function(data) {
		            $('#layer1').empty().append(data);
		            gfModalPop("#layer1");
		          };
		          callAjax("atdMng_Detail", "post", "text", true, param, resultCallback);      
		      }
	   
	   
	   
	

</script>
<style type="text/css">


/* .dttitle{
    width: 100% !important;
    line-height: 40px;
    padding: 0px 20px;
    background-color: #f3f3f3 !important;
    color:black !important;
} */

</style>
</head>
<body>

      <div id="mask"></div>
      <div id="wrap_area">
         <jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>

         <div id="container">
            <ul>
               <li class="lnb"><jsp:include
                     page="/WEB-INF/view/common/lnbMenu.jsp"></jsp:include></li>
               <li class="contents">
                  <h3 class="hidden">contents 영역</h3>
                  <div class="content">
                     <p class="Location">
                        <a href="" class="btn_set home">메인으로</a> 
                        <a href="" class="btn_nav">학습 관리</a> 
                        <span class="btn_nav bold">출석관리</span>
                        <a href="" class="btn_set refresh">새로고침</a>
                     </p>
                     
                     <div class = "tutor_list" id="tutor_list">
                      <p class="conTitle">              
                      <span>출석 관리</span>
               		 </p>
                     	<table class="col">
                     	<thead>
                     		<tr>
                     			<th scope="col" colspan="5">강사 목록</th>
                     		</tr>
                     	</thead>
                     	<caption>caption</caption>
                           <colgroup>
                              <col width="15%">
                              <col width="30%">
                              <col width="30%">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th scope="col">강사명</th>
                                 <th scope="col">강사 연락처</th>
                                 <th scope="col">이메일</th>
                              </tr>
                           </thead>
                            <tbody id="list_Tutor">
                            <template v-for="(row,index) in items" v-if="items.length">
                             <tr>
                               <td class="cursorArea"><a @click="lec_list(row.loginID)"><strong>{{  row.name  }}</strong></a></td>
                               <td>{{  row.tel  }}</td>
                               <td>{{  row.mail  }}</td>
                             </tr>
                             </template>
                           </tbody>
                           </table>
                           <br><br><br>
                     </div>
                     <p class="lecture_list" align="right">
                     </p>
                     <div class="lecture_list" id="lecture_list">
                    
                        <table class="col">
                           <thead>
                              <tr>
                                 <th scope="col" colspan="6">강의 목록</th>
                              </tr>
                           </thead>
                           <caption>caption</caption>
                           <colgroup>
                              <col width="10%">
                              <col width="10%">
                              <col width="10%">
                              <col width="10%">
                              <col width="10%">
                              <col width="10%">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th scope="col">과목</th>
                                 <th scope="col">강사명</th>
                                 <th scope="col">강의 시작일</th>
                                 <th scope="col">강의 종료일</th>
                                 <th scope="col">강의 진행률</th>
                                 <th scope="col">상세조회</th>
                              </tr>
                           </thead>
                           <tbody id="lec_List">
                            <template v-for="(row,index) in items" v-if="items.length">
                             <tr>
                              <td><a @click="fatdInfo(row.lec_id)"><strong>{{row.lec_name}}</strong></a></td>
                               <td>{{row.tutor_name}}</td>
                             <td>{{row.c_st}}</td>
                               <td>{{row.c_end}}</td>
                             <td>{{row.day_result}}</td>
                             <td><a @click="fsearchAll(row.lec_id)"><strong>상세조회</strong></td>
                             </tr>
                             </template>
                           </tbody>
                        </table>
                     </div>
                     <div class="" id="atdList"><!-- 날짜별 출석 -->
                        
                     </div>  
                     <!-- 설문 조사 10번 -->
                     <br><br><br>
                     <form id="myForm">
                     <div class="" id="atd">
                        <table class="col">
                           <thead>
                              <tr>
                                 <th scope="col" colspan="8">
                                 <strong id="regDate"></strong>&nbsp; 출석 현황
                                 <a href="javascript:sendAtd();" style="float:right;" class="btnType blue" id="sendAtd" name="btn"><span id="sendAtd">출석완료</span></a>
                                 </th>
                              </tr>
                           </thead>
                           <caption>caption</caption>
                           <br><br><br><br>
                           <colgroup>
                              <col width="5%">
                              <col width="10%">
                              <col width="10%">
                              <col width="10%">
                              <col width="5%">
                              <col width="5%">
                              <col width="5%">
                              <col width="10%">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th scope="col">출석</th>
                                 <th scope="col">학생ID</th>
                                 <th scope="col">학생 이름</th>
                                 <th scope="col">전화번호</th>
                                 <th scope="col">지각</th>
                                 <th scope="col">조퇴</th>
                                 <th scope="col">결석</th>
                                 <th scope="col">출석현황</th>
                              </tr>
                           </thead>
                           <tbody id="atd_List">
                           </tbody>
                           </table>
                     </div>  
                     </form>                      
                  </div> <!--// content -->
                  <h3 class="hidden">풋터 영역</h3> 
                  <jsp:include page="/WEB-INF/view/common/footer.jsp"></jsp:include>
               </li>
            </ul> 
         </div>
      </div>
      <form>
         <div id="layer1" class="layerPop layerType2" style="width: 800px;"></div>
     </form>
  
</body>
</html>