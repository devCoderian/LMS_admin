<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>출석관리</title>

<jsp:include page="/WEB-INF/view/common/common_include.jsp"></jsp:include>

<!-- 차트 링크 -->
<script src="https://cdn3.devexpress.com/jslib/20.2.3/js/dx.all.js"></script>
<script type="text/javascript">

$(document).ready(function() {
//document.getElementById('regDate').valueAsDate = new Date().toString();   
   $('#atd').hide();
   });
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
       
      function popupclose() {      
         gfCloseModal();
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
                     <p class="lecture_list" align="right">
                     </p>
                     <div class="divComGrpCodList">
                     <p class="conTitle">              
                      <span>출석 관리</span>
                </p>
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
                                <c:forEach var="list" items="${lecture_List}">
                             <tr>
                              <td><a href="javascript:atdInfo(${list.lec_id});" ><strong>${list.lec_name}</strong></a></td>
                               <td>${list.tutor_name}</td>
                             <td>${list.c_st}</td>
                               <td>${list.c_end}</td>
                             <td>${list.day_result}%</td>
                             <td><a href="javascript:searchAll(${list.lec_id});"><strong>상세조회</strong>
                             </a></td>
                             </tr>
                          </c:forEach>
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
                                 <strong id="regDate"></strong>&nbsp;
                                    출석 현황
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