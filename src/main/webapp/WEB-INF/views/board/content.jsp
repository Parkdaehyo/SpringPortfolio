<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<jsp:include page="../include/header.jsp" />

<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>
<div class="container">

<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-header text-white" style="background-color: #ff52a0;">${article.boardNo}번 게시물 내용</div>
      <div class="card-body">

       
        
          <div class="form-group">
            <label>작성자</label>
            <input type="text" class="form-control" name='writer' value="${article.writer}" readonly>
          </div>
          
          <div class="form-group">
            <label>제목</label>
            <input type="text" class="form-control" name='title' value="${article.title}" readonly>
          </div>

          <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" rows="5" name='content' readonly>${article.content}</textarea>
          </div>

         
        <form id="formObj" role="form" action="<c:url value='/board/delete'/>" method="post">  
          
          <input type="hidden" name="boardNo" value="${article.boardNo}">
          <input type="hidden" name="page" value="${p.page}">
          <input type="hidden" name="countPerPage" value="${p.countPerPage}">
          
          																	<!--  onclick: get요청 -->
          <input type="button" value="목록" class="btn" id="list-btn"
		style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">&nbsp;&nbsp;
          
          
          <c:if test="${login.name == article.writer}">
          <input id="modBtn" type="button" value="수정" class="btn btn-warning" onclick="" style="color:white;">&nbsp;&nbsp;
          
          <input type="submit" value="삭제" class="btn btn-danger" onclick="return confirm('정말로 삭제하시겠습니까?')">&nbsp;&nbsp; <!-- submit은 post요청 -->
		</c:if>       
        </form>
        
        

      </div>
    </div>
  </div>
</div>
</div>

<jsp:include page="../detail.jsp" /> 




<script>

//목록버튼 클릭 이벤트 처리
$("#list-btn").click(function() {
	console.log("목록 버튼이 클릭됨!");
	location.href='/board/list?page=${p.page}'
			+ '&countPerPage=${p.countPerPage}'
			+ '&keyword=${p.keyword}'
			+ '&condition=${p.condition}';
			
	
});
//수정 완료 알림창 처리
const msg = "${msg}";
if(msg === "modSuccess") {
	
	alert("게시물 수정완료!");
}



//제이쿼리의 시작
$(function() {
	
	//변수는 let, 상수는 const로 선언(ES2015 문법) var대신에 이걸 쓰라고 권장한다?
	const formElement = $("#formObj"); //객체로 받아오겠다. //상수란 이 값을 변경하지 않겠다?
	
	
	
	
	//수정 클릭 이벤트 처리
	//var modifyBtn = document.getElementById("modBtn"); //vanila js
	var modifyBtn = $("#modBtn"); //jQuery에서 돔객체를 지목 하는 방법
	
	modifyBtn.click(function() { //클릭 했을때 생성되는 이벤트 처리
		console.log("수정 버튼이 클릭됨!");
		formElement.attr("action" , "/board/modify");//attr(속성 , 변경값 ) 태그의 내부 속성을 변경
		formElement.attr("method", "get"); 
		formElement.submit();
	});
	
}); //제이 쿼리의 끝

</script>



